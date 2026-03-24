package com.maple.auto.ipc.protocol

import java.io.EOFException
import java.io.InputStream
import java.io.OutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Serializes and deserializes IpcMessage using a length-prefixed wire format.
 * Wire format: [4-byte big-endian length][serialized payload bytes]
 *
 * This matches Huoji's dg.java wire protocol.
 */
object MessageSerializer {

    private const val LENGTH_PREFIX_SIZE = 4
    private const val MAX_MESSAGE_SIZE = 10 * 1024 * 1024 // 10 MB safety limit

    /**
     * Serialize an IpcMessage to a byte array (without length prefix).
     */
    fun serialize(message: IpcMessage): ByteArray {
        val intArgsBytes = serializeIntList(message.intArgs)
        val strArgsBytes = serializeStringList(message.strArgs)
        val fileData = message.fileData ?: ByteArray(0)

        // Layout:
        // [4: cmd] [4: intArgs length] [intArgs data]
        // [4: strArgs count] [strArgs data]
        // [4: fileData length] [fileData]
        // [8: timestamp] [4: sequence]
        val totalSize = 4 + 4 + intArgsBytes.size +
                4 + strArgsBytes.size +
                4 + fileData.size +
                8 + 4

        val buffer = ByteBuffer.allocate(totalSize).order(ByteOrder.BIG_ENDIAN)
        buffer.putInt(message.cmd)

        buffer.putInt(message.intArgs.size)
        buffer.put(intArgsBytes)

        buffer.putInt(message.strArgs.size)
        buffer.put(strArgsBytes)

        buffer.putInt(fileData.size)
        if (fileData.isNotEmpty()) {
            buffer.put(fileData)
        }

        buffer.putLong(message.timestamp)
        buffer.putInt(message.sequence)

        return buffer.array()
    }

    /**
     * Deserialize an IpcMessage from raw payload bytes (without length prefix).
     */
    fun deserialize(data: ByteArray): IpcMessage {
        val buffer = ByteBuffer.wrap(data).order(ByteOrder.BIG_ENDIAN)

        val cmd = buffer.getInt()

        val intArgsCount = buffer.getInt()
        val intArgs = (0 until intArgsCount).map { buffer.getInt() }

        val strArgsCount = buffer.getInt()
        val strArgs = (0 until strArgsCount).map {
            val strLen = buffer.getInt()
            val strBytes = ByteArray(strLen)
            buffer.get(strBytes)
            String(strBytes, Charsets.UTF_8)
        }

        val fileDataLen = buffer.getInt()
        val fileData = if (fileDataLen > 0) {
            ByteArray(fileDataLen).also { buffer.get(it) }
        } else {
            null
        }

        val timestamp = buffer.getLong()
        val sequence = buffer.getInt()

        return IpcMessage(
            cmd = cmd,
            intArgs = intArgs,
            strArgs = strArgs,
            fileData = fileData,
            timestamp = timestamp,
            sequence = sequence
        )
    }

    /**
     * Write a length-prefixed message to an OutputStream. Thread-safe when called
     * with external synchronization on the stream.
     */
    fun writeToStream(outputStream: OutputStream, message: IpcMessage) {
        val payload = serialize(message)
        val lengthPrefix = ByteBuffer.allocate(LENGTH_PREFIX_SIZE)
            .order(ByteOrder.BIG_ENDIAN)
            .putInt(payload.size)
            .array()

        outputStream.write(lengthPrefix)
        outputStream.write(payload)
        outputStream.flush()
    }

    /**
     * Read a length-prefixed message from an InputStream.
     * Returns null on EOF (stream closed cleanly).
     * Throws EOFException if stream ends mid-message.
     */
    fun readFromStream(inputStream: InputStream): IpcMessage? {
        val lengthBytes = ByteArray(LENGTH_PREFIX_SIZE)
        val headerRead = readFully(inputStream, lengthBytes)
        if (headerRead == 0) {
            return null // Clean EOF before any data
        }
        if (headerRead < LENGTH_PREFIX_SIZE) {
            throw EOFException("Stream ended while reading message length header")
        }

        val length = ByteBuffer.wrap(lengthBytes).order(ByteOrder.BIG_ENDIAN).getInt()

        if (length < 0 || length > MAX_MESSAGE_SIZE) {
            throw IllegalStateException("Invalid message length: $length")
        }

        val payload = ByteArray(length)
        val payloadRead = readFully(inputStream, payload)
        if (payloadRead < length) {
            throw EOFException("Stream ended while reading message payload: expected $length, got $payloadRead")
        }

        return deserialize(payload)
    }

    private fun serializeIntList(list: List<Int>): ByteArray {
        if (list.isEmpty()) return ByteArray(0)
        val buffer = ByteBuffer.allocate(list.size * 4).order(ByteOrder.BIG_ENDIAN)
        list.forEach { buffer.putInt(it) }
        return buffer.array()
    }

    private fun serializeStringList(list: List<String>): ByteArray {
        if (list.isEmpty()) return ByteArray(0)
        val parts = list.map { it.toByteArray(Charsets.UTF_8) }
        val totalSize = parts.sumOf { 4 + it.size }
        val buffer = ByteBuffer.allocate(totalSize).order(ByteOrder.BIG_ENDIAN)
        parts.forEach { bytes ->
            buffer.putInt(bytes.size)
            buffer.put(bytes)
        }
        return buffer.array()
    }

    /**
     * Read exactly [buffer.size] bytes from the stream.
     * Returns the number of bytes actually read. Returns 0 on immediate EOF.
     */
    private fun readFully(inputStream: InputStream, buffer: ByteArray): Int {
        var offset = 0
        while (offset < buffer.size) {
            val bytesRead = inputStream.read(buffer, offset, buffer.size - offset)
            if (bytesRead == -1) {
                return offset
            }
            offset += bytesRead
        }
        return offset
    }
}

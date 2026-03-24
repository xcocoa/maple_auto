package com.maple.auto.ipc.socket

import android.net.LocalSocket
import android.util.Log
import com.maple.auto.ipc.protocol.IpcMessage
import com.maple.auto.ipc.protocol.MessageSerializer
import java.io.EOFException
import java.io.IOException
import java.io.InputStream
import java.io.OutputStream
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Wraps a single LocalSocket connection, providing message-level read/write operations.
 * Used by both server (per accepted connection) and client.
 *
 * - Read loop runs on a dedicated thread
 * - Write is synchronized for thread safety
 * - Provides callbacks for message received and disconnect events
 */
class SocketConnection(
    private val socket: LocalSocket,
    private val callback: Callback
) {
    interface Callback {
        fun onMessageReceived(connection: SocketConnection, message: IpcMessage)
        fun onDisconnected(connection: SocketConnection)
    }

    private val closed = AtomicBoolean(false)
    private val writeLock = Any()

    private var inputStream: InputStream? = null
    private var outputStream: OutputStream? = null
    private var readThread: Thread? = null

    val isConnected: Boolean
        get() = !closed.get()

    /**
     * Start the read loop on a dedicated thread. Must be called after construction.
     */
    fun start(threadName: String = "IPC-Read-${socket.hashCode()}") {
        try {
            inputStream = socket.inputStream
            outputStream = socket.outputStream
        } catch (e: IOException) {
            Log.e(TAG, "Failed to get socket streams", e)
            close()
            return
        }

        readThread = Thread({
            readLoop()
        }, threadName).apply {
            isDaemon = true
            start()
        }
    }

    /**
     * Send a message over this connection. Thread-safe.
     */
    fun send(message: IpcMessage) {
        if (closed.get()) {
            Log.w(TAG, "Attempted to send on closed connection")
            return
        }
        synchronized(writeLock) {
            try {
                val os = outputStream ?: return
                MessageSerializer.writeToStream(os, message)
            } catch (e: IOException) {
                Log.e(TAG, "Error writing message", e)
                close()
            }
        }
    }

    /**
     * Close this connection and release resources.
     */
    fun close() {
        if (!closed.compareAndSet(false, true)) {
            return // Already closed
        }
        Log.d(TAG, "Closing socket connection")
        try {
            socket.shutdownInput()
        } catch (_: Exception) {}
        try {
            socket.shutdownOutput()
        } catch (_: Exception) {}
        try {
            socket.close()
        } catch (_: Exception) {}

        readThread?.interrupt()
        readThread = null
        inputStream = null
        outputStream = null

        callback.onDisconnected(this)
    }

    private fun readLoop() {
        val input = inputStream ?: return
        try {
            while (!closed.get() && !Thread.currentThread().isInterrupted) {
                val message = MessageSerializer.readFromStream(input)
                if (message == null) {
                    Log.d(TAG, "Read EOF, closing connection")
                    break
                }
                callback.onMessageReceived(this, message)
            }
        } catch (e: EOFException) {
            Log.d(TAG, "Connection ended (EOF)")
        } catch (e: IOException) {
            if (!closed.get()) {
                Log.e(TAG, "Read error", e)
            }
        } catch (e: Exception) {
            if (!closed.get()) {
                Log.e(TAG, "Unexpected error in read loop", e)
            }
        } finally {
            close()
        }
    }

    companion object {
        private const val TAG = "SocketConnection"
    }
}

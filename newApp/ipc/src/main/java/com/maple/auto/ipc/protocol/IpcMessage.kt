package com.maple.auto.ipc.protocol

import java.util.concurrent.atomic.AtomicInteger

data class IpcMessage(
    val cmd: Int,
    val intArgs: List<Int> = emptyList(),
    val strArgs: List<String> = emptyList(),
    val fileData: ByteArray? = null,
    val timestamp: Long = System.currentTimeMillis(),
    val sequence: Int = sequenceCounter.getAndIncrement()
) {
    companion object {
        private val sequenceCounter = AtomicInteger(0)

        fun of(cmd: Int, vararg intArgs: Int): IpcMessage =
            IpcMessage(cmd = cmd, intArgs = intArgs.toList())

        fun of(cmd: Int, vararg strArgs: String): IpcMessage =
            IpcMessage(cmd = cmd, strArgs = strArgs.toList())

        fun withFileData(cmd: Int, data: ByteArray): IpcMessage =
            IpcMessage(cmd = cmd, fileData = data)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is IpcMessage) return false
        return cmd == other.cmd &&
                intArgs == other.intArgs &&
                strArgs == other.strArgs &&
                fileData.contentEquals(other.fileData) &&
                timestamp == other.timestamp &&
                sequence == other.sequence
    }

    override fun hashCode(): Int {
        var result = cmd
        result = 31 * result + intArgs.hashCode()
        result = 31 * result + strArgs.hashCode()
        result = 31 * result + (fileData?.contentHashCode() ?: 0)
        result = 31 * result + timestamp.hashCode()
        result = 31 * result + sequence
        return result
    }

    override fun toString(): String {
        return "IpcMessage(cmd=${IpcCommand.description(cmd)}, " +
                "intArgs=$intArgs, strArgs=$strArgs, " +
                "fileData=${fileData?.size ?: 0} bytes, " +
                "timestamp=$timestamp, seq=$sequence)"
    }

    private fun ByteArray?.contentEquals(other: ByteArray?): Boolean {
        if (this === other) return true
        if (this == null || other == null) return false
        return this.contentEquals(other)
    }
}

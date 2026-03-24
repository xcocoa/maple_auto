package com.maple.auto.ipc.queue

import com.maple.auto.ipc.protocol.IpcMessage
import java.util.concurrent.ArrayBlockingQueue
import java.util.concurrent.TimeUnit

/**
 * Thread-safe message queue backed by ArrayBlockingQueue.
 * Matches Huoji's bounded queue design with a capacity of 1024.
 */
class MessageQueue(capacity: Int = 1024) {

    private val queue = ArrayBlockingQueue<IpcMessage>(capacity)

    /**
     * Non-blocking send. Drops the message if queue is full and logs a warning.
     * Returns true if the message was enqueued, false if dropped.
     */
    fun send(msg: IpcMessage): Boolean {
        val offered = queue.offer(msg)
        if (!offered) {
            android.util.Log.w(TAG, "Message queue full (size=$size), dropping message: cmd=${msg.cmd}")
        }
        return offered
    }

    /**
     * Blocking send. Waits until space is available.
     * Throws InterruptedException if the thread is interrupted while waiting.
     */
    @Throws(InterruptedException::class)
    fun sendBlocking(msg: IpcMessage) {
        queue.put(msg)
    }

    /**
     * Blocking receive. Waits until a message is available.
     * Throws InterruptedException if the thread is interrupted while waiting.
     */
    @Throws(InterruptedException::class)
    fun receive(): IpcMessage {
        return queue.take()
    }

    /**
     * Receive with timeout. Returns null if no message is available within the timeout.
     */
    fun tryReceive(timeoutMs: Long): IpcMessage? {
        return queue.poll(timeoutMs, TimeUnit.MILLISECONDS)
    }

    /**
     * Clear all pending messages from the queue.
     */
    fun clear() {
        queue.clear()
    }

    /**
     * Current number of messages in the queue.
     */
    val size: Int
        get() = queue.size

    /**
     * Whether the queue is empty.
     */
    val isEmpty: Boolean
        get() = queue.isEmpty()

    companion object {
        private const val TAG = "MessageQueue"
    }
}

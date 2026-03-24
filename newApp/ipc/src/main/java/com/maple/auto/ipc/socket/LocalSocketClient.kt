package com.maple.auto.ipc.socket

import android.net.LocalSocket
import android.net.LocalSocketAddress
import android.util.Log
import com.maple.auto.ipc.protocol.IpcMessage
import com.maple.auto.ipc.protocol.MessageSerializer
import java.io.IOException
import java.io.OutputStream
import java.util.concurrent.CopyOnWriteArrayList
import java.util.concurrent.LinkedBlockingQueue
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.math.min

/**
 * LocalSocket-based IPC client that runs in the main app process.
 *
 * Features:
 * - Auto-reconnect with exponential backoff (1s, 2s, 4s, ..., max 30s)
 * - Thread-safe send queue backed by LinkedBlockingQueue
 * - Receive loop dispatches incoming messages to a registered callback
 * - Connection state listener interface
 */
class LocalSocketClient(
    private val socketName: String = LocalSocketServer.SOCKET_NAME,
    private val messageCallback: MessageCallback
) {
    fun interface MessageCallback {
        fun onMessageReceived(message: IpcMessage)
    }

    interface ConnectionStateListener {
        fun onConnected()
        fun onDisconnected()
        fun onReconnecting(attempt: Int, delayMs: Long)
    }

    private val running = AtomicBoolean(false)
    private val connected = AtomicBoolean(false)
    private val sendQueue = LinkedBlockingQueue<IpcMessage>()
    private val stateListeners = CopyOnWriteArrayList<ConnectionStateListener>()

    private var connectThread: Thread? = null
    private var readThread: Thread? = null
    private var writeThread: Thread? = null
    private var socket: LocalSocket? = null
    private var outputStream: OutputStream? = null
    private val writeLock = Any()

    val isConnected: Boolean
        get() = connected.get()

    val isRunning: Boolean
        get() = running.get()

    val pendingMessages: Int
        get() = sendQueue.size

    fun addConnectionStateListener(listener: ConnectionStateListener) {
        stateListeners.add(listener)
    }

    fun removeConnectionStateListener(listener: ConnectionStateListener) {
        stateListeners.remove(listener)
    }

    /**
     * Start the client. Begins connection attempt in background.
     */
    fun start() {
        if (!running.compareAndSet(false, true)) {
            Log.w(TAG, "Client already running")
            return
        }
        Log.i(TAG, "Starting IPC client")
        connectThread = Thread({
            connectLoop()
        }, "IPC-Client-Connect").apply {
            isDaemon = true
            start()
        }
    }

    /**
     * Enqueue a message for sending. Non-blocking.
     * Messages are queued and sent when connected.
     */
    fun send(message: IpcMessage) {
        if (!running.get()) {
            Log.w(TAG, "Client not running, cannot send message")
            return
        }
        sendQueue.offer(message)
    }

    /**
     * Shut down the client, close connections, and release resources.
     */
    fun close() {
        if (!running.compareAndSet(true, false)) {
            return
        }
        Log.i(TAG, "Shutting down IPC client")
        sendQueue.clear()
        disconnectSocket()
        connectThread?.interrupt()
        connectThread = null
        Log.i(TAG, "IPC client stopped")
    }

    private fun connectLoop() {
        var backoffMs = INITIAL_BACKOFF_MS
        var attempt = 0

        while (running.get()) {
            try {
                Log.d(TAG, "Attempting connection to $socketName (attempt ${attempt + 1})")
                val newSocket = LocalSocket()
                newSocket.connect(LocalSocketAddress(socketName, LocalSocketAddress.Namespace.ABSTRACT))

                // Connection successful
                socket = newSocket
                outputStream = newSocket.outputStream
                connected.set(true)
                backoffMs = INITIAL_BACKOFF_MS
                attempt = 0

                Log.i(TAG, "Connected to IPC server")
                notifyConnected()

                // Start read and write loops
                startReadLoop(newSocket)
                startWriteLoop()

                // Block until disconnected - wait for read thread to end
                readThread?.join()

                // If we get here, we've disconnected
                disconnectSocket()
                notifyDisconnected()

            } catch (e: IOException) {
                attempt++
                Log.d(TAG, "Connection failed: ${e.message}")
                disconnectSocket()

                if (!running.get()) break

                notifyReconnecting(attempt, backoffMs)
                try {
                    Thread.sleep(backoffMs)
                } catch (_: InterruptedException) {
                    break
                }
                backoffMs = min(backoffMs * 2, MAX_BACKOFF_MS)
            } catch (e: InterruptedException) {
                break
            }
        }
        Log.d(TAG, "Connect loop ended")
    }

    private fun startReadLoop(sock: LocalSocket) {
        readThread = Thread({
            try {
                val inputStream = sock.inputStream
                while (running.get() && connected.get() && !Thread.currentThread().isInterrupted) {
                    val message = MessageSerializer.readFromStream(inputStream)
                    if (message == null) {
                        Log.d(TAG, "Read EOF from server")
                        break
                    }
                    messageCallback.onMessageReceived(message)
                }
            } catch (e: IOException) {
                if (running.get() && connected.get()) {
                    Log.e(TAG, "Read error", e)
                }
            } catch (e: Exception) {
                if (running.get()) {
                    Log.e(TAG, "Unexpected error in read loop", e)
                }
            }
        }, "IPC-Client-Read").apply {
            isDaemon = true
            start()
        }
    }

    private fun startWriteLoop() {
        writeThread = Thread({
            try {
                while (running.get() && connected.get() && !Thread.currentThread().isInterrupted) {
                    val message = sendQueue.take()
                    if (!connected.get()) {
                        sendQueue.offer(message)
                        return@Thread
                    }
                    var shouldBreak = false
                    synchronized(writeLock) {
                        try {
                            val os = outputStream
                            if (os == null) {
                                shouldBreak = true
                                return@synchronized
                            }
                            MessageSerializer.writeToStream(os, message)
                        } catch (e: IOException) {
                            Log.e(TAG, "Write error", e)
                            sendQueue.offer(message)
                            shouldBreak = true
                        }
                    }
                    if (shouldBreak) break
                }
            } catch (_: InterruptedException) {
                // Expected on shutdown
            }
        }, "IPC-Client-Write").apply {
            isDaemon = true
            start()
        }
    }

    private fun disconnectSocket() {
        connected.set(false)
        writeThread?.interrupt()
        writeThread = null
        readThread?.interrupt()
        readThread = null
        try {
            socket?.shutdownInput()
        } catch (_: Exception) {}
        try {
            socket?.shutdownOutput()
        } catch (_: Exception) {}
        try {
            socket?.close()
        } catch (_: Exception) {}
        socket = null
        outputStream = null
    }

    private fun notifyConnected() {
        for (listener in stateListeners) {
            try {
                listener.onConnected()
            } catch (e: Exception) {
                Log.e(TAG, "Error in connection listener", e)
            }
        }
    }

    private fun notifyDisconnected() {
        for (listener in stateListeners) {
            try {
                listener.onDisconnected()
            } catch (e: Exception) {
                Log.e(TAG, "Error in disconnection listener", e)
            }
        }
    }

    private fun notifyReconnecting(attempt: Int, delayMs: Long) {
        for (listener in stateListeners) {
            try {
                listener.onReconnecting(attempt, delayMs)
            } catch (e: Exception) {
                Log.e(TAG, "Error in reconnecting listener", e)
            }
        }
    }

    companion object {
        private const val TAG = "LocalSocketClient"
        private const val INITIAL_BACKOFF_MS = 1000L
        private const val MAX_BACKOFF_MS = 30_000L
    }
}

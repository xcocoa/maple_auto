package com.maple.auto.ipc.socket

import android.net.LocalServerSocket
import android.net.LocalSocket
import android.util.Log
import com.maple.auto.ipc.protocol.IpcMessage
import com.maple.auto.ipc.queue.MessageDispatcher
import java.io.IOException
import java.util.concurrent.CopyOnWriteArrayList
import java.util.concurrent.atomic.AtomicBoolean

/**
 * LocalSocket-based IPC server that runs in the engine process (:enginfloat).
 *
 * Uses Android's LocalServerSocket with abstract namespace.
 * Accepts client connections in a loop on a dedicated thread,
 * wraps each in a SocketConnection, and dispatches received messages
 * to the provided MessageDispatcher.
 */
class LocalSocketServer(
    private val socketName: String = SOCKET_NAME,
    private val dispatcher: MessageDispatcher
) {
    interface ConnectionListener {
        fun onClientConnected(connection: SocketConnection)
        fun onClientDisconnected(connection: SocketConnection)
    }

    private var serverSocket: LocalServerSocket? = null
    private var acceptThread: Thread? = null
    private val running = AtomicBoolean(false)
    private val connections = CopyOnWriteArrayList<SocketConnection>()
    private var connectionListener: ConnectionListener? = null

    val isRunning: Boolean
        get() = running.get()

    val connectionCount: Int
        get() = connections.size

    fun setConnectionListener(listener: ConnectionListener?) {
        this.connectionListener = listener
    }

    /**
     * Start the server. Creates the LocalServerSocket and begins accepting connections.
     * @throws IOException if the server socket cannot be created
     */
    @Throws(IOException::class)
    fun start() {
        if (!running.compareAndSet(false, true)) {
            Log.w(TAG, "Server already running")
            return
        }

        Log.i(TAG, "Starting IPC server on socket: $socketName")
        serverSocket = LocalServerSocket(socketName)

        acceptThread = Thread({
            acceptLoop()
        }, "IPC-Server-Accept").apply {
            isDaemon = true
            start()
        }
        Log.i(TAG, "IPC server started")
    }

    /**
     * Send a message to all connected clients.
     */
    fun broadcast(message: IpcMessage) {
        val snapshot = connections.toList()
        for (conn in snapshot) {
            if (conn.isConnected) {
                conn.send(message)
            }
        }
    }

    /**
     * Send a message to a specific connection.
     */
    fun sendTo(connection: SocketConnection, message: IpcMessage) {
        if (connection.isConnected) {
            connection.send(message)
        }
    }

    /**
     * Shut down the server, close all connections, and release resources.
     */
    fun close() {
        if (!running.compareAndSet(true, false)) {
            return
        }
        Log.i(TAG, "Shutting down IPC server")

        // Close server socket to unblock accept()
        try {
            serverSocket?.close()
        } catch (e: IOException) {
            Log.e(TAG, "Error closing server socket", e)
        }
        serverSocket = null

        // Close all client connections
        val snapshot = connections.toList()
        connections.clear()
        for (conn in snapshot) {
            conn.close()
        }

        acceptThread?.interrupt()
        acceptThread = null

        Log.i(TAG, "IPC server stopped")
    }

    private fun acceptLoop() {
        Log.d(TAG, "Accept loop started")
        while (running.get()) {
            try {
                val clientSocket: LocalSocket = serverSocket?.accept() ?: break
                Log.i(TAG, "Client connected, total: ${connections.size + 1}")
                handleNewConnection(clientSocket)
            } catch (e: IOException) {
                if (running.get()) {
                    Log.e(TAG, "Error accepting connection", e)
                } else {
                    Log.d(TAG, "Server socket closed, exiting accept loop")
                }
            }
        }
        Log.d(TAG, "Accept loop ended")
    }

    private fun handleNewConnection(clientSocket: LocalSocket) {
        val connection = SocketConnection(clientSocket, object : SocketConnection.Callback {
            override fun onMessageReceived(connection: SocketConnection, message: IpcMessage) {
                dispatcher.dispatch(message)
            }

            override fun onDisconnected(connection: SocketConnection) {
                connections.remove(connection)
                Log.i(TAG, "Client disconnected, remaining: ${connections.size}")
                connectionListener?.onClientDisconnected(connection)
            }
        })

        connections.add(connection)
        connectionListener?.onClientConnected(connection)
        connection.start("IPC-Server-Client-${connections.size}")
    }

    companion object {
        private const val TAG = "LocalSocketServer"
        const val SOCKET_NAME = "maple_auto_ipc"
    }
}

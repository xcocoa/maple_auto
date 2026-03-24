package com.maple.auto.ipc.queue

import com.maple.auto.ipc.protocol.IpcCommand
import com.maple.auto.ipc.protocol.IpcMessage
import java.util.concurrent.ConcurrentHashMap

/**
 * Routes incoming IPC messages to registered handlers based on the command field.
 * Thread-safe: handlers can be registered/unregistered from any thread.
 */
class MessageDispatcher {

    fun interface IpcMessageHandler {
        fun onMessage(message: IpcMessage)
    }

    private val handlers = ConcurrentHashMap<Int, IpcMessageHandler>()
    private var defaultHandler: IpcMessageHandler? = null

    /**
     * Register a handler for a specific command.
     * Replaces any previously registered handler for the same command.
     */
    fun registerHandler(cmd: Int, handler: IpcMessageHandler) {
        handlers[cmd] = handler
    }

    /**
     * Unregister the handler for a specific command.
     */
    fun unregisterHandler(cmd: Int) {
        handlers.remove(cmd)
    }

    /**
     * Set a default handler for commands that have no registered handler.
     */
    fun setDefaultHandler(handler: IpcMessageHandler?) {
        this.defaultHandler = handler
    }

    /**
     * Dispatch a message to the appropriate handler.
     * Returns true if a handler was found and invoked, false otherwise.
     */
    fun dispatch(message: IpcMessage): Boolean {
        val handler = handlers[message.cmd]
        if (handler != null) {
            handler.onMessage(message)
            return true
        }

        val fallback = defaultHandler
        if (fallback != null) {
            fallback.onMessage(message)
            return true
        }

        android.util.Log.w(
            TAG,
            "No handler registered for command: ${IpcCommand.description(message.cmd)} (${message.cmd})"
        )
        return false
    }

    /**
     * Remove all registered handlers.
     */
    fun clearHandlers() {
        handlers.clear()
        defaultHandler = null
    }

    /**
     * Check if a handler is registered for the given command.
     */
    fun hasHandler(cmd: Int): Boolean = handlers.containsKey(cmd)

    companion object {
        private const val TAG = "MessageDispatcher"
    }
}

package com.maple.auto.ipc.protocol

object IpcCommand {
    /** Stop script execution */
    const val SCRIPT_STOP = 0

    /** Start script execution */
    const val SCRIPT_START = 1

    /** Pause script execution */
    const val SCRIPT_PAUSE = 3

    /** Input event: click, swipe, gesture */
    const val INPUT = 20

    /** Request a screenshot */
    const val SCREENSHOT = 24

    /** Screenshot result data */
    const val SCREENSHOT_RESULT = 25

    /** File transfer request */
    const val FILE_TRANSFER = 64

    /** File transfer result */
    const val FILE_RESULT = 65

    /** Script initialization */
    const val SCRIPT_INIT = 80

    /** Script path configuration */
    const val SCRIPT_PATH = 82

    /** Host process initialization */
    const val HOST_INIT = 83

    /** Display configuration (resolution, density) */
    const val DISPLAY_CONFIG = 84

    /** Script state change notification */
    const val STATE_CHANGE = 90

    /** Log message from script */
    const val LOG_MESSAGE = 91

    /** Heartbeat ping */
    const val HEARTBEAT = 100

    /** Heartbeat acknowledgment */
    const val HEARTBEAT_ACK = 101

    /** Float window control actions */
    const val FLOAT_ACTION = 110

    /** Accessibility node query */
    const val NODE_QUERY = 120

    /** Accessibility node query result */
    const val NODE_RESULT = 121

    private val descriptions = mapOf(
        SCRIPT_STOP to "SCRIPT_STOP",
        SCRIPT_START to "SCRIPT_START",
        SCRIPT_PAUSE to "SCRIPT_PAUSE",
        INPUT to "INPUT",
        SCREENSHOT to "SCREENSHOT",
        SCREENSHOT_RESULT to "SCREENSHOT_RESULT",
        FILE_TRANSFER to "FILE_TRANSFER",
        FILE_RESULT to "FILE_RESULT",
        SCRIPT_INIT to "SCRIPT_INIT",
        SCRIPT_PATH to "SCRIPT_PATH",
        HOST_INIT to "HOST_INIT",
        DISPLAY_CONFIG to "DISPLAY_CONFIG",
        STATE_CHANGE to "STATE_CHANGE",
        LOG_MESSAGE to "LOG_MESSAGE",
        HEARTBEAT to "HEARTBEAT",
        HEARTBEAT_ACK to "HEARTBEAT_ACK",
        FLOAT_ACTION to "FLOAT_ACTION",
        NODE_QUERY to "NODE_QUERY",
        NODE_RESULT to "NODE_RESULT"
    )

    fun description(cmd: Int): String = descriptions[cmd] ?: "UNKNOWN($cmd)"

    fun isValid(cmd: Int): Boolean = cmd in descriptions
}

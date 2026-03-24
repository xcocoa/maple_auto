package com.maple.auto.engine.recording

/**
 * Converts recorded touch events into executable Python automation code.
 *
 * Groups raw events into logical actions (taps, swipes, long-presses)
 * and generates Python code using the autopilot API.
 */
object RecordingCodeGen {

    private const val MIN_DELAY_MS = 50L

    /**
     * Generates a Python script from recorded events.
     *
     * @param events The list of recorded events from [EventRecorder].
     * @return A complete Python script string using the autopilot API.
     */
    fun generatePythonCode(events: List<EventRecorder.RecordedEvent>): String {
        if (events.isEmpty()) return "# No events recorded\n"

        val sb = StringBuilder()
        sb.appendLine("from autopilot import *")
        sb.appendLine()
        sb.appendLine("# Auto-generated from recorded events")
        sb.appendLine()

        val actions = groupIntoActions(events)
        var lastTimestamp = actions.firstOrNull()?.timestamp ?: 0L

        for (action in actions) {
            // Add delay between actions
            val delay = action.timestamp - lastTimestamp
            if (delay > MIN_DELAY_MS && action !== actions.first()) {
                sb.appendLine("sleep(${delay})")
            }

            when (action) {
                is Action.Tap -> {
                    sb.appendLine("click(${action.x}, ${action.y})")
                }
                is Action.LongPress -> {
                    sb.appendLine("long_press(${action.x}, ${action.y})")
                }
                is Action.Swipe -> {
                    sb.appendLine("swipe(${action.x1}, ${action.y1}, ${action.x2}, ${action.y2}, ${action.durationMs})")
                }
            }

            lastTimestamp = action.endTimestamp
        }

        return sb.toString()
    }

    private fun groupIntoActions(events: List<EventRecorder.RecordedEvent>): List<Action> {
        val actions = mutableListOf<Action>()
        var i = 0

        while (i < events.size) {
            val event = events[i]

            when (event.type) {
                EventRecorder.EventType.TAP -> {
                    actions.add(Action.Tap(event.x, event.y, event.timestamp))
                    i++
                }
                EventRecorder.EventType.LONG_PRESS -> {
                    actions.add(Action.LongPress(event.x, event.y, event.timestamp))
                    i++
                }
                EventRecorder.EventType.SWIPE_START -> {
                    // Find the corresponding SWIPE_END
                    val startX = event.x
                    val startY = event.y
                    val startTime = event.timestamp
                    var endX = startX
                    var endY = startY
                    var endTime = startTime

                    i++
                    while (i < events.size) {
                        val next = events[i]
                        if (next.type == EventRecorder.EventType.SWIPE_END) {
                            endX = next.x
                            endY = next.y
                            endTime = next.timestamp
                            i++
                            break
                        } else if (next.type == EventRecorder.EventType.SWIPE_MOVE) {
                            endX = next.x
                            endY = next.y
                            endTime = next.timestamp
                            i++
                        } else {
                            break
                        }
                    }

                    val duration = (endTime - startTime).coerceAtLeast(100)
                    actions.add(Action.Swipe(startX, startY, endX, endY, duration, startTime, endTime))
                }
                else -> {
                    // Skip orphan SWIPE_MOVE/SWIPE_END
                    i++
                }
            }
        }

        return actions
    }

    private sealed class Action {
        abstract val timestamp: Long
        abstract val endTimestamp: Long

        data class Tap(val x: Int, val y: Int, override val timestamp: Long) : Action() {
            override val endTimestamp: Long get() = timestamp
        }

        data class LongPress(val x: Int, val y: Int, override val timestamp: Long) : Action() {
            override val endTimestamp: Long get() = timestamp + 1000
        }

        data class Swipe(
            val x1: Int,
            val y1: Int,
            val x2: Int,
            val y2: Int,
            val durationMs: Long,
            override val timestamp: Long,
            override val endTimestamp: Long
        ) : Action()
    }
}

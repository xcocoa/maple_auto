package com.maple.auto.engine.recording

import android.util.Log

/**
 * Records touch events for later playback or code generation.
 *
 * Captures TAP, SWIPE, and LONG_PRESS events with screen coordinates and timestamps.
 */
class EventRecorder {

    companion object {
        private const val TAG = "EventRecorder"
        private const val LONG_PRESS_THRESHOLD_MS = 500L
        private const val SWIPE_DISTANCE_THRESHOLD = 20 // pixels
    }

    /**
     * Type of recorded touch event.
     */
    enum class EventType {
        TAP,
        SWIPE_START,
        SWIPE_MOVE,
        SWIPE_END,
        LONG_PRESS
    }

    /**
     * A single recorded touch event.
     */
    data class RecordedEvent(
        val type: EventType,
        val x: Int,
        val y: Int,
        val timestamp: Long
    )

    private val events = mutableListOf<RecordedEvent>()

    @Volatile
    private var isRecording = false

    private var touchDownTime = 0L
    private var touchDownX = 0
    private var touchDownY = 0
    private var isSwiping = false

    /** Returns true if currently recording events. */
    val recording: Boolean get() = isRecording

    /**
     * Starts recording touch events.
     * Clears any previously recorded events.
     */
    fun startRecording() {
        events.clear()
        isRecording = true
        isSwiping = false
        Log.i(TAG, "Recording started")
    }

    /**
     * Stops recording and returns all recorded events.
     *
     * @return List of [RecordedEvent] captured during the recording session.
     */
    fun stopRecording(): List<RecordedEvent> {
        isRecording = false
        Log.i(TAG, "Recording stopped, ${events.size} events captured")
        return events.toList()
    }

    /**
     * Called when a touch down event occurs.
     */
    fun onTouchDown(x: Int, y: Int) {
        if (!isRecording) return
        touchDownTime = System.currentTimeMillis()
        touchDownX = x
        touchDownY = y
        isSwiping = false
    }

    /**
     * Called when a touch move event occurs.
     */
    fun onTouchMove(x: Int, y: Int) {
        if (!isRecording) return

        val dx = x - touchDownX
        val dy = y - touchDownY
        val distance = Math.sqrt((dx * dx + dy * dy).toDouble())

        if (distance > SWIPE_DISTANCE_THRESHOLD) {
            if (!isSwiping) {
                isSwiping = true
                events.add(RecordedEvent(EventType.SWIPE_START, touchDownX, touchDownY, touchDownTime))
            }
            events.add(RecordedEvent(EventType.SWIPE_MOVE, x, y, System.currentTimeMillis()))
        }
    }

    /**
     * Called when a touch up event occurs.
     */
    fun onTouchUp(x: Int, y: Int) {
        if (!isRecording) return
        val now = System.currentTimeMillis()

        if (isSwiping) {
            events.add(RecordedEvent(EventType.SWIPE_END, x, y, now))
        } else {
            val duration = now - touchDownTime
            if (duration >= LONG_PRESS_THRESHOLD_MS) {
                events.add(RecordedEvent(EventType.LONG_PRESS, touchDownX, touchDownY, touchDownTime))
            } else {
                events.add(RecordedEvent(EventType.TAP, touchDownX, touchDownY, touchDownTime))
            }
        }

        isSwiping = false
    }
}

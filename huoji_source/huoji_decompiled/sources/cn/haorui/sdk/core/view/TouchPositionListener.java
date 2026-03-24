package cn.haorui.sdk.core.view;

import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import cn.haorui.sdk.core.ad.IAd;
import java.sql.Timestamp;

/* JADX INFO: loaded from: classes.dex */
public class TouchPositionListener {
    private IAd ad;

    public class TouchPosition {
        private int downX;
        private int downY;
        private Timestamp touchTime;
        private int upX;
        private int upY;

        public TouchPosition() {
        }

        public int getDownX() {
            return this.downX;
        }

        public int getDownY() {
            return this.downY;
        }

        public Timestamp getTouchTime() {
            return this.touchTime;
        }

        public int getUpX() {
            return this.upX;
        }

        public int getUpY() {
            return this.upY;
        }

        public String toString() {
            return "{downX: " + this.downX + ", downY: " + this.downY + ", upX: " + this.upX + ", upY: " + this.upY + ", touchTime: " + this.touchTime + "}";
        }
    }

    public TouchPositionListener(@NonNull IAd iAd) {
        this.ad = iAd;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        TouchPosition touchPosition = this.ad.getTouchData().getTouchPosition();
        if (touchPosition == null) {
            touchPosition = new TouchPosition();
            this.ad.getTouchData().setTouchPosition(touchPosition);
        }
        if (motionEvent.getAction() != 0) {
            return false;
        }
        touchPosition.downX = (int) motionEvent.getX();
        touchPosition.downY = (int) motionEvent.getY();
        touchPosition.upX = (int) motionEvent.getX();
        touchPosition.upY = (int) motionEvent.getY();
        touchPosition.touchTime = new Timestamp(System.currentTimeMillis());
        return false;
    }
}

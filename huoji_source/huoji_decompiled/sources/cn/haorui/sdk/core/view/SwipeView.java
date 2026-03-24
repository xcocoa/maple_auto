package cn.haorui.sdk.core.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import cn.haorui.sdk.core.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class SwipeView extends RelativeLayout {
    private static final String TAG = "SwipeView";
    private int clkType;
    private int distance;
    private float downloadX;
    private float downloadY;
    private OnSwipeListener mListener;
    private Paint mPaint;
    private Path mPath;
    private float maxMoveX;
    private float maxMoveY;

    public interface OnSwipeListener {
        void onSwipe();
    }

    public SwipeView(Context context) {
        this(context, null);
    }

    public SwipeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwipeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.mPaint = new Paint();
        this.mPath = new Path();
        this.mPaint.setColor(-1);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.mPath, this.mPaint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.downloadX = motionEvent.getRawX();
            this.downloadY = motionEvent.getRawY();
            this.mPath.moveTo(motionEvent.getX(), motionEvent.getY());
        } else if (action == 1) {
            LogUtil.e(TAG, "maxMoveX=" + this.maxMoveX + ",maxMoveY=" + this.maxMoveY + ",distance=" + this.distance);
            int i = this.clkType;
            if ((i == 6 && this.maxMoveY > this.distance) || (i == 7 && this.maxMoveX > this.distance)) {
                this.mListener.onSwipe();
                this.mPath.reset();
                this.maxMoveX = 0.0f;
                this.maxMoveY = 0.0f;
                return true;
            }
        } else if (action == 2) {
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            this.mPath.lineTo(motionEvent.getX(), motionEvent.getY());
            invalidate();
            float f = rawY - this.downloadY;
            if (f < 0.0f && this.maxMoveY < Math.abs(f)) {
                this.maxMoveY = Math.abs(rawY - this.downloadY);
            }
            float f2 = this.maxMoveX;
            float f3 = rawX - this.downloadX;
            if (f2 < f3) {
                this.maxMoveX = f3;
            }
        }
        return true;
    }

    public void setMoveDistance(int i, int i2) {
        this.clkType = i;
        this.distance = (getResources().getDisplayMetrics().widthPixels * i2) / 100;
    }

    public void setOnSwipeListener(OnSwipeListener onSwipeListener) {
        this.mListener = onSwipeListener;
    }
}

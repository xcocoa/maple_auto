package cn.haorui.sdk.adsail_ad.reward;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class CircleProcessBar extends View {
    public float ARC_WIDTH;
    public float INNER_PADDING;
    public float RADIUS;
    private final int SPACE_TIME_ANGLE;
    public float TEXT_SIZE;
    private int mCurrentTime;
    private float mInnerCircleRadius;
    public Paint mInnerCriclePaint;
    public float mMeasuresTextWidth;
    private OnSkipListener mOnSkipListener;
    public Paint mOutArcPaint;
    private float mOutArcRadius;
    public Paint mTextPaint;
    private int mTotalTime;
    private RectF rectF;

    public interface OnSkipListener {
        void onSkip();
    }

    public CircleProcessBar(Context context) {
        super(context);
        this.ARC_WIDTH = 2.2f;
        this.TEXT_SIZE = 12.1f;
        this.INNER_PADDING = 10.0f;
        this.RADIUS = 15.5f;
        this.mCurrentTime = 0;
        this.mTotalTime = 5000;
        this.SPACE_TIME_ANGLE = 20190106;
        init();
    }

    public CircleProcessBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ARC_WIDTH = 2.2f;
        this.TEXT_SIZE = 12.1f;
        this.INNER_PADDING = 10.0f;
        this.RADIUS = 15.5f;
        this.mCurrentTime = 0;
        this.mTotalTime = 5000;
        this.SPACE_TIME_ANGLE = 20190106;
        init();
    }

    public CircleProcessBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ARC_WIDTH = 2.2f;
        this.TEXT_SIZE = 12.1f;
        this.INNER_PADDING = 10.0f;
        this.RADIUS = 15.5f;
        this.mCurrentTime = 0;
        this.mTotalTime = 5000;
        this.SPACE_TIME_ANGLE = 20190106;
        init();
    }

    private void init() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f = this.ARC_WIDTH;
        float f2 = displayMetrics.density;
        this.ARC_WIDTH = f * f2;
        this.TEXT_SIZE *= f2;
        this.INNER_PADDING *= f2;
        this.RADIUS *= f2;
        Paint paint = new Paint();
        this.mTextPaint = paint;
        paint.setTextSize(this.TEXT_SIZE);
        this.mTextPaint.setColor(-1);
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setShadowLayer(displayMetrics.density * 3.0f, 0.0f, 0.0f, -7829368);
        Paint paint2 = new Paint();
        this.mInnerCriclePaint = paint2;
        paint2.setColor(Color.parseColor("#b7ffffff"));
        this.mInnerCriclePaint.setAntiAlias(true);
        this.mInnerCriclePaint.setStrokeWidth(this.ARC_WIDTH);
        this.mInnerCriclePaint.setStyle(Paint.Style.STROKE);
        Paint paint3 = new Paint();
        this.mOutArcPaint = paint3;
        paint3.setColor(Color.parseColor("#42c1f0"));
        this.mOutArcPaint.setAntiAlias(true);
        this.mOutArcPaint.setStrokeWidth(this.ARC_WIDTH);
        this.mOutArcPaint.setStyle(Paint.Style.STROKE);
        this.mMeasuresTextWidth = this.mTextPaint.measureText("999");
        float f3 = this.RADIUS;
        this.mInnerCircleRadius = f3;
        this.mOutArcRadius = f3;
        float f4 = this.ARC_WIDTH / 2.0f;
        float f5 = 0.0f + f4 + 1.0f;
        float f6 = ((this.mOutArcRadius * 2.0f) - f4) - 1.0f;
        this.rectF = new RectF(f5, f5, f6, f6);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawArc(this.rectF, 0.0f, 360.0f, false, this.mInnerCriclePaint);
        canvas.save();
        canvas.rotate(-90.0f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        canvas.drawArc(this.rectF, 0.0f, ((this.mCurrentTime * 1.0f) / this.mTotalTime) * 360.0f, false, this.mOutArcPaint);
        canvas.restore();
        Paint.FontMetrics fontMetrics = this.mTextPaint.getFontMetrics();
        int measuredHeight = (int) ((getMeasuredHeight() / 2) - ((fontMetrics.top + fontMetrics.bottom) / 2.0f));
        int i = ((this.mTotalTime - this.mCurrentTime) / 1000) + 1;
        canvas.drawText("" + i, (getMeasuredWidth() / 2) - (this.mTextPaint.measureText(i + "") / 2.0f), measuredHeight, this.mTextPaint);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            size = (int) (this.mOutArcRadius * 2.0f);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = (int) (this.mOutArcRadius * 2.0f);
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            setAlpha(0.5f);
        } else if (action == 1) {
            setAlpha(1.0f);
            OnSkipListener onSkipListener = this.mOnSkipListener;
            if (onSkipListener != null) {
                onSkipListener.onSkip();
            }
        }
        return true;
    }

    public void refreshProcess(int i) {
        OnSkipListener onSkipListener;
        this.mCurrentTime = i;
        invalidate();
        if (this.mCurrentTime < this.mTotalTime || (onSkipListener = this.mOnSkipListener) == null) {
            return;
        }
        onSkipListener.onSkip();
    }

    public void setOnSkipListener(OnSkipListener onSkipListener) {
        this.mOnSkipListener = onSkipListener;
    }

    public void setmTotalTime(int i) {
        this.mTotalTime = i;
    }
}

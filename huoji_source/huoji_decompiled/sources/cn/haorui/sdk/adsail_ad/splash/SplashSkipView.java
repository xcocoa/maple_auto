package cn.haorui.sdk.adsail_ad.splash;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.hardware.SensorManager;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import cn.haorui.sdk.adsail_ad.lifecycle.LifecycleHelper;
import cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.loader.g;
import cn.haorui.sdk.core.utils.LogUtil;
import com.anythink.expressad.foundation.d.c;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class SplashSkipView extends View {
    private static final String TAG = "SplashSkipView";
    public float ARC_WIDTH;
    public float INNER_PADDING;
    public float RADIUS;
    public float TEXT_SIZE;
    private boolean attachWindow;
    private boolean isPause;
    private LifecycleHelper lifecycleHelper;
    private int mCurrentTime;
    private Handler mHandler;
    private float mInnerCircleRadius;
    public Paint mInnerCriclePaint;
    private LifecycleListener mLifeListener;
    public float mMeasuresTextWidth;
    private OnSkipListener mOnSkipListener;
    public Paint mOutArcPaint;
    private float mOutArcRadius;
    private int mShowTime;
    public Paint mTextPaint;
    private int mTotalTime;
    private AtomicInteger manualStatus;
    private RectF rectF;
    private boolean show;
    private boolean started;
    private Runnable updateTime;

    public interface OnSkipListener {
        void onSkip();

        void onTick(long j);

        void onTimeOver();
    }

    public SplashSkipView(Context context) {
        super(context);
        this.ARC_WIDTH = 2.2f;
        this.TEXT_SIZE = 12.1f;
        this.INNER_PADDING = 10.0f;
        this.RADIUS = 15.5f;
        this.mCurrentTime = 0;
        this.mTotalTime = 5000;
        this.mShowTime = 100;
        this.started = false;
        this.show = true;
        this.isPause = false;
        this.manualStatus = new AtomicInteger(0);
        this.updateTime = new Runnable() { // from class: cn.haorui.sdk.adsail_ad.splash.SplashSkipView.1
            @Override // java.lang.Runnable
            public void run() {
                SplashSkipView.this.mCurrentTime += 100;
                SplashSkipView.this.invalidate();
                if (SplashSkipView.this.mCurrentTime > SplashSkipView.this.mTotalTime) {
                    SplashSkipView.this.stop(false);
                    return;
                }
                int i = SplashSkipView.this.mTotalTime - SplashSkipView.this.mCurrentTime;
                SplashSkipView.this.mHandler.postDelayed(SplashSkipView.this.updateTime, 100L);
                if (SplashSkipView.this.mOnSkipListener != null) {
                    SplashSkipView.this.mOnSkipListener.onTick(i);
                }
                if (i >= SplashSkipView.this.mTotalTime - SplashSkipView.this.mShowTime || SplashSkipView.this.getVisibility() == 0 || !SplashSkipView.this.show) {
                    return;
                }
                SplashSkipView.this.setVisibility(0);
            }
        };
        this.mLifeListener = new LifecycleListener() { // from class: cn.haorui.sdk.adsail_ad.splash.SplashSkipView.2
            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onDestroy() {
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onPause() {
                if (SplashSkipView.this.started && AdSdk.adConfig().splashClickPause()) {
                    SplashSkipView.this.pause();
                }
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onResume() {
                Log.e(SplashSkipView.TAG, "onResume: ");
                if (SplashSkipView.this.started && AdSdk.adConfig().splashClickPause()) {
                    g.c.a.a(true);
                    SplashSkipView.this.resume();
                }
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStart() {
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStop() {
            }
        };
    }

    public SplashSkipView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ARC_WIDTH = 2.2f;
        this.TEXT_SIZE = 12.1f;
        this.INNER_PADDING = 10.0f;
        this.RADIUS = 15.5f;
        this.mCurrentTime = 0;
        this.mTotalTime = 5000;
        this.mShowTime = 100;
        this.started = false;
        this.show = true;
        this.isPause = false;
        this.manualStatus = new AtomicInteger(0);
        this.updateTime = new Runnable() { // from class: cn.haorui.sdk.adsail_ad.splash.SplashSkipView.1
            @Override // java.lang.Runnable
            public void run() {
                SplashSkipView.this.mCurrentTime += 100;
                SplashSkipView.this.invalidate();
                if (SplashSkipView.this.mCurrentTime > SplashSkipView.this.mTotalTime) {
                    SplashSkipView.this.stop(false);
                    return;
                }
                int i = SplashSkipView.this.mTotalTime - SplashSkipView.this.mCurrentTime;
                SplashSkipView.this.mHandler.postDelayed(SplashSkipView.this.updateTime, 100L);
                if (SplashSkipView.this.mOnSkipListener != null) {
                    SplashSkipView.this.mOnSkipListener.onTick(i);
                }
                if (i >= SplashSkipView.this.mTotalTime - SplashSkipView.this.mShowTime || SplashSkipView.this.getVisibility() == 0 || !SplashSkipView.this.show) {
                    return;
                }
                SplashSkipView.this.setVisibility(0);
            }
        };
        this.mLifeListener = new LifecycleListener() { // from class: cn.haorui.sdk.adsail_ad.splash.SplashSkipView.2
            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onDestroy() {
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onPause() {
                if (SplashSkipView.this.started && AdSdk.adConfig().splashClickPause()) {
                    SplashSkipView.this.pause();
                }
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onResume() {
                Log.e(SplashSkipView.TAG, "onResume: ");
                if (SplashSkipView.this.started && AdSdk.adConfig().splashClickPause()) {
                    g.c.a.a(true);
                    SplashSkipView.this.resume();
                }
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStart() {
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStop() {
            }
        };
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
        this.mMeasuresTextWidth = this.mTextPaint.measureText("跳过");
        float f3 = this.RADIUS;
        this.mInnerCircleRadius = f3;
        this.mOutArcRadius = f3;
        float f4 = this.ARC_WIDTH / 2.0f;
        float f5 = 0.0f + f4 + 1.0f;
        float f6 = ((this.mOutArcRadius * 2.0f) - f4) - 1.0f;
        this.rectF = new RectF(f5, f5, f6, f6);
        initHandler();
    }

    private void initHandler() {
        if (this.mHandler != null) {
            return;
        }
        this.mHandler = new Handler();
    }

    public int getShowTime() {
        return this.mShowTime;
    }

    public int getTotalTime() {
        return this.mTotalTime;
    }

    public void manualPause() {
        this.isPause = true;
    }

    public void manualResume() {
        OnSkipListener onSkipListener;
        this.isPause = false;
        if (this.mCurrentTime <= this.mTotalTime || (onSkipListener = this.mOnSkipListener) == null) {
            return;
        }
        onSkipListener.onTimeOver();
        this.mOnSkipListener = null;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attachWindow = true;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachWindow = false;
        g.c.a.a();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawArc(this.rectF, 0.0f, 360.0f, false, this.mInnerCriclePaint);
        canvas.save();
        canvas.rotate(-90.0f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        canvas.drawArc(this.rectF, 0.0f, this.mCurrentTime > this.mShowTime ? (((r0 - r2) * 1.0f) / (this.mTotalTime - r2)) * 360.0f : 0.0f, false, this.mOutArcPaint);
        canvas.restore();
        Paint.FontMetrics fontMetrics = this.mTextPaint.getFontMetrics();
        canvas.drawText("跳过", (getMeasuredWidth() / 2) - (this.mMeasuresTextWidth / 2.0f), (int) ((getMeasuredHeight() / 2) - ((fontMetrics.top + fontMetrics.bottom) / 2.0f)), this.mTextPaint);
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
            stop(true);
        }
        return true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!this.attachWindow || !z || !this.started || !AdSdk.adConfig().splashClickPause()) {
            if (this.attachWindow && !z && this.started && AdSdk.adConfig().splashClickPause()) {
                LogUtil.d(TAG, c.cb);
                g gVar = g.c.a;
                SensorManager sensorManager = gVar.e;
                if (sensorManager != null) {
                    sensorManager.unregisterListener(gVar.s);
                }
                pause();
                return;
            }
            return;
        }
        int i = 1;
        g.c.a.a(true);
        g gVar2 = g.c.a;
        SensorManager sensorManager2 = gVar2.e;
        if (sensorManager2 != null) {
            if (gVar2.b == 2) {
                i = 4;
            } else {
                gVar2.e.registerListener(gVar2.s, sensorManager2.getDefaultSensor(9), 1);
                sensorManager2 = gVar2.e;
            }
            gVar2.e.registerListener(gVar2.s, sensorManager2.getDefaultSensor(i), 2);
        }
        LogUtil.d(TAG, c.cc);
        resume();
    }

    public void pause() {
        this.mHandler.removeCallbacks(this.updateTime);
    }

    public void resume() {
        start();
    }

    public void setOnSkipListener(OnSkipListener onSkipListener) {
        this.mOnSkipListener = onSkipListener;
    }

    public void setShow(boolean z) {
        this.show = z;
    }

    public void setTotalTime(int i) {
        this.mTotalTime = i;
    }

    public void start() {
        this.started = true;
        pause();
        this.mHandler.post(this.updateTime);
    }

    public void stop(boolean z) {
        pause();
        setAlpha(1.0f);
        OnSkipListener onSkipListener = this.mOnSkipListener;
        if (onSkipListener != null) {
            if (z) {
                onSkipListener.onSkip();
            } else if (this.isPause) {
                return;
            } else {
                onSkipListener.onTimeOver();
            }
            this.mOnSkipListener = null;
        }
    }
}

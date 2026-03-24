package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
public class CountDownCloseView extends CloseImageView {
    private Paint a;
    private Paint b;
    private float c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private RectF i;
    private float j;
    private long k;

    public CountDownCloseView(Context context) {
        this(context, null);
    }

    public CountDownCloseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = TypedValue.applyDimension(1, 2.5f, context.getResources().getDisplayMetrics());
        this.d = Color.parseColor("#FF57575A");
        this.e = -1;
        Paint paint = new Paint();
        this.a = paint;
        paint.setAntiAlias(true);
        this.a.setStrokeCap(Paint.Cap.ROUND);
        this.a.setStyle(Paint.Style.STROKE);
        this.a.setStrokeWidth(this.c);
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setAntiAlias(true);
        this.b.setColor(this.e);
        this.i = new RectF();
    }

    private void a() {
        float f = this.c * 0.5f;
        float f2 = 0.0f + f;
        this.i.set(f2, f2, this.f - f, this.g - f);
        this.h = ((int) this.i.width()) >> 1;
    }

    private void a(Context context) {
        this.c = TypedValue.applyDimension(1, 2.5f, context.getResources().getDisplayMetrics());
        this.d = Color.parseColor("#FF57575A");
        this.e = -1;
        Paint paint = new Paint();
        this.a = paint;
        paint.setAntiAlias(true);
        this.a.setStrokeCap(Paint.Cap.ROUND);
        this.a.setStyle(Paint.Style.STROKE);
        this.a.setStrokeWidth(this.c);
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setAntiAlias(true);
        this.b.setColor(this.e);
        this.i = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.j < 360.0f) {
            this.a.setColor(this.d);
            canvas.drawArc(this.i, 0.0f, 360.0f, false, this.a);
            this.a.setColor(this.e);
            canvas.drawArc(this.i, -90.0f, this.j, false, this.a);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f = i;
        this.g = i2;
        a();
    }

    public void refresh(long j) {
        long j2 = this.k;
        if (j2 > 0) {
            this.j = ((j * 1.0f) / j2) * 360.0f;
            postInvalidate();
        }
    }

    public void setDuration(long j) {
        this.k = j;
    }

    public void setThickInPx(int i) {
        float f = i;
        this.c = f;
        this.a.setStrokeWidth(f);
        a();
    }

    public void setUnderRingColor(int i) {
        this.d = i;
    }
}

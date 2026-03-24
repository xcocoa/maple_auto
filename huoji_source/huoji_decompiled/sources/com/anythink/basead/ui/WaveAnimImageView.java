package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class WaveAnimImageView extends ImageView {
    public int a;
    public int b;
    private Paint c;
    private a d;

    public static class a {
        public float a;
        public float b;
        public float c;

        public a(float f, float f2, float f3) {
            this.a = f;
            this.b = f2;
            this.c = f3;
        }
    }

    public WaveAnimImageView(Context context) {
        super(context);
        a();
    }

    public WaveAnimImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public WaveAnimImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.c = paint;
        paint.setAntiAlias(true);
        this.c.setStyle(Paint.Style.STROKE);
        this.c.setColor(Color.parseColor("#FFFFFF"));
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a aVar = this.d;
        if (aVar != null) {
            this.c.setAlpha((int) (aVar.c * 255.0f));
            this.c.setStrokeWidth(this.d.b);
            canvas.drawCircle(this.a, this.b, this.d.a, this.c);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.a = getWidth() / 2;
        this.b = getHeight() / 2;
    }

    public void setWaveAnimParams(a aVar) {
        this.d = aVar;
        postInvalidate();
    }
}

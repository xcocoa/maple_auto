package com.anythink.basead.ui.guidetoclickv2.picverify;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class TextSeekbar extends SeekBar {
    public String a;
    public RectF b;
    public float c;
    public Paint.FontMetrics d;
    private Paint e;
    private Paint f;

    public TextSeekbar(Context context) {
        super(context);
    }

    public TextSeekbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextSeekbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint();
        this.e = paint;
        paint.setTextAlign(Paint.Align.CENTER);
        this.e.setTextSize(i.a(context, 12.0f));
        this.e.setAntiAlias(true);
        this.e.setColor(Color.parseColor("#FFFFFF"));
        this.a = getContext().getString(i.a(n.a().f(), "myoffer_g2c_seek_to_click", com.anythink.expressad.foundation.h.i.g));
        Paint paint2 = new Paint();
        this.f = paint2;
        paint2.setColor(Color.parseColor("#80000000"));
        this.c = i.a(getContext(), 12.0f);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.b == null) {
            this.b = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        }
        RectF rectF = this.b;
        float f = this.c;
        canvas.drawRoundRect(rectF, f, f, this.f);
        if (this.d == null) {
            this.d = this.e.getFontMetrics();
        }
        Paint.FontMetrics fontMetrics = this.d;
        canvas.drawText(this.a, getWidth() / 2, (int) (((getHeight() / 2) - (fontMetrics.top / 2.0f)) - (fontMetrics.bottom / 2.0f)), this.e);
        super.onDraw(canvas);
    }
}

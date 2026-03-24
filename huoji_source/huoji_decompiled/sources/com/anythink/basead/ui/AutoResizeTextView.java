package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class AutoResizeTextView extends TextView {
    private static final int a = 1000;
    private static final int b = 5;
    private TextPaint c;
    private float d;
    private float e;
    private boolean f;
    private boolean g;

    public AutoResizeTextView(Context context) {
        super(context);
        this.d = 1.0f;
        this.e = 0.0f;
        this.f = false;
        this.g = false;
        a();
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = 1.0f;
        this.e = 0.0f;
        this.f = false;
        this.g = false;
        a();
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = 1.0f;
        this.e = 0.0f;
        this.f = false;
        this.g = false;
        a();
    }

    private int a(CharSequence charSequence, int i) {
        return new StaticLayout(charSequence, this.c, i, Layout.Alignment.ALIGN_NORMAL, this.d, this.e, true).getHeight();
    }

    private void a() {
        this.c = new TextPaint();
    }

    private void b() {
        CharSequence text = getText();
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        if (width == 0 || height == 0 || TextUtils.isEmpty(text)) {
            return;
        }
        this.g = true;
        int textSize = (int) getTextSize();
        while (textSize >= 5) {
            this.c.setTextSize(textSize);
            int iMeasureText = (int) this.c.measureText(text, 0, text.length());
            int height2 = new StaticLayout(text, this.c, width, Layout.Alignment.ALIGN_NORMAL, this.d, this.e, true).getHeight();
            if (iMeasureText < width && height2 < height) {
                break;
            } else {
                textSize--;
            }
        }
        setTextSize(0, textSize);
        this.g = false;
        this.f = false;
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.g) {
            return;
        }
        if (!this.f) {
            super.onDraw(canvas);
            return;
        }
        CharSequence text = getText();
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        if (width == 0 || height == 0 || TextUtils.isEmpty(text)) {
            return;
        }
        this.g = true;
        int textSize = (int) getTextSize();
        while (textSize >= 5) {
            this.c.setTextSize(textSize);
            int iMeasureText = (int) this.c.measureText(text, 0, text.length());
            int height2 = new StaticLayout(text, this.c, width, Layout.Alignment.ALIGN_NORMAL, this.d, this.e, true).getHeight();
            if (iMeasureText < width && height2 < height) {
                break;
            } else {
                textSize--;
            }
        }
        setTextSize(0, textSize);
        this.g = false;
        this.f = false;
        invalidate();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f = true;
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        this.f = true;
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f, float f2) {
        super.setLineSpacing(f, f2);
        this.d = f2;
        this.e = f;
    }
}

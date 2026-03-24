package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import z2.xk;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ScrimInsetsFrameLayout extends FrameLayout {
    public Drawable OoooOoO;
    public Rect OoooOoo;
    private Rect Ooooo00;

    public class OooO00o implements OnApplyWindowInsetsListener {
        public OooO00o() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.OoooOoo == null) {
                scrimInsetsFrameLayout.OoooOoo = new Rect();
            }
            ScrimInsetsFrameLayout.this.OoooOoo.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            ScrimInsetsFrameLayout.this.OooO00o(windowInsetsCompat);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.OoooOoO == null);
            ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    public ScrimInsetsFrameLayout(Context context) {
        this(context, null);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Ooooo00 = new Rect();
        TypedArray typedArrayOooOO0 = xk.OooOO0(context, attributeSet, R.styleable.ScrimInsetsFrameLayout, i, R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.OoooOoO = typedArrayOooOO0.getDrawable(R.styleable.ScrimInsetsFrameLayout_insetForeground);
        typedArrayOooOO0.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OooO00o());
    }

    public void OooO00o(WindowInsetsCompat windowInsetsCompat) {
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.OoooOoo == null || this.OoooOoO == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        this.Ooooo00.set(0, 0, width, this.OoooOoo.top);
        this.OoooOoO.setBounds(this.Ooooo00);
        this.OoooOoO.draw(canvas);
        this.Ooooo00.set(0, height - this.OoooOoo.bottom, width, height);
        this.OoooOoO.setBounds(this.Ooooo00);
        this.OoooOoO.draw(canvas);
        Rect rect = this.Ooooo00;
        Rect rect2 = this.OoooOoo;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.OoooOoO.setBounds(this.Ooooo00);
        this.OoooOoO.draw(canvas);
        Rect rect3 = this.Ooooo00;
        Rect rect4 = this.OoooOoo;
        rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
        this.OoooOoO.setBounds(this.Ooooo00);
        this.OoooOoO.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.OoooOoO;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.OoooOoO;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }
}

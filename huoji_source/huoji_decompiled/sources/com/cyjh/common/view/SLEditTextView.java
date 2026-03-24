package com.cyjh.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import com.cyjh.common.R;

/* JADX INFO: loaded from: classes.dex */
public class SLEditTextView extends AppCompatEditText implements View.OnFocusChangeListener, TextWatcher {
    private static final int OooooOo = 0;
    private static final int Oooooo = 2;
    private static final int Oooooo0 = 1;
    private static final int OoooooO = 3;
    private Context OoooOoO;
    private Paint OoooOoo;
    private int Ooooo00;
    private Drawable Ooooo0o;
    private Drawable OooooO0;
    private boolean OooooOO;

    public SLEditTextView(Context context) {
        super(context);
        OooO0Oo(context);
    }

    public SLEditTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        OooO0Oo(context);
    }

    public SLEditTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OooO0Oo(context);
    }

    public static int OooO0O0(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void OooO0OO() {
        Paint paint = new Paint();
        this.OoooOoo = paint;
        paint.setStrokeWidth(3.0f);
        this.Ooooo00 = Color.parseColor("#a9b7b7");
    }

    private void OooO0Oo(Context context) {
        this.OoooOoO = context;
        setDrawable(context);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
        OooO0o0(true);
    }

    private void OooO0o0(boolean z) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        if (length() <= 0 || !z) {
            drawable = this.OooooO0;
            drawable2 = getCompoundDrawables()[1];
            drawable3 = null;
            drawable4 = getCompoundDrawables()[3];
        } else {
            drawable = this.OooooO0;
            drawable2 = getCompoundDrawables()[1];
            drawable3 = this.Ooooo0o;
            drawable4 = getCompoundDrawables()[3];
        }
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    public void OooO00o() {
        setCompoundDrawables(this.OooooO0, getCompoundDrawables()[1], null, getCompoundDrawables()[3]);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        OooO0o0(true);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void finalize() throws Throwable {
        this.Ooooo0o = null;
        super.finalize();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.OooooOO = z;
        OooO0o0(z);
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (getCompoundDrawables()[2] != null && motionEvent.getAction() == 1 && getWidth() - getCompoundPaddingRight() < motionEvent.getX() && getWidth() - getPaddingRight() > motionEvent.getX()) {
            setText("");
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setDrawable(Context context) {
        Drawable drawable = getCompoundDrawables()[2];
        this.Ooooo0o = drawable;
        if (drawable == null) {
            this.Ooooo0o = getResources().getDrawable(R.drawable.icon_clear_edit);
        }
        this.Ooooo0o.setBounds(0, 0, OooO0O0(context, 25.0f), OooO0O0(context, 25.0f));
        Drawable drawable2 = getCompoundDrawables()[0];
        this.OooooO0 = drawable2;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, OooO0O0(context, 28.0f), OooO0O0(context, 28.0f));
        }
    }
}

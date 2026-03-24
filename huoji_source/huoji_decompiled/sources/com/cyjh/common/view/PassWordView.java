package com.cyjh.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes.dex */
public class PassWordView extends View {
    private Paint OoooOoO;
    private Handler OoooOoo;
    private boolean Ooooo00;
    private boolean Ooooo0o;
    private boolean OooooO0;
    private int OooooOO;
    private int OooooOo;
    private int Oooooo;
    private int Oooooo0;
    private int OoooooO;
    private int Ooooooo;
    private int o00O0O;
    private String o00Oo0;
    private Context o00Ooo;
    private String o00o0O;
    private int o00ooo;
    private boolean o0OoOo0;
    private int oo000o;
    private int ooOO;

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PassWordView.this.OooooO0 = !r0.OooooO0;
            PassWordView.this.invalidate();
            PassWordView.this.OoooOoo.postDelayed(this, 800L);
        }
    }

    public PassWordView(Context context) {
        this(context, null);
    }

    public PassWordView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PassWordView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Ooooo0o = false;
        this.OoooooO = 0;
        this.Ooooooo = 0;
        this.o0OoOo0 = true;
        this.ooOO = 40;
        this.o00O0O = 40;
        this.o00Oo0 = "";
        this.o00o0O = Marker.ANY_MARKER;
        this.o00ooo = 18;
        this.oo000o = 4;
        this.o00Ooo = context;
        Paint paint = new Paint();
        this.OoooOoO = paint;
        paint.setAntiAlias(true);
        this.OoooOoO.setStrokeWidth(this.oo000o);
        this.OoooOoO.setPathEffect(new CornerPathEffect(1.0f));
    }

    private void OooO0Oo(Canvas canvas) {
        Paint paint;
        Context context;
        int i;
        if (this.Ooooo0o) {
            paint = this.OoooOoO;
            context = this.o00Ooo;
            i = this.OooooOO;
        } else {
            paint = this.OoooOoO;
            context = this.o00Ooo;
            i = this.OooooOo;
        }
        paint.setColor(ContextCompat.getColor(context, i));
        this.OoooOoO.setStyle(Paint.Style.STROKE);
        int i2 = this.OoooooO;
        if (i2 == 1) {
            canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, (getMeasuredWidth() / 2) - 5, this.OoooOoO);
        } else if (i2 != 2) {
            canvas.drawRoundRect(new RectF(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight()), 6.0f, 6.0f, this.OoooOoO);
        } else {
            canvas.drawLine(0.0f, getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight(), this.OoooOoO);
        }
    }

    private void OooO0o(Canvas canvas) {
        if (this.OooooO0 && this.o0OoOo0) {
            int measuredWidth = (getMeasuredWidth() / 2) - 10;
            if (measuredWidth < 0) {
                measuredWidth = getMeasuredWidth() / 2;
            }
            this.OoooOoO.setStyle(Paint.Style.FILL);
            this.OoooOoO.setColor(ContextCompat.getColor(this.o00Ooo, this.Oooooo0));
            int i = measuredWidth / 2;
            canvas.drawLine(getMeasuredWidth() / 2, (getMeasuredHeight() / 2) - i, getMeasuredWidth() / 2, (getMeasuredHeight() / 2) + i, this.OoooOoO);
        }
    }

    private void OooO0o0(Canvas canvas) {
        float measuredHeight;
        float measuredWidth;
        String str;
        if (this.Ooooo00) {
            this.OoooOoO.setColor(ContextCompat.getColor(this.o00Ooo, this.Oooooo));
            this.OoooOoO.setStyle(Paint.Style.FILL);
            int i = this.Ooooooo;
            if (i == 0) {
                canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, 8.0f, this.OoooOoO);
                return;
            }
            if (i == 1) {
                this.OoooOoO.setTextSize((getMeasuredWidth() / 2) + 10);
                float fMeasureText = this.OoooOoO.measureText(this.o00o0O);
                measuredHeight = ((getMeasuredHeight() / 2) - ((this.OoooOoO.descent() + this.OoooOoO.ascent()) / 2.0f)) + (fMeasureText / 3.0f);
                measuredWidth = (getMeasuredWidth() / 2) - (fMeasureText / 2.0f);
                str = this.o00o0O;
            } else {
                if (i != 2) {
                    return;
                }
                this.OoooOoO.setTextSize(this.o00ooo);
                float fMeasureText2 = this.OoooOoO.measureText(this.o00Oo0);
                measuredHeight = ((getMeasuredHeight() / 2) - ((this.OoooOoO.descent() + this.OoooOoO.ascent()) / 2.0f)) + (fMeasureText2 / 5.0f);
                measuredWidth = (getMeasuredWidth() / 2) - (fMeasureText2 / 2.0f);
                str = this.o00Oo0;
            }
            canvas.drawText(str, measuredWidth, measuredHeight, this.OoooOoO);
        }
    }

    public void OooO0oO() {
        this.Ooooo0o = true;
        this.Ooooo00 = false;
        if (this.OoooOoo == null) {
            this.OoooOoo = new Handler();
        }
        this.OoooOoo.removeCallbacksAndMessages(null);
        if (this.o0OoOo0) {
            this.OoooOoo.post(new OooO00o());
        } else {
            invalidate();
        }
    }

    public void OooO0oo(boolean z) {
        Handler handler = this.OoooOoo;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (z) {
            this.Ooooo0o = true;
            this.Ooooo00 = true;
        } else {
            this.Ooooo0o = false;
            this.Ooooo00 = false;
        }
        this.OooooO0 = false;
        invalidate();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Handler handler = this.OoooOoo;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        OooO0Oo(canvas);
        OooO0o(canvas);
        OooO0o0(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            int i3 = this.ooOO;
            size = mode == Integer.MIN_VALUE ? Math.min(i3, size) : i3;
        }
        if (mode2 != 1073741824) {
            int i4 = this.o00O0O;
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(i4, size2) : i4;
        }
        setMeasuredDimension(size, size2);
    }

    public void setDrawTxtContent(String str) {
        this.o00o0O = str;
    }

    public void setInputState(boolean z) {
        this.Ooooo0o = z;
    }

    public void setInputStateColor(int i) {
        this.OooooOO = i;
    }

    public void setInputStateTextColor(int i) {
        this.Oooooo = i;
    }

    public void setNoinputColor(int i) {
        this.OooooOo = i;
    }

    public void setRemindLineColor(int i) {
        this.Oooooo0 = i;
    }

    public void setmBoxDrawType(int i) {
        this.OoooooO = i;
    }

    public void setmDrawBoxLineSize(int i) {
        this.oo000o = i;
    }

    public void setmDrawTxtSize(int i) {
        this.o00ooo = i;
    }

    public void setmIsShowRemindLine(boolean z) {
        this.o0OoOo0 = z;
    }

    public void setmPassText(String str) {
        this.o00Oo0 = str;
    }

    public void setmShowPassType(int i) {
        this.Ooooooo = i;
    }
}

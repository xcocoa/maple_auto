package com.cyjh.common.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.ViewCompat;
import com.anythink.expressad.exoplayer.i.a;
import com.cyjh.common.R;

/* JADX INFO: loaded from: classes.dex */
public class ActionProcessButton extends ProcessButton {
    private Mode o00O0O;
    private int o00Oo0;
    private int o00Ooo;
    private int o00o0O;
    private int o00ooo;
    private OooO0O0 ooOO;

    public enum Mode {
        PROGRESS,
        ENDLESS
    }

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[Mode.values().length];
            OooO00o = iArr;
            try {
                iArr[Mode.ENDLESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[Mode.PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class OooO0O0 {
        private static final int OooOOO = Integer.MIN_VALUE;
        private static final int OooOOO0 = -1291845632;
        private static final int OooOOOO = 1291845632;
        private static final int OooOOOo = 436207616;
        private static final int OooOOo = 1000;
        private static final int OooOOo0 = 2000;
        private static final Interpolator OooOOoo = new AccelerateDecelerateInterpolator();
        private float OooO0OO;
        private long OooO0Oo;
        private boolean OooO0o;
        private long OooO0o0;
        private View OooOO0O;
        private final Paint OooO00o = new Paint();
        private final RectF OooO0O0 = new RectF();
        private Rect OooOO0o = new Rect();
        private int OooO0oO = OooOOO0;
        private int OooO0oo = Integer.MIN_VALUE;
        private int OooO = OooOOOO;
        private int OooOO0 = OooOOOo;

        public OooO0O0(View view) {
            this.OooOO0O = view;
        }

        private void OooO0O0(Canvas canvas, float f, float f2, int i, float f3) {
            this.OooO00o.setColor(i);
            canvas.save();
            canvas.translate(f, f2);
            float interpolation = OooOOoo.getInterpolation(f3);
            canvas.scale(interpolation, interpolation);
            canvas.drawCircle(0.0f, 0.0f, f, this.OooO00o);
            canvas.restore();
        }

        private void OooO0OO(Canvas canvas, int i, int i2) {
            this.OooO00o.setColor(this.OooO0oO);
            float f = i;
            canvas.drawCircle(f, i2, this.OooO0OO * f, this.OooO00o);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void OooO00o(Canvas canvas) {
            int iWidth = this.OooOO0o.width();
            int iHeight = this.OooOO0o.height();
            int i = iWidth / 2;
            int i2 = iHeight / 2;
            int iSave = canvas.save();
            canvas.clipRect(this.OooOO0o);
            if (this.OooO0o || this.OooO0o0 > 0) {
                long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                long j = this.OooO0Oo;
                long j2 = (jCurrentAnimationTimeMillis - j) % a.f;
                long j3 = (jCurrentAnimationTimeMillis - j) / a.f;
                float f = j2 / 20.0f;
                boolean z = false;
                if (!this.OooO0o) {
                    if (jCurrentAnimationTimeMillis - this.OooO0o0 >= 1000) {
                        this.OooO0o0 = 0L;
                        return;
                    }
                    float f2 = (((jCurrentAnimationTimeMillis - r11) % 1000) / 10.0f) / 100.0f;
                    float f3 = i;
                    float interpolation = OooOOoo.getInterpolation(f2) * f3;
                    this.OooO0O0.set(f3 - interpolation, 0.0f, f3 + interpolation, iHeight);
                    canvas.saveLayerAlpha(this.OooO0O0, 0, 0);
                    z = true;
                }
                if (j3 != 0) {
                    int i3 = (f < 0.0f || f >= 25.0f) ? (f < 25.0f || f >= 50.0f) ? (f < 50.0f || f >= 75.0f) ? this.OooO : this.OooO0oo : this.OooO0oO : this.OooOO0;
                    canvas.drawColor(i3);
                    if (f >= 0.0f && f <= 25.0f) {
                        OooO0O0(canvas, i, i2, this.OooO0oO, ((f + 25.0f) * 2.0f) / 100.0f);
                    }
                    if (f >= 0.0f && f <= 50.0f) {
                        OooO0O0(canvas, i, i2, this.OooO0oo, (f * 2.0f) / 100.0f);
                    }
                    if (f >= 25.0f && f <= 75.0f) {
                        OooO0O0(canvas, i, i2, this.OooO, ((f - 25.0f) * 2.0f) / 100.0f);
                    }
                    if (f >= 50.0f && f <= 100.0f) {
                        OooO0O0(canvas, i, i2, this.OooOO0, ((f - 50.0f) * 2.0f) / 100.0f);
                    }
                    if (f >= 75.0f && f <= 100.0f) {
                        OooO0O0(canvas, i, i2, this.OooO0oO, ((f - 75.0f) * 2.0f) / 100.0f);
                    }
                    if (this.OooO0OO > 0.0f && z) {
                        canvas.restoreToCount(iSave);
                        int iSave2 = canvas.save();
                        canvas.clipRect(this.OooOO0o);
                        OooO0OO(canvas, i, i2);
                        iSave = iSave2;
                    }
                    ViewCompat.postInvalidateOnAnimation(this.OooOO0O);
                }
            } else {
                float f4 = this.OooO0OO;
                if (f4 > 0.0f && f4 <= 1.0d) {
                    OooO0OO(canvas, i, i2);
                }
            }
            canvas.restoreToCount(iSave);
        }

        public void OooO0Oo(int i, int i2, int i3, int i4) {
            Rect rect = this.OooOO0o;
            rect.left = i;
            rect.top = i2;
            rect.right = i3;
            rect.bottom = i4;
        }

        public void OooO0o() {
            if (this.OooO0o) {
                return;
            }
            this.OooO0OO = 0.0f;
            this.OooO0Oo = AnimationUtils.currentAnimationTimeMillis();
            this.OooO0o = true;
            this.OooOO0O.postInvalidate();
        }

        public void OooO0o0(int i, int i2, int i3, int i4) {
            this.OooO0oO = i;
            this.OooO0oo = i2;
            this.OooO = i3;
            this.OooOO0 = i4;
        }
    }

    public ActionProcessButton(Context context) {
        super(context);
        OooOOOo(context);
    }

    public ActionProcessButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        OooOOOo(context);
    }

    public ActionProcessButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OooOOOo(context);
    }

    private void OooOOO(Canvas canvas) {
        if (this.ooOO == null) {
            this.ooOO = new OooO0O0(this);
            OooOOo();
            this.ooOO.OooO0o0(this.o00Oo0, this.o00Ooo, this.o00o0O, this.o00ooo);
            this.ooOO.OooO0o();
        }
        if (getProgress() > 0) {
            this.ooOO.OooO00o(canvas);
        }
    }

    private void OooOOOO(Canvas canvas) {
        getProgressDrawable().setBounds(0, (int) (((double) getMeasuredHeight()) - (((double) getMeasuredHeight()) * 0.05d)), (int) (getMeasuredWidth() * (getProgress() / getMaxProgress())), getMeasuredHeight());
        getProgressDrawable().draw(canvas);
    }

    private void OooOOOo(Context context) {
        Resources resources = context.getResources();
        this.o00O0O = Mode.ENDLESS;
        this.o00Oo0 = resources.getColor(R.color.holo_blue_bright);
        this.o00Ooo = resources.getColor(R.color.holo_green_light);
        this.o00o0O = resources.getColor(R.color.holo_orange_light);
        this.o00ooo = resources.getColor(R.color.holo_red_light);
    }

    private void OooOOo() {
        this.ooOO.OooO0Oo(0, (int) (((double) getMeasuredHeight()) - ((double) OooO0Oo(R.dimen.layer_padding))), getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // com.cyjh.common.view.ProcessButton
    public void OooO(Canvas canvas) {
        if (getBackground() != getNormalDrawable()) {
            setBackgroundDrawable(getNormalDrawable());
        }
        int i = OooO00o.OooO00o[this.o00O0O.ordinal()];
        if (i == 1) {
            OooOOO(canvas);
        } else {
            if (i != 2) {
                return;
            }
            OooOOOO(canvas);
        }
    }

    public void OooOOo0(int i, int i2, int i3, int i4) {
        this.o00Oo0 = i;
        this.o00Ooo = i2;
        this.o00o0O = i3;
        this.o00ooo = i4;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.ooOO != null) {
            OooOOo();
        }
    }

    public void setMode(Mode mode) {
        this.o00O0O = mode;
    }
}

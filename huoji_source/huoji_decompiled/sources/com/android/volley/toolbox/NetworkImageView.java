package com.android.volley.toolbox;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.volley.VolleyError;
import z2.o00000OO;
import z2.o0000Ooo;

/* JADX INFO: loaded from: classes.dex */
public class NetworkImageView extends ImageView {
    private String OoooOoO;
    private int OoooOoo;
    private int Ooooo00;
    private o00000OO Ooooo0o;
    private OooO0O0 OooooO0;
    private o0000Ooo.OooO00o OooooOO;
    private o00000OO.OooOO0O OooooOo;

    public class OooO00o implements o00000OO.OooOOO0 {
        public final /* synthetic */ boolean OoooOoO;

        /* JADX INFO: renamed from: com.android.volley.toolbox.NetworkImageView$OooO00o$OooO00o, reason: collision with other inner class name */
        public class RunnableC0044OooO00o implements Runnable {
            public final /* synthetic */ o00000OO.OooOO0O OoooOoO;

            public RunnableC0044OooO00o(o00000OO.OooOO0O oooOO0O) {
                this.OoooOoO = oooOO0O;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO00o.this.OooO00o(this.OoooOoO, false);
            }
        }

        public OooO00o(boolean z) {
            this.OoooOoO = z;
        }

        @Override // z2.o00000OO.OooOOO0
        public void OooO00o(o00000OO.OooOO0O oooOO0O, boolean z) {
            if (z && this.OoooOoO) {
                NetworkImageView.this.post(new RunnableC0044OooO00o(oooOO0O));
                return;
            }
            if (oooOO0O.OooO0Oo() != null) {
                NetworkImageView.this.setImageBitmap(oooOO0O.OooO0Oo());
            } else if (NetworkImageView.this.OoooOoo != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.OoooOoo);
            }
        }

        @Override // z2.oo000o.OooO00o
        public void OooO0O0(VolleyError volleyError) {
            if (NetworkImageView.this.Ooooo00 != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.Ooooo00);
            }
        }
    }

    public interface OooO0O0 {
        String OooO00o(String str, int i, int i2, ImageView.ScaleType scaleType, Context context);
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void OooO0Oo() {
        int i = this.OoooOoo;
        if (i != 0) {
            setImageResource(i);
        } else {
            setImageBitmap(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void OooO0OO(boolean z) {
        boolean z3;
        int width = getWidth();
        int height = getHeight();
        ImageView.ScaleType scaleType = getScaleType();
        if (getLayoutParams() != null) {
            z3 = getLayoutParams().width == -2;
            boolean z4 = getLayoutParams().height == -2;
            boolean z5 = !z3 && z4;
            if (width == 0 || height != 0 || z5) {
                if (!TextUtils.isEmpty(this.OoooOoO)) {
                    o00000OO.OooOO0O oooOO0O = this.OooooOo;
                    if (oooOO0O != null) {
                        oooOO0O.OooO0OO();
                        this.OooooOo = null;
                    }
                    OooO0Oo();
                    return;
                }
                int i = z3 ? 0 : width;
                int i2 = z4 ? 0 : height;
                String str = this.OoooOoO;
                OooO0O0 oooO0O0 = this.OooooO0;
                String strOooO00o = oooO0O0 != null ? oooO0O0.OooO00o(str, i, i2, getScaleType(), getContext().getApplicationContext()) : str;
                o00000OO.OooOO0O oooOO0O2 = this.OooooOo;
                if (oooOO0O2 != null && oooOO0O2.OooO0o0() != null) {
                    if (this.OooooOo.OooO0o0().equals(strOooO00o)) {
                        return;
                    }
                    this.OooooOo.OooO0OO();
                    OooO0Oo();
                }
                this.OooooOo = this.Ooooo0o.OooO0oo(strOooO00o, new OooO00o(z), i, i2, scaleType, this.OooooOO);
                return;
            }
            return;
        }
        z3 = false;
        if (z3) {
        }
        if (width == 0) {
        }
        if (!TextUtils.isEmpty(this.OoooOoO)) {
        }
    }

    public void OooO0o(String str, o00000OO o00000oo, OooO0O0 oooO0O0) {
        this.OoooOoO = str;
        this.Ooooo0o = o00000oo;
        this.OooooO0 = oooO0O0;
        OooO0OO(false);
    }

    public void OooO0o0(String str, o00000OO o00000oo) {
        OooO0o(str, o00000oo, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        o00000OO.OooOO0O oooOO0O = this.OooooOo;
        if (oooOO0O != null) {
            oooOO0O.OooO0OO();
            setImageBitmap(null);
            this.OooooOo = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        OooO0OO(true);
    }

    public void setDefaultImageResId(int i) {
        this.OoooOoo = i;
    }

    public void setErrorImageResId(int i) {
        this.Ooooo00 = i;
    }

    public void setTransformation(o0000Ooo.OooO00o oooO00o) {
        this.OooooOO = oooO00o;
    }
}

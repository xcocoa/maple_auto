package com.cyjh.mobileanjian.ipc.view;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import com.anythink.expressad.exoplayer.i.a;
import com.cyjh.mqsdk.R;
import java.util.Timer;
import java.util.TimerTask;
import z2.g6;
import z2.gf;

/* JADX INFO: loaded from: classes2.dex */
public class ExToast {
    public static final int LENGTH_LONG = 3500;
    public static final int LENGTH_SHORT = 2000;
    private static final int OooOOO = 51;
    private WindowManager OooO00o;
    private WindowManager.LayoutParams OooO0O0;
    private Timer OooO0OO;
    private Toast OooO0Oo;
    private int OooO0o;
    private boolean OooO0o0;
    private int OooO0oO;
    private CharSequence OooOO0;
    private TextView OooOO0o;
    private OooO0O0 OooOOO0;
    private int OooO0oo = -1;
    private int OooO = -1;
    private int OooOO0O = 2000;

    public class OooO0O0 extends TimerTask {
        private OooO0O0() {
        }

        public /* synthetic */ OooO0O0(ExToast exToast, byte b) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            ExToast.this.hide();
        }
    }

    public ExToast(Context context) {
        byte b = 0;
        this.OooOOO0 = new OooO0O0(this, b);
        this.OooO00o = (WindowManager) context.getSystemService("window");
        this.OooO0Oo = Toast.makeText(context, "", 0);
        if (gf.OooO0O0()) {
            this.OooO0Oo.setView(LayoutInflater.from(context).inflate(R.layout.ui_show_toast_view, (ViewGroup) null));
        }
        this.OooO0OO = new Timer();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.OooO0O0 = layoutParams;
        layoutParams.height = -2;
        layoutParams.width = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = android.R.style.Animation.Toast;
        int i = Build.VERSION.SDK_INT;
        layoutParams.type = i >= 26 ? 2038 : (i < 19 || i >= 24) ? 2002 : 2005;
        layoutParams.flags = 152;
        int identifier = Resources.getSystem().getIdentifier("config_toastDefaultGravity", "Integer", g6.OooO0O0);
        StringBuilder sb = new StringBuilder("config_toastDefaultGravity tempResId = ");
        sb.append(identifier);
        sb.append(", mDefaultGravity = 81");
        this.OooO0o = identifier == 0 ? 81 : context.getResources().getInteger(identifier);
        this.OooO0o = this.OooO0Oo.getGravity();
        int identifier2 = Resources.getSystem().getIdentifier("toast_y_offset", "dimen", g6.OooO0O0);
        this.OooO0oO = context.getResources().getDimensionPixelSize(identifier2 == 0 ? R.dimen.toast_y_offset : identifier2);
        this.OooO0O0.setTitle("Toast");
        if (i > 29 || (i == 29 && gf.OooO00o() > 0)) {
            b = 1;
        }
        if (b != 0) {
            this.OooO0O0.alpha = 0.79f;
        }
    }

    private void OooO00o(int i, CharSequence charSequence, int i2, int i3, boolean z) {
        WindowManager.LayoutParams layoutParams = this.OooO0O0;
        layoutParams.gravity = i;
        if (i == this.OooO0o) {
            layoutParams.x = 0;
            layoutParams.y = this.OooO0oO;
        } else {
            layoutParams.x = i2;
            layoutParams.y = i3;
        }
        setText(charSequence);
        if (!this.OooO0o0) {
            this.OooO00o.addView(this.OooO0Oo.getView(), this.OooO0O0);
        } else if (z) {
            this.OooO00o.updateViewLayout(this.OooO0Oo.getView(), this.OooO0O0);
        }
    }

    private void OooO0O0(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.OooO0O0 = layoutParams;
        layoutParams.height = -2;
        layoutParams.width = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = android.R.style.Animation.Toast;
        int i = Build.VERSION.SDK_INT;
        layoutParams.type = i >= 26 ? 2038 : (i < 19 || i >= 24) ? 2002 : 2005;
        layoutParams.flags = 152;
        int identifier = Resources.getSystem().getIdentifier("config_toastDefaultGravity", "Integer", g6.OooO0O0);
        StringBuilder sb = new StringBuilder("config_toastDefaultGravity tempResId = ");
        sb.append(identifier);
        sb.append(", mDefaultGravity = 81");
        this.OooO0o = identifier == 0 ? 81 : context.getResources().getInteger(identifier);
        this.OooO0o = this.OooO0Oo.getGravity();
        int identifier2 = Resources.getSystem().getIdentifier("toast_y_offset", "dimen", g6.OooO0O0);
        Resources resources = context.getResources();
        if (identifier2 == 0) {
            identifier2 = R.dimen.toast_y_offset;
        }
        this.OooO0oO = resources.getDimensionPixelSize(identifier2);
        this.OooO0O0.setTitle("Toast");
        if (i > 29 || (i == 29 && gf.OooO00o() > 0)) {
            this.OooO0O0.alpha = 0.79f;
        }
    }

    public static ExToast makeText(Context context, int i, int i2) {
        return makeText(context, context.getString(i), i2);
    }

    public static ExToast makeText(Context context, CharSequence charSequence, int i) {
        ExToast exToast = new ExToast(context);
        exToast.setText(charSequence);
        exToast.setDuration(i);
        return exToast;
    }

    public void hide() {
        synchronized (this.OooO0Oo) {
            this.OooOOO0.cancel();
            if (this.OooO0Oo.getView().getParent() != null) {
                this.OooO00o.removeView(this.OooO0Oo.getView());
            }
            this.OooO0o0 = false;
        }
    }

    public void setDuration(int i) {
        this.OooOO0O = i;
    }

    public void setText(CharSequence charSequence) {
        this.OooOO0 = charSequence;
        this.OooO0Oo.setText(charSequence);
    }

    public void show() {
        OooO00o(this.OooO0o, this.OooOO0, 0, 0, true);
        OooO0O0 oooO0O0 = new OooO0O0(this, (byte) 0);
        this.OooOOO0 = oooO0O0;
        this.OooO0OO.schedule(oooO0O0, a.f);
    }

    public void show(CharSequence charSequence, int i, int i2, int i3) {
        boolean z;
        synchronized (this.OooO0Oo) {
            byte b = 0;
            if (i < 0) {
                try {
                    if (this.OooO0oo >= 0) {
                        z = (i2 >= 0 && this.OooO < 0) || (i == this.OooO0oo && i2 == this.OooO);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else if (i2 >= 0) {
            }
            int i4 = (i < 0 || i2 < 0) ? this.OooO0o : 51;
            this.OooO0oo = i;
            this.OooO = i2;
            this.OooOOO0.cancel();
            StringBuilder sb = new StringBuilder("config_toastDefaultGravity show gravity = ");
            sb.append(i4);
            sb.append(", x:");
            sb.append(this.OooO0Oo.getXOffset());
            sb.append(", y:");
            sb.append(this.OooO0Oo.getYOffset());
            OooO00o(i4, charSequence, i, i2, !z);
            this.OooO0o0 = true;
            OooO0O0 oooO0O0 = new OooO0O0(this, b);
            this.OooOOO0 = oooO0O0;
            if (i3 < 0) {
                i3 = Integer.MAX_VALUE;
            } else if (i3 >= 0 && i3 < 2000) {
                i3 = 2000;
            }
            this.OooO0OO.schedule(oooO0O0, i3);
        }
    }
}

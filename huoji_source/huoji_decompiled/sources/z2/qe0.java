package z2;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import razerdp.basepopup.BasePopupHelper;
import razerdp.util.log.PopupLog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class qe0 extends PopupWindow {
    private static final int OooO0o = 15;
    private static final String OooO0o0 = "BasePopupWindowProxy";
    private BasePopupHelper OooO00o;
    private df0 OooO0O0;
    private boolean OooO0OO;
    private boolean OooO0Oo;

    public qe0(Context context, AttributeSet attributeSet, int i, int i2, BasePopupHelper basePopupHelper) {
        super(context, attributeSet, i, i2);
        this.OooO0OO = true;
        this.OooO00o = basePopupHelper;
        OooO(context);
    }

    public qe0(Context context, AttributeSet attributeSet, int i, BasePopupHelper basePopupHelper) {
        super(context, attributeSet, i);
        this.OooO0OO = true;
        this.OooO00o = basePopupHelper;
        OooO(context);
    }

    public qe0(Context context, AttributeSet attributeSet, BasePopupHelper basePopupHelper) {
        super(context, attributeSet);
        this.OooO0OO = true;
        this.OooO00o = basePopupHelper;
        OooO(context);
    }

    public qe0(Context context, BasePopupHelper basePopupHelper) {
        super(context);
        this.OooO0OO = true;
        this.OooO00o = basePopupHelper;
        OooO(context);
    }

    public qe0(View view, int i, int i2, BasePopupHelper basePopupHelper) {
        super(view, i, i2);
        this.OooO0OO = true;
        this.OooO00o = basePopupHelper;
        OooO(view.getContext());
    }

    public qe0(View view, int i, int i2, boolean z, BasePopupHelper basePopupHelper) {
        super(view, i, i2, z);
        this.OooO0OO = true;
        this.OooO00o = basePopupHelper;
        OooO(view.getContext());
    }

    public qe0(View view, BasePopupHelper basePopupHelper) {
        super(view);
        this.OooO0OO = true;
        this.OooO00o = basePopupHelper;
        OooO(view.getContext());
    }

    private void OooO(Context context) {
        setFocusable(true);
        setOutsideTouchable(true);
        setBackgroundDrawable(new ColorDrawable());
        OooOOOO(this);
    }

    private void OooO0o() {
        df0 df0Var = this.OooO0O0;
        if (df0Var != null) {
            df0Var.OooO0Oo();
        }
        nf0.OooO00o(getContentView());
        se0.OooO0O0(this);
    }

    private void OooOOO(PopupWindow popupWindow) {
        try {
            WindowManager windowManagerOooO0O0 = we0.OooO00o().OooO0O0(popupWindow);
            if (windowManagerOooO0O0 == null) {
                return;
            }
            this.OooO0O0 = new df0(windowManagerOooO0O0);
            we0.OooO00o().OooO0Oo(popupWindow, this.OooO0O0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void OooOOO0(PopupWindow popupWindow) {
        try {
            Field declaredField = PopupWindow.class.getDeclaredField("mWindowManager");
            declaredField.setAccessible(true);
            WindowManager windowManager = (WindowManager) declaredField.get(popupWindow);
            if (windowManager == null) {
                return;
            }
            df0 df0Var = new df0(windowManager);
            this.OooO0O0 = df0Var;
            declaredField.set(popupWindow, df0Var);
            PopupLog.OooO(OooO0o0, "尝试代理WindowManager成功");
            Field declaredField2 = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
            declaredField2.setAccessible(true);
            declaredField2.set(popupWindow, null);
        } catch (NoSuchFieldException e) {
            if (Build.VERSION.SDK_INT >= 27) {
                OooOOO(popupWindow);
            } else {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void OooOOOO(PopupWindow popupWindow) {
        if (this.OooO00o == null || this.OooO0O0 != null) {
            return;
        }
        PopupLog.OooO0oo("cur api >> " + Build.VERSION.SDK_INT);
        OooOOO0(popupWindow);
    }

    public void OooO00o(BasePopupHelper basePopupHelper) {
        if (this.OooO0O0 == null) {
            OooOOOO(this);
        }
        this.OooO0O0.OooO0O0(basePopupHelper);
    }

    public void OooO0O0() {
        try {
            try {
                super.dismiss();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            OooO0o();
        }
    }

    public boolean OooO0OO() {
        return super.isShowing();
    }

    public void OooO0Oo(View view, int i, int i2, int i3) {
        if (OooOO0o(view.getContext()) == null) {
            Log.e(OooO0o0, "please make sure that context is instance of activity");
        } else if (Build.VERSION.SDK_INT >= 19) {
            super.showAsDropDown(view, i, i2, i3);
        } else {
            super.showAsDropDown(view, i, i2);
        }
    }

    public void OooO0o0(View view, int i, int i2, int i3) {
        super.showAtLocation(view, i, i2, i3);
    }

    public df0 OooO0oO() {
        return this.OooO0O0;
    }

    public void OooO0oo() {
        this.OooO0OO = isFocusable();
        setFocusable(false);
        this.OooO0Oo = true;
    }

    public boolean OooOO0() {
        return this.OooO0Oo;
    }

    public void OooOO0O() {
        df0 df0Var = this.OooO0O0;
        if (df0Var != null) {
            df0Var.OooOO0(this.OooO0OO);
        }
        this.OooO0Oo = false;
    }

    public Activity OooOO0o(Context context) {
        return nf0.OooO0oo(context, 15);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        BasePopupHelper basePopupHelper = this.OooO00o;
        if (basePopupHelper != null && basePopupHelper.OooO0OO() && this.OooO00o.OooO0oO()) {
            OooO0O0();
        }
    }

    @Override // android.widget.PopupWindow
    public void setContentView(View view) {
        super.setContentView(view);
        OooOOOO(this);
    }

    @Override // android.widget.PopupWindow
    public void update() {
        try {
            BasePopupHelper basePopupHelper = this.OooO00o;
            if (basePopupHelper == null) {
                super.update();
                return;
            }
            if (basePopupHelper.o00oO0O()) {
                super.update(this.OooO00o.OooOo(), this.OooO00o.OooOoO0() + this.OooO00o.OooOo0(), this.OooO00o.OoooOO0(), this.OooO00o.OoooO(), true);
            }
            df0 df0Var = this.OooO0O0;
            if (df0Var != null) {
                df0Var.OooO();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

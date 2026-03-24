package z2;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import razerdp.basepopup.BasePopupHelper;
import razerdp.util.log.PopupLog;

/* JADX INFO: loaded from: classes2.dex */
public final class df0 implements WindowManager {
    private static final String Ooooo0o = "WindowManagerProxy";
    private static int OooooO0;
    private WindowManager OoooOoO;
    private WeakReference<te0> OoooOoo;
    private WeakReference<BasePopupHelper> Ooooo00;

    public df0(WindowManager windowManager) {
        this.OoooOoO = windowManager;
    }

    private void OooO00o(ViewGroup.LayoutParams layoutParams, BasePopupHelper basePopupHelper) {
        if (!(layoutParams instanceof WindowManager.LayoutParams) || basePopupHelper == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            layoutParams2.layoutInDisplayCutoutMode = 0;
        }
        if (basePopupHelper.o00oO0O()) {
            PopupLog.OooO(Ooooo0o, "applyHelper  >>>  不拦截事件");
            int i2 = layoutParams2.flags | 32;
            layoutParams2.flags = i2;
            layoutParams2.flags = i2 | 262144;
            if (!basePopupHelper.o00Ooo()) {
                layoutParams2.flags |= 512;
            }
        }
        if (basePopupHelper.o00ooo()) {
            PopupLog.OooO(Ooooo0o, "applyHelper  >>>  全屏");
            layoutParams2.flags |= 256;
            if (i >= 28) {
                layoutParams2.layoutInDisplayCutoutMode = 1;
            }
            if (basePopupHelper.o00oO0O()) {
                return;
            }
            layoutParams2.flags |= 512;
        }
    }

    private void OooO0OO(Context context) {
        if (OooooO0 != 0 || context == null) {
            return;
        }
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", g6.OooO0O0);
        OooooO0 = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
    }

    private BasePopupHelper OooO0o() {
        WeakReference<BasePopupHelper> weakReference = this.Ooooo00;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    private ViewGroup.LayoutParams OooO0o0(te0 te0Var, ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof WindowManager.LayoutParams) {
            WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
            BasePopupHelper basePopupHelperOooO0o = OooO0o();
            if (basePopupHelperOooO0o != null) {
                if (basePopupHelperOooO0o.OoooOoo() > 1) {
                    layoutParams2.type = 1002;
                }
                if (basePopupHelperOooO0o.o00oO0O()) {
                    te0Var.OooOO0O(layoutParams2);
                } else {
                    layoutParams2.y = 0;
                    layoutParams2.x = 0;
                }
            }
            OooO00o(layoutParams2, basePopupHelperOooO0o);
        }
        return layoutParams;
    }

    private te0 OooO0oO() {
        WeakReference<te0> weakReference = this.OoooOoo;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    private boolean OooO0oo(View view) {
        if (view == null) {
            return false;
        }
        String simpleName = view.getClass().getSimpleName();
        return TextUtils.equals(simpleName, "PopupDecorView") || TextUtils.equals(simpleName, "PopupViewContainer");
    }

    public void OooO() {
        if (this.OoooOoO == null || OooO0oO() == null) {
            return;
        }
        OooO0oO().OooOo0o();
    }

    public void OooO0O0(BasePopupHelper basePopupHelper) {
        this.Ooooo00 = new WeakReference<>(basePopupHelper);
    }

    public void OooO0Oo() {
        try {
            removeViewImmediate(this.OoooOoo.get());
            this.OoooOoo.clear();
        } catch (Exception unused) {
        }
    }

    public void OooOO0(boolean z) {
        WindowManager.LayoutParams layoutParams;
        int i;
        if (this.OoooOoO == null || OooO0oO() == null) {
            return;
        }
        te0 te0VarOooO0oO = OooO0oO();
        ViewGroup.LayoutParams layoutParams2 = te0VarOooO0oO.getLayoutParams();
        if (layoutParams2 instanceof WindowManager.LayoutParams) {
            if (z) {
                layoutParams = (WindowManager.LayoutParams) layoutParams2;
                i = layoutParams.flags & (-9);
            } else {
                layoutParams = (WindowManager.LayoutParams) layoutParams2;
                i = layoutParams.flags | 8;
            }
            layoutParams.flags = i;
        }
        this.OoooOoO.updateViewLayout(te0VarOooO0oO, layoutParams2);
    }

    public void OooOO0O(View view, ViewGroup.LayoutParams layoutParams) {
        this.OoooOoO.updateViewLayout(view, layoutParams);
    }

    @Override // android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        Object[] objArr = new Object[1];
        StringBuilder sb = new StringBuilder();
        sb.append("WindowManager.addView  >>>  ");
        sb.append(view == null ? null : view.getClass().getSimpleName());
        objArr[0] = sb.toString();
        PopupLog.OooO(Ooooo0o, objArr);
        if (this.OoooOoO == null || view == null) {
            return;
        }
        OooO0OO(view.getContext());
        if (!OooO0oo(view)) {
            this.OoooOoO.addView(view, layoutParams);
            return;
        }
        BasePopupHelper basePopupHelperOooO0o = OooO0o();
        OooO00o(layoutParams, basePopupHelperOooO0o);
        te0 te0VarOooO = te0.OooO(view.getContext(), this, basePopupHelperOooO0o);
        te0VarOooO.OooO0oO(view, (WindowManager.LayoutParams) layoutParams);
        this.OoooOoo = new WeakReference<>(te0VarOooO);
        this.OoooOoO.addView(te0VarOooO, OooO0o0(te0VarOooO, layoutParams));
    }

    @Override // android.view.WindowManager
    public Display getDefaultDisplay() {
        WindowManager windowManager = this.OoooOoO;
        if (windowManager == null) {
            return null;
        }
        return windowManager.getDefaultDisplay();
    }

    @Override // android.view.ViewManager
    public void removeView(View view) {
        Object[] objArr = new Object[1];
        StringBuilder sb = new StringBuilder();
        sb.append("WindowManager.removeView  >>>  ");
        sb.append(view == null ? null : view.getClass().getSimpleName());
        objArr[0] = sb.toString();
        PopupLog.OooO(Ooooo0o, objArr);
        if (this.OoooOoO == null || view == null) {
            return;
        }
        OooO0OO(view.getContext());
        if (!OooO0oo(view) || OooO0oO() == null) {
            this.OoooOoO.removeView(view);
            return;
        }
        this.OoooOoO.removeView(OooO0oO());
        this.OoooOoo.clear();
        this.OoooOoo = null;
    }

    @Override // android.view.WindowManager
    public void removeViewImmediate(View view) {
        Object[] objArr = new Object[1];
        StringBuilder sb = new StringBuilder();
        sb.append("WindowManager.removeViewImmediate  >>>  ");
        sb.append(view == null ? null : view.getClass().getSimpleName());
        objArr[0] = sb.toString();
        PopupLog.OooO(Ooooo0o, objArr);
        if (this.OoooOoO == null || view == null) {
            return;
        }
        OooO0OO(view.getContext());
        if (!OooO0oo(view) || OooO0oO() == null) {
            this.OoooOoO.removeViewImmediate(view);
            return;
        }
        te0 te0VarOooO0oO = OooO0oO();
        if (Build.VERSION.SDK_INT < 19 || te0VarOooO0oO.isAttachedToWindow()) {
            this.OoooOoO.removeViewImmediate(te0VarOooO0oO);
            this.OoooOoo.clear();
            this.OoooOoo = null;
        }
    }

    @Override // android.view.ViewManager
    public void updateViewLayout(View view, ViewGroup.LayoutParams layoutParams) {
        View view2;
        WindowManager windowManager;
        Object[] objArr = new Object[1];
        StringBuilder sb = new StringBuilder();
        sb.append("WindowManager.updateViewLayout  >>>  ");
        sb.append(view == null ? null : view.getClass().getSimpleName());
        objArr[0] = sb.toString();
        PopupLog.OooO(Ooooo0o, objArr);
        if (this.OoooOoO == null || view == null) {
            return;
        }
        OooO0OO(view.getContext());
        if ((!OooO0oo(view) || OooO0oO() == null) && view != OooO0oO()) {
            windowManager = this.OoooOoO;
            view2 = view;
        } else {
            te0 te0VarOooO0oO = OooO0oO();
            WindowManager windowManager2 = this.OoooOoO;
            layoutParams = OooO0o0(te0VarOooO0oO, layoutParams);
            windowManager = windowManager2;
            view2 = te0VarOooO0oO;
        }
        windowManager.updateViewLayout(view2, layoutParams);
    }
}

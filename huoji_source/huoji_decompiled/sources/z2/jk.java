package z2;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;

/* JADX INFO: loaded from: classes2.dex */
public final class jk {
    private final View OooO00o;
    private boolean OooO0O0 = false;

    @IdRes
    private int OooO0OO = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public jk(ik ikVar) {
        this.OooO00o = (View) ikVar;
    }

    private void OooO00o() {
        ViewParent parent = this.OooO00o.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.OooO00o);
        }
    }

    @IdRes
    public int OooO0O0() {
        return this.OooO0OO;
    }

    public boolean OooO0OO() {
        return this.OooO0O0;
    }

    public void OooO0Oo(Bundle bundle) {
        this.OooO0O0 = bundle.getBoolean(CallMraidJS.g, false);
        this.OooO0OO = bundle.getInt("expandedComponentIdHint", 0);
        if (this.OooO0O0) {
            OooO00o();
        }
    }

    public boolean OooO0o(boolean z) {
        if (this.OooO0O0 == z) {
            return false;
        }
        this.OooO0O0 = z;
        OooO00o();
        return true;
    }

    public Bundle OooO0o0() {
        Bundle bundle = new Bundle();
        bundle.putBoolean(CallMraidJS.g, this.OooO0O0);
        bundle.putInt("expandedComponentIdHint", this.OooO0OO);
        return bundle;
    }

    public void OooO0oO(@IdRes int i) {
        this.OooO0OO = i;
    }
}

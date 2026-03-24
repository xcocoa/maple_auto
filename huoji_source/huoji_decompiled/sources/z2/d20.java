package z2;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.os.Bundle;
import org.greenrobot.eventbus.util.ErrorDialogFragments;
import org.greenrobot.eventbus.util.ErrorDialogManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d20<T> {
    public final c20 OooO00o;

    @TargetApi(11)
    public static class OooO00o extends d20<Fragment> {
        public OooO00o(c20 c20Var) {
            super(c20Var);
        }

        @Override // z2.d20
        /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
        public Fragment OooO00o(g20 g20Var, Bundle bundle) {
            ErrorDialogFragments.Honeycomb honeycomb = new ErrorDialogFragments.Honeycomb();
            honeycomb.setArguments(bundle);
            return honeycomb;
        }
    }

    public static class OooO0O0 extends d20<androidx.fragment.app.Fragment> {
        public OooO0O0(c20 c20Var) {
            super(c20Var);
        }

        @Override // z2.d20
        /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
        public androidx.fragment.app.Fragment OooO00o(g20 g20Var, Bundle bundle) {
            ErrorDialogFragments.OooO00o oooO00o = new ErrorDialogFragments.OooO00o();
            oooO00o.setArguments(bundle);
            return oooO00o;
        }
    }

    public d20(c20 c20Var) {
        this.OooO00o = c20Var;
    }

    public abstract T OooO00o(g20 g20Var, Bundle bundle);

    public String OooO0O0(g20 g20Var, Bundle bundle) {
        return this.OooO00o.OooO00o.getString(this.OooO00o.OooO0Oo(g20Var.OooO00o));
    }

    public String OooO0OO(g20 g20Var, Bundle bundle) {
        c20 c20Var = this.OooO00o;
        return c20Var.OooO00o.getString(c20Var.OooO0O0);
    }

    public T OooO0Oo(g20 g20Var, boolean z, Bundle bundle) {
        int i;
        Class<?> cls;
        if (g20Var.OooO0Oo()) {
            return null;
        }
        Bundle bundle2 = bundle != null ? (Bundle) bundle.clone() : new Bundle();
        if (!bundle2.containsKey(ErrorDialogManager.OooO0Oo)) {
            bundle2.putString(ErrorDialogManager.OooO0Oo, OooO0OO(g20Var, bundle2));
        }
        if (!bundle2.containsKey(ErrorDialogManager.OooO0o0)) {
            bundle2.putString(ErrorDialogManager.OooO0o0, OooO0O0(g20Var, bundle2));
        }
        if (!bundle2.containsKey(ErrorDialogManager.OooO0o)) {
            bundle2.putBoolean(ErrorDialogManager.OooO0o, z);
        }
        if (!bundle2.containsKey(ErrorDialogManager.OooO0oo) && (cls = this.OooO00o.OooO) != null) {
            bundle2.putSerializable(ErrorDialogManager.OooO0oo, cls);
        }
        if (!bundle2.containsKey(ErrorDialogManager.OooO0oO) && (i = this.OooO00o.OooO0oo) != 0) {
            bundle2.putInt(ErrorDialogManager.OooO0oO, i);
        }
        return OooO00o(g20Var, bundle2);
    }
}

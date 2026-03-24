package z2;

import android.app.Activity;
import android.util.Log;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public final class se0 {
    private static final String OooO00o = "PopupCompatManager";
    private static final int OooO0O0 = 5894;
    private static final OooO0OO OooO0OO = new OooO0O0();

    public static abstract class OooO00o implements OooO0OO {
        @Override // z2.se0.OooO0OO
        public void OooO00o(qe0 qe0Var) {
        }

        @Override // z2.se0.OooO0OO
        public void OooO0O0(qe0 qe0Var, View view, int i, int i2, int i3) {
            if (OooO0Oo(qe0Var)) {
                return;
            }
            Activity activityOooOO0o = qe0Var.OooOO0o(view.getContext());
            if (activityOooOO0o == null) {
                Log.e(se0.OooO00o, "please make sure that context is instance of activity");
                return;
            }
            OooO0o(qe0Var, activityOooOO0o);
            OooO0oo(activityOooOO0o, qe0Var, view, i, i2, i3);
            OooO0o0(qe0Var, activityOooOO0o);
        }

        @Override // z2.se0.OooO0OO
        public void OooO0OO(qe0 qe0Var, View view, int i, int i2, int i3) {
            if (OooO0Oo(qe0Var)) {
                return;
            }
            Activity activityOooOO0o = qe0Var.OooOO0o(view.getContext());
            if (activityOooOO0o == null) {
                Log.e(se0.OooO00o, "please make sure that context is instance of activity");
                return;
            }
            OooO0o(qe0Var, activityOooOO0o);
            OooO0oO(activityOooOO0o, qe0Var, view, i, i2, i3);
            OooO0o0(qe0Var, activityOooOO0o);
        }

        public boolean OooO0Oo(qe0 qe0Var) {
            return qe0Var != null && qe0Var.OooO0OO();
        }

        public void OooO0o(qe0 qe0Var, Activity activity) {
            if (se0.OooO0OO(activity)) {
                qe0Var.OooO0oo();
            }
        }

        public void OooO0o0(qe0 qe0Var, Activity activity) {
            if (qe0Var.OooOO0()) {
                qe0Var.getContentView().setSystemUiVisibility(se0.OooO0O0);
                qe0Var.OooOO0O();
            }
        }

        public abstract void OooO0oO(Activity activity, qe0 qe0Var, View view, int i, int i2, int i3);

        public abstract void OooO0oo(Activity activity, qe0 qe0Var, View view, int i, int i2, int i3);
    }

    public static class OooO0O0 extends OooO00o {
        public int[] OooO00o = new int[2];

        @Override // z2.se0.OooO00o
        public void OooO0oO(Activity activity, qe0 qe0Var, View view, int i, int i2, int i3) {
            if (view != null) {
                view.getLocationInWindow(this.OooO00o);
                int[] iArr = this.OooO00o;
                int i4 = iArr[0];
                i2 = iArr[1] + view.getHeight();
                i = i4;
            }
            qe0Var.OooO0o0(view, 0, i, i2);
        }

        @Override // z2.se0.OooO00o
        public void OooO0oo(Activity activity, qe0 qe0Var, View view, int i, int i2, int i3) {
            qe0Var.OooO0o0(view, i, i2, i3);
        }
    }

    public interface OooO0OO {
        void OooO00o(qe0 qe0Var);

        void OooO0O0(qe0 qe0Var, View view, int i, int i2, int i3);

        void OooO0OO(qe0 qe0Var, View view, int i, int i2, int i3);
    }

    public static void OooO0O0(qe0 qe0Var) {
        OooO0OO oooO0OO = OooO0OO;
        if (oooO0OO != null) {
            oooO0OO.OooO00o(qe0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean OooO0OO(Activity activity) {
        if (activity == null) {
            return false;
        }
        try {
            View decorView = activity.getWindow().getDecorView();
            int i = activity.getWindow().getAttributes().flags;
            int windowSystemUiVisibility = decorView.getWindowSystemUiVisibility();
            if ((i & 1024) != 0) {
                return ((windowSystemUiVisibility & 2) == 0 && (windowSystemUiVisibility & 512) == 0) ? false : true;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void OooO0Oo(qe0 qe0Var, View view, int i, int i2, int i3) {
        OooO0OO oooO0OO = OooO0OO;
        if (oooO0OO != null) {
            oooO0OO.OooO0OO(qe0Var, view, i, i2, i3);
        }
    }

    public static void OooO0o0(qe0 qe0Var, View view, int i, int i2, int i3) {
        OooO0OO oooO0OO = OooO0OO;
        if (oooO0OO != null) {
            oooO0OO.OooO0O0(qe0Var, view, i, i2, i3);
        }
    }
}

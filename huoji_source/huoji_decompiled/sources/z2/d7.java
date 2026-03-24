package z2;

import android.content.Context;
import android.os.Handler;
import android.os.Vibrator;
import com.cyjh.elfin.base.AppContext;
import z2.x6;

/* JADX INFO: loaded from: classes.dex */
public class d7 {
    private static d7 OooO0O0;
    public Vibrator OooO00o;

    public class OooO00o implements Runnable {
        public final /* synthetic */ Vibrator OoooOoO;
        public final /* synthetic */ x6 OoooOoo;

        public OooO00o(Vibrator vibrator, x6 x6Var) {
            this.OoooOoO = vibrator;
            this.OoooOoo = x6Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.OoooOoO.cancel();
            this.OoooOoo.OooO0O0();
        }
    }

    public static d7 OooO00o() {
        if (OooO0O0 == null) {
            synchronized (d7.class) {
                if (OooO0O0 == null) {
                    OooO0O0 = new d7();
                }
            }
        }
        return OooO0O0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooO0Oo(Vibrator vibrator, x6 x6Var) {
        if (!x4.OooO0O0().OooO00o(f6.OooOOO0, Boolean.TRUE) || vibrator == null) {
            return;
        }
        i7.OooO().Oooo0o0();
        x6Var.OooO0OO();
        if (i7.OooO().OooOOO()) {
            vibrator.vibrate(new long[]{500, 200, 500, 200}, -1);
            new Handler().postDelayed(new OooO00o(vibrator, x6Var), 1500L);
        }
    }

    public void OooO0O0(Context context) {
        final Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        final x6 x6Var = new x6(AppContext.OooO00o());
        x6Var.OooO00o(new x6.OooO00o() { // from class: z2.y6
            @Override // z2.x6.OooO00o
            public final void onShake() {
                this.OooO00o.OooO0Oo(vibrator, x6Var);
            }
        });
    }

    public void OooO0o0() {
        Vibrator vibrator = (Vibrator) AppContext.OooO00o().getSystemService("vibrator");
        if (x4.OooO0O0().OooO00o(f6.OooOOOO, Boolean.TRUE)) {
            vibrator.vibrate(1000L);
        }
    }
}

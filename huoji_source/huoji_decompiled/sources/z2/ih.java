package z2;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class ih {
    private static volatile ih OooO0O0;
    private Context OooO00o;

    public static ih OooO0Oo() {
        if (OooO0O0 == null) {
            synchronized (ih.class) {
                if (OooO0O0 == null) {
                    OooO0O0 = new ih();
                }
            }
        }
        return OooO0O0;
    }

    public void OooO() {
        bi.OooOO0o().OooOOOO();
    }

    public void OooO00o(Activity activity, ViewGroup viewGroup, di diVar) {
        bi.OooOO0o().OooOOO(activity, viewGroup, diVar);
    }

    public void OooO0O0(Activity activity, ViewGroup viewGroup, xh xhVar) {
        bi.OooOO0o().OooOO0O(activity, viewGroup, xhVar);
    }

    public Context OooO0OO() {
        return this.OooO00o;
    }

    public void OooO0o() {
        bi.OooOO0o().OooOOoo();
    }

    public void OooO0o0(Context context) {
        this.OooO00o = context;
        bi.OooOO0o().OooOOO0(context);
    }

    public void OooO0oO() {
    }

    public void OooO0oo(uh uhVar) {
    }

    public void OooOO0() {
        bi.OooOO0o().OooOOOo();
    }

    public void OooOO0O() {
        bi.OooOO0o().OooOOo0();
    }
}

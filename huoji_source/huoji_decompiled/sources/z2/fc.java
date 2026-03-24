package z2;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class fc {
    private static String OooO0O0 = "fc";
    private static fc OooO0OO;
    private int OooO00o;

    private fc() {
    }

    public static fc OooO00o() {
        if (OooO0OO == null) {
            synchronized (fc.class) {
                if (OooO0OO == null) {
                    OooO0OO = new fc();
                }
            }
        }
        return OooO0OO;
    }

    public fc OooO0O0(int i) {
        String str = "init --> redFingerSwitch=" + i;
        this.OooO00o = i;
        return this;
    }

    public boolean OooO0OO(Context context) {
        return ae.OooOooo(context, k3.o00ooo) && this.OooO00o == 1;
    }
}

package z2;

import android.content.Context;
import com.cyjh.elfin.base.AppContext;

/* JADX INFO: loaded from: classes.dex */
public class s8 {
    private static s8 OooO00o;

    private s8() {
    }

    public static synchronized s8 OooO00o() {
        if (OooO00o == null) {
            OooO00o = new s8();
        }
        return OooO00o;
    }

    public void OooO0O0(Context context, String str) {
        if (g4.OooO00o) {
            g4.OooO0o(g4.OooO0OO(context), str + "---currentPid1:" + AppContext.o00Ooo, null, true);
        }
    }
}

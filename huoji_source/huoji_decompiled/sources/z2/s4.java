package z2;

import android.content.Context;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class s4 {
    private static String OooO00o;
    private static Toast OooO0O0;
    private static long OooO0OO;
    private static long OooO0Oo;

    public static void OooO00o(Context context, String str) {
        if (OooO0O0 == null) {
            Toast toastMakeText = Toast.makeText(context, str, 0);
            OooO0O0 = toastMakeText;
            toastMakeText.show();
            OooO0OO = System.currentTimeMillis();
        } else {
            OooO0Oo = System.currentTimeMillis();
            if (!str.equals(OooO00o)) {
                OooO00o = str;
                OooO0O0.setText(str);
            } else if (OooO0Oo - OooO0OO > 0) {
            }
            OooO0O0.show();
        }
        OooO0OO = OooO0Oo;
    }
}

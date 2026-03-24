package z2;

import android.content.Context;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class c5 {
    public static void OooO00o(Context context, int i, int i2, int i3) {
        Toast toastMakeText = Toast.makeText(context, i, 0);
        toastMakeText.setGravity(17, i2, i3);
        toastMakeText.show();
    }

    public static void OooO0O0(Context context, int i) {
        Toast.makeText(context, i, 1).show();
    }

    public static void OooO0OO(Context context, String str) {
        Toast.makeText(context, str, 1).show();
    }

    public static void OooO0Oo(Context context, int i) {
        Toast.makeText(context, i, 0).show();
    }

    public static void OooO0o0(Context context, String str) {
        Toast.makeText(context, str, 0).show();
    }
}

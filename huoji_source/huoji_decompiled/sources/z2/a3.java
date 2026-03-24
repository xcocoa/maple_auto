package z2;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class a3 {
    public static final String OooO00o = "method_contain_key";
    public static String OooO0O0 = null;
    public static Uri OooO0OO = null;
    public static final String OooO0Oo = "method_query_value";
    public static final String OooO0o = "method_query_pid";
    public static final String OooO0o0 = "method_edit";
    public static final String OooO0oO = "key_result";

    public static SharedPreferences OooO00o(@NonNull Context context, String str) {
        return b3.OooO0o(context, str);
    }

    public static void OooO0O0(Context context) {
        OooO0O0 = context.getPackageName() + ".preference";
        OooO0OO = Uri.parse("content://" + OooO0O0);
    }
}

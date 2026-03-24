package z2;

import android.content.SharedPreferences;
import android.text.TextUtils;
import org.litepal.LitePalApplication;
import z2.qc0;

/* JADX INFO: loaded from: classes2.dex */
public class tc0 {
    private static final String OooO00o = "litepal_version";
    private static final String OooO0O0 = "litepal_prefs";

    public static int OooO00o(String str) {
        String str2;
        SharedPreferences sharedPreferences = LitePalApplication.OooO00o().getSharedPreferences(OooO0O0, 0);
        if (TextUtils.isEmpty(str)) {
            str2 = OooO00o;
        } else {
            if (str.endsWith(qc0.OooO00o.OooO00o)) {
                str = str.replace(qc0.OooO00o.OooO00o, "");
            }
            str2 = "litepal_version_" + str;
        }
        return sharedPreferences.getInt(str2, 0);
    }

    public static void OooO0O0(String str) {
        String str2;
        SharedPreferences.Editor editorEdit = LitePalApplication.OooO00o().getSharedPreferences(OooO0O0, 0).edit();
        if (TextUtils.isEmpty(str)) {
            str2 = OooO00o;
        } else {
            if (str.endsWith(qc0.OooO00o.OooO00o)) {
                str = str.replace(qc0.OooO00o.OooO00o, "");
            }
            str2 = "litepal_version_" + str;
        }
        editorEdit.remove(str2);
        editorEdit.apply();
    }

    public static void OooO0OO(String str, int i) {
        String str2;
        SharedPreferences.Editor editorEdit = LitePalApplication.OooO00o().getSharedPreferences(OooO0O0, 0).edit();
        if (TextUtils.isEmpty(str)) {
            str2 = OooO00o;
        } else {
            if (str.endsWith(qc0.OooO00o.OooO00o)) {
                str = str.replace(qc0.OooO00o.OooO00o, "");
            }
            str2 = "litepal_version_" + str;
        }
        editorEdit.putInt(str2, i);
        editorEdit.apply();
    }
}

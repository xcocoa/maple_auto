package z2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class o0000OO0 {
    private static final String OooO00o = "volley";

    public static o00Ooo OooO00o(Context context) {
        return OooO0O0(context, null);
    }

    public static o00Ooo OooO0O0(Context context, o00000O0 o00000o0) {
        String str;
        File file = new File(context.getCacheDir(), OooO00o);
        try {
            String packageName = context.getPackageName();
            str = packageName + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            str = "volley/0";
        }
        if (o00000o0 == null) {
            o00000o0 = Build.VERSION.SDK_INT >= 9 ? new o00000O() : new o000000O(AndroidHttpClient.newInstance(str));
        }
        o00Ooo o00ooo = new o00Ooo(new o000000(file), new oo0o0Oo(o00000o0));
        o00ooo.OooO();
        return o00ooo;
    }
}

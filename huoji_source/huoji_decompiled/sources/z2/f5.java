package z2;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class f5 {
    public static boolean OooO00o(Context context) {
        return Build.VERSION.SDK_INT >= 29 && context.getApplicationInfo().targetSdkVersion >= 29;
    }
}

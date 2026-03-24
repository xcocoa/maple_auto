package z2;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
public final class d2 {
    private static final String OooO00o = "AppVersionSignature";
    private static final ConcurrentMap<String, o0O0O0Oo> OooO0O0 = new ConcurrentHashMap();

    private d2() {
    }

    @Nullable
    private static PackageInfo OooO00o(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(OooO00o, "Cannot resolve info for" + context.getPackageName(), e);
            return null;
        }
    }

    @NonNull
    private static String OooO0O0(@Nullable PackageInfo packageInfo) {
        return packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString();
    }

    @NonNull
    public static o0O0O0Oo OooO0OO(@NonNull Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, o0O0O0Oo> concurrentMap = OooO0O0;
        o0O0O0Oo o0o0o0oo = concurrentMap.get(packageName);
        if (o0o0o0oo != null) {
            return o0o0o0oo;
        }
        o0O0O0Oo o0o0o0ooOooO0Oo = OooO0Oo(context);
        o0O0O0Oo o0o0o0ooPutIfAbsent = concurrentMap.putIfAbsent(packageName, o0o0o0ooOooO0Oo);
        return o0o0o0ooPutIfAbsent == null ? o0o0o0ooOooO0Oo : o0o0o0ooPutIfAbsent;
    }

    @NonNull
    private static o0O0O0Oo OooO0Oo(@NonNull Context context) {
        return new g2(OooO0O0(OooO00o(context)));
    }

    @VisibleForTesting
    public static void OooO0o0() {
        OooO0O0.clear();
    }
}

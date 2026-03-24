package z2;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public final class n2 {
    private static final double OooO00o;

    static {
        OooO00o = Build.VERSION.SDK_INT >= 17 ? 1.0d / Math.pow(10.0d, 6.0d) : 1.0d;
    }

    private n2() {
    }

    public static double OooO00o(long j) {
        return (OooO0O0() - j) * OooO00o;
    }

    @TargetApi(17)
    public static long OooO0O0() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}

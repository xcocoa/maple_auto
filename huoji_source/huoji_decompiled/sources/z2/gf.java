package z2;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public final class gf {
    private static boolean OooO() {
        int i = Build.VERSION.SDK_INT;
        if (i <= 33) {
            return i == 33 && OooO00o() > 0;
        }
        return true;
    }

    public static int OooO00o() {
        if (Build.VERSION.SDK_INT < 23) {
            return 0;
        }
        try {
            return Build.VERSION.PREVIEW_SDK_INT;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static boolean OooO0O0() {
        int i = Build.VERSION.SDK_INT;
        if (i <= 28) {
            return i == 28 && OooO00o() > 0;
        }
        return true;
    }

    private static boolean OooO0OO() {
        int i = Build.VERSION.SDK_INT;
        if (i <= 25) {
            return i == 25 && OooO00o() > 0;
        }
        return true;
    }

    private static boolean OooO0Oo() {
        int i = Build.VERSION.SDK_INT;
        if (i <= 27) {
            return i == 27 && OooO00o() > 0;
        }
        return true;
    }

    private static boolean OooO0o() {
        int i = Build.VERSION.SDK_INT;
        if (i <= 30) {
            return i == 30 && OooO00o() > 0;
        }
        return true;
    }

    private static boolean OooO0o0() {
        int i = Build.VERSION.SDK_INT;
        if (i <= 29) {
            return i == 29 && OooO00o() > 0;
        }
        return true;
    }

    private static boolean OooO0oO() {
        int i = Build.VERSION.SDK_INT;
        if (i <= 31) {
            return i == 31 && OooO00o() > 0;
        }
        return true;
    }

    private static boolean OooO0oo() {
        int i = Build.VERSION.SDK_INT;
        if (i <= 32) {
            return i == 32 && OooO00o() > 0;
        }
        return true;
    }
}

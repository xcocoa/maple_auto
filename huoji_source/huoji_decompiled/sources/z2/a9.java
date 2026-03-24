package z2;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class a9 {
    private static boolean OooO00o = true;

    private a9() {
    }

    public static int OooO(String str, String str2, Throwable th) {
        if (OooO00o) {
            return Log.v(str, str2, th);
        }
        return 0;
    }

    public static int OooO00o(String str, String str2) {
        if (OooO00o) {
            return Log.d(str, str2);
        }
        return 0;
    }

    public static int OooO0O0(String str, String str2, Throwable th) {
        if (OooO00o) {
            return Log.d(str, str2, th);
        }
        return 0;
    }

    public static int OooO0OO(String str, String str2) {
        if (OooO00o) {
            return Log.e(str, str2);
        }
        return 0;
    }

    public static int OooO0Oo(String str, String str2, Throwable th) {
        if (OooO00o) {
            return Log.e(str, str2, th);
        }
        return 0;
    }

    public static int OooO0o(String str, String str2, Throwable th) {
        if (OooO00o) {
            return Log.i(str, str2, th);
        }
        return 0;
    }

    public static int OooO0o0(String str, String str2) {
        if (OooO00o) {
            return Log.i(str, str2);
        }
        return 0;
    }

    public static void OooO0oO(boolean z) {
        OooO00o = z;
    }

    public static int OooO0oo(String str, String str2) {
        if (OooO00o) {
            return Log.v(str, str2);
        }
        return 0;
    }

    public static int OooOO0(String str, String str2) {
        if (OooO00o) {
            return Log.w(str, str2);
        }
        return 0;
    }

    public static int OooOO0O(String str, String str2, Throwable th) {
        if (OooO00o) {
            return Log.w(str, str2, th);
        }
        return 0;
    }
}

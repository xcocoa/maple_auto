package com.anythink.core.common.o;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static boolean a;
    public static boolean b;
    private static boolean c;
    private static boolean d;
    private static boolean e;
    private static boolean f;
    private static boolean g;
    private static boolean h;

    private f() {
    }

    private static void a(String str, String str2) {
        if (c) {
            Log.v(str, str2);
        }
    }

    private static void a(String str, String str2, Throwable th) {
        if (c) {
            Log.v(str, str2, th);
        }
    }

    private static void a(String str, String str2, Object... objArr) {
        if (d) {
            try {
                Log.d(str, String.format(str2, objArr));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void a(String str, Throwable th) {
        if (f) {
            Log.w(str, th);
        }
    }

    private static void b(String str, String str2) {
        if (d) {
            Log.d(str, str2);
        }
    }

    private static void b(String str, String str2, Throwable th) {
        if (d) {
            Log.d(str, str2, th);
        }
    }

    private static void b(String str, String str2, Object... objArr) {
        if (g) {
            try {
                Log.e(str, String.format(str2, objArr));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void c(String str, String str2) {
        if (e) {
            Log.i(str, str2);
        }
    }

    private static void c(String str, String str2, Throwable th) {
        if (e) {
            Log.i(str, str2, th);
        }
    }

    private static void d(String str, String str2) {
        if (f) {
            Log.w(str, str2);
        }
    }

    private static void d(String str, String str2, Throwable th) {
        if (f) {
            Log.w(str, str2, th);
        }
    }

    private static void e(String str, String str2) {
        if (g) {
            Log.e(str, str2);
        }
    }

    private static void e(String str, String str2, Throwable th) {
        if (g) {
            Log.e(str, str2, th);
        }
        boolean z = h;
    }

    private static void f(String str, String str2) {
        if (e) {
            int length = 2001 - str.length();
            while (str2.length() > length) {
                Log.d(str, str2.substring(0, length));
                str2 = str2.substring(length);
            }
            Log.d(str, str2);
        }
    }
}

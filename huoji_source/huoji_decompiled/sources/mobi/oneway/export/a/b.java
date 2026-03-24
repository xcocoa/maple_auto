package mobi.oneway.export.a;

import android.content.Context;
import mobi.oneway.export.g.m;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static Context a;
    private static String b;
    private static boolean c;
    private static String d;
    private static String e;

    public static Context a() {
        if (a == null) {
            m.d("OnewaySdk.init method must invoke first and paramter context must not be null");
        }
        return a;
    }

    public static void a(Context context) {
        a = context;
    }

    public static void a(String str) {
        b = str;
    }

    public static void a(boolean z) {
        c = z;
    }

    public static String b() {
        return b;
    }

    public static void b(String str) {
        d = str;
    }

    public static void c(String str) {
        e = str;
    }

    public static boolean c() {
        return c;
    }

    public static String d() {
        return d;
    }

    public static String e() {
        return e;
    }
}

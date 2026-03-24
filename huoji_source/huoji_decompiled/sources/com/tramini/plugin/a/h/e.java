package com.tramini.plugin.a.h;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    private static String a = "";
    private static String b = "";
    private static String c = "";
    private static String d = "";
    private static int e;
    private static String f;

    private e() {
    }

    public static String a() {
        if (com.tramini.plugin.a.b.c.a().a("os_vc")) {
            return "";
        }
        if (TextUtils.isEmpty(b)) {
            b = String.valueOf(Build.VERSION.SDK_INT);
        }
        return b;
    }

    public static String a(Context context) {
        if (com.tramini.plugin.a.b.c.a().a("app_vc")) {
            return "";
        }
        if (e != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(e);
            return sb.toString();
        }
        try {
            e = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e);
            return sb2.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String b() {
        if (com.tramini.plugin.a.b.c.a().a("os_vn")) {
            return "";
        }
        if (TextUtils.isEmpty(a)) {
            a = Build.VERSION.RELEASE;
        }
        return a;
    }

    public static String b(Context context) {
        if (com.tramini.plugin.a.b.c.a().a("app_vn")) {
            return "";
        }
        try {
            if (!TextUtils.isEmpty(d)) {
                return d;
            }
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            d = str;
            return str;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private static int c() {
        return Build.VERSION.SDK_INT;
    }

    public static String c(Context context) {
        if (com.tramini.plugin.a.b.c.a().a("package_name")) {
            return "";
        }
        try {
            if (!TextUtils.isEmpty(c)) {
                return c;
            }
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            c = str;
            return str;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}

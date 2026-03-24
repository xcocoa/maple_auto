package com.anythink.expressad.foundation.h;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static final String a = "layout";
    public static final String b = "id";
    public static final String c = "drawable";
    public static final String d = "color";
    public static final String e = "style";
    public static final String f = "anim";
    public static final String g = "string";
    public static final int h = -1;
    private static final String i = "ResourceUtil";

    public static int a(Context context, String str, String str2) {
        if (context == null) {
            return -1;
        }
        try {
            String strA = com.anythink.expressad.foundation.b.a.c().a();
            int identifier = !TextUtils.isEmpty(strA) ? context.getResources().getIdentifier(str, str2, strA) : -1;
            if (identifier > 0) {
                StringBuilder sb = new StringBuilder("getRes (use bundle name), ");
                sb.append(str);
                sb.append(", resId: ");
                sb.append(identifier);
                return identifier;
            }
            String packageName = "";
            try {
                packageName = com.anythink.expressad.foundation.b.a.c().b();
            } catch (Exception unused) {
            }
            if (w.a(packageName)) {
                packageName = context.getPackageName();
            }
            if (w.a(packageName)) {
                return -1;
            }
            int identifier2 = context.getResources().getIdentifier(str, str2, packageName);
            StringBuilder sb2 = new StringBuilder("getRes (use default package name), ");
            sb2.append(str);
            sb2.append(", resId: ");
            sb2.append(identifier2);
            return identifier2;
        } catch (Exception unused2) {
            return -1;
        }
    }

    public static Resources a(Context context) {
        if (context != null) {
            try {
                return context.getResources();
            } catch (Exception e2) {
                new StringBuilder("Resource error:").append(e2.getMessage());
            }
        }
        return null;
    }
}

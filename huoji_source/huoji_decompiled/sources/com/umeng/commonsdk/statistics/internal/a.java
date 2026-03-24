package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.utils.UMUtils;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static Context a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.internal.a$a, reason: collision with other inner class name */
    public static class C0237a {
        private static final a a = new a();

        private C0237a() {
        }
    }

    private a() {
        this.b = null;
        this.c = null;
    }

    public static a a(Context context) {
        if (a == null && context != null) {
            a = context.getApplicationContext();
        }
        return C0237a.a;
    }

    private void c(String str) {
        try {
            this.b = str.replaceAll("&=", o4.OooO00o.OooO0Oo).replaceAll("&&", o4.OooO00o.OooO0Oo).replaceAll("==", "/") + "/Android/" + Build.DISPLAY + "/" + Build.MODEL + "/" + Build.VERSION.RELEASE + o4.OooO00o.OooO0Oo + HelperUtils.getUmengMD5(UMUtils.getAppkey(a));
        } catch (Throwable th) {
            e.a(a, th);
        }
    }

    private void d(String str) {
        try {
            String str2 = str.split("&&")[0];
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            String[] strArrSplit = str2.split("&=");
            StringBuilder sb = new StringBuilder();
            sb.append(v.ar);
            for (String str3 : strArrSplit) {
                if (!TextUtils.isEmpty(str3)) {
                    String strSubstring = str3.substring(0, 2);
                    if (strSubstring.endsWith("=")) {
                        strSubstring = strSubstring.replace("=", "");
                    }
                    sb.append(strSubstring);
                }
            }
            this.c = sb.toString();
        } catch (Throwable th) {
            e.a(a, th);
        }
    }

    public String a() {
        return this.c;
    }

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("a");
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        String strSubstring = str.substring(0, str.indexOf(95));
        d(strSubstring);
        c(strSubstring);
    }
}

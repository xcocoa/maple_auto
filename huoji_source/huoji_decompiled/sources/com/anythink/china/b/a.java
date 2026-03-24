package com.anythink.china.b;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.s;
import com.anythink.core.common.o.e;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static String a = "";
    private static String b = "";
    private static String c = "";
    private static String d = "";
    private static String e = "";
    private static String f = "";
    private static String g = "";
    private static String h = "";
    private static String i = "";
    private static String j;
    private static boolean k;
    private static String l;
    private static List<s> m;

    public static String a() {
        return n.a().c("mac") ? "" : a;
    }

    public static void a(final Context context) {
        List<s> list;
        s sVar;
        int i2 = Build.VERSION.SDK_INT;
        String strA = "";
        String strB = com.anythink.core.common.o.s.b(context, h.p, "oaid", "");
        c = strB;
        if (TextUtils.isEmpty(strB) && !n.a().c("oaid") && TextUtils.isEmpty(c)) {
            com.anythink.china.a.b.a(context, new com.anythink.china.a.a() { // from class: com.anythink.china.b.a.1
                @Override // com.anythink.china.a.a
                public final void a() {
                }

                @Override // com.anythink.china.a.a
                public final void a(String str, boolean z) {
                    if (a.a(str)) {
                        return;
                    }
                    String unused = a.c = str;
                    com.anythink.core.common.o.s.a(context, h.p, "oaid", str);
                }
            });
        }
        if (!n.a().c("mac")) {
            strA = i2 < 23 ? d.a(context) : d.a();
        }
        a = strA;
        b = d(context);
        d = e.r();
        String[] strArrA = b.a(context);
        if (strArrA != null && strArrA.length == 2) {
            e = strArrA[0];
            f = strArrA[1];
        }
        g = e.q();
        h = b.a();
        i = b.b();
        if (m == null) {
            long jLongValue = com.anythink.core.common.o.s.a(context, h.p, "det_time", (Long) 0L).longValue();
            ArrayList arrayList = new ArrayList();
            m = arrayList;
            arrayList.add(new s(context, jLongValue, "vivo_ver", "com.bbk.appstore"));
            if (i2 >= 29) {
                list = m;
                sVar = new s(context, jLongValue, "oppo_ver", "com.heytap.market");
            } else {
                list = m;
                sVar = new s(context, jLongValue, "oppo_ver", "com.oppo.market");
            }
            list.add(sVar);
            m.add(new s(context, jLongValue, "xiaomi_ver", "com.xiaomi.market"));
            com.anythink.core.common.o.s.a(context, h.p, "det_time", System.currentTimeMillis());
        }
    }

    public static /* synthetic */ boolean a(String str) {
        return Pattern.matches("^[0-]+$", str);
    }

    public static String b() {
        return n.a().c("oaid") ? "" : c;
    }

    public static String b(Context context) {
        d(context);
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        String strC = c(context);
        return !TextUtils.isEmpty(strC) ? strC : "";
    }

    public static String c() {
        return n.a().c("wifi_name") ? "" : b.c(n.a().f());
    }

    public static String c(final Context context) {
        if (n.a().c("oaid")) {
            return "";
        }
        if (!TextUtils.isEmpty(c)) {
            return c;
        }
        String strB = com.anythink.core.common.o.s.b(context, h.p, "oaid", "");
        c = strB;
        if (!TextUtils.isEmpty(strB)) {
            return c;
        }
        final Object obj = new Object();
        final boolean[] zArr = {false};
        com.anythink.china.a.b.a(context, new com.anythink.china.a.a() { // from class: com.anythink.china.b.a.2
            @Override // com.anythink.china.a.a
            public final void a() {
                zArr[0] = true;
                try {
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                } catch (Throwable unused) {
                }
            }

            @Override // com.anythink.china.a.a
            public final void a(String str, boolean z) {
                if (!a.a(str)) {
                    String unused = a.c = str;
                    com.anythink.core.common.o.s.a(context, h.p, "oaid", str);
                }
                try {
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                } catch (Throwable unused2) {
                }
                zArr[0] = true;
            }
        });
        if (!zArr[0]) {
            try {
                synchronized (obj) {
                    obj.wait(1500L);
                }
            } catch (Exception unused) {
            }
        }
        String str = c;
        return str != null ? str : "";
    }

    private static boolean c(String str) {
        return Pattern.matches("^[0-]+$", str);
    }

    public static String d() {
        if (n.a().c("imsi")) {
            return "";
        }
        if (l == null) {
            l = b.b(n.a().f());
        }
        return l;
    }

    public static synchronized String d(Context context) {
        if (n.a().c("imei")) {
            return "";
        }
        if (!k && TextUtils.isEmpty(b) && com.anythink.china.common.d.a(context, com.anythink.china.common.d.a)) {
            b = c.a(context);
            k = true;
        }
        return b;
    }

    public static String e() {
        return d;
    }

    public static synchronized String e(Context context) {
        String str = j;
        if (str != null) {
            return str;
        }
        try {
            j = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
        }
        if (j == null) {
            j = "";
        }
        return j;
    }

    public static String f() {
        return e.u(n.a().f());
    }

    public static String g() {
        return e;
    }

    public static String h() {
        return f;
    }

    public static String i() {
        return g;
    }

    public static String j() {
        return h;
    }

    public static String k() {
        return i;
    }

    public static List<s> l() {
        return m;
    }
}

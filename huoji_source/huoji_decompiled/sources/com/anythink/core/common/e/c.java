package com.anythink.core.common.e;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATCountryCode;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.h.h;
import com.anythink.core.common.h.k;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.d;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.s;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final String a = "DomainManager";
    private static final String b = "anythink_sdk";
    private static final String c = "cdn_request_time_key";
    private static final String d = "cur_using_domain_key";
    private static final String e = "ru";
    private static final String f = "api.";
    private static final int g = 24;
    private static final String h = "api.toponadss.com";
    private static final String i = d.b("YXBpLmdldGZhc3Rpbi5jb20=");
    private static volatile c r;
    private volatile boolean l;
    private volatile boolean m;
    private volatile long n;
    private volatile String q;
    private final Object j = new Object();
    private final List<String> k = Collections.synchronizedList(new ArrayList());
    private volatile String o = "";
    private volatile String p = "";

    private c() {
        String[] strArr;
        this.q = "";
        if (ATSDK.isCnSDK() || (strArr = b.a) == null || strArr.length <= 0) {
            return;
        }
        List listAsList = Arrays.asList(strArr);
        String country = Locale.getDefault().getCountry();
        if (listAsList.contains(country)) {
            this.q = country;
        }
    }

    public static c a() {
        if (r == null) {
            synchronized (c.class) {
                r = new c();
            }
        }
        return r;
    }

    public static /* synthetic */ void a(c cVar, Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        cVar.n = jCurrentTimeMillis;
        s.a(context, "anythink_sdk", c, jCurrentTimeMillis);
    }

    private void a(String str, String str2) {
        e.c(this.p, str, str2, String.valueOf(c(n.a().f())));
    }

    private void a(List<String> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.p = list.get(0);
        c(this.p);
    }

    private void a(List<String> list, String str, String str2) {
        if (list == null || list.size() == 0) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            c(list, str);
        }
        String str3 = list.get(0);
        if (str3.equals(str)) {
            return;
        }
        c(str3);
        e();
        a(str3, str2);
        s.a(n.a().f(), "anythink_sdk", d, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<String> list, String str, String str2, String str3) {
        boolean zA = a(list, str2);
        d("handleSwitchDomain() >>> isCanSwitch = ".concat(String.valueOf(zA)));
        if (zA) {
            if (TextUtils.isEmpty(str)) {
                a(list, str2, str3);
                return;
            }
            if (str.equals(str2)) {
                c(list, str2);
            } else {
                b(list, str);
            }
            a(list, str2, str3);
        }
    }

    private static boolean a(List<String> list, String str) {
        if (TextUtils.isEmpty(str) || list.size() <= 0) {
            return false;
        }
        String str2 = list.get(0);
        d("isCanSwitchDomain() >>> firstDomain = " + str2 + " failedDomain = " + str);
        return str.equals(str2);
    }

    private void b(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.n = jCurrentTimeMillis;
        s.a(context, "anythink_sdk", c, jCurrentTimeMillis);
    }

    private static void b(List<String> list, String str) {
        if (TextUtils.isEmpty(str) || list == null) {
            return;
        }
        int iIndexOf = list.indexOf(str);
        if (iIndexOf > 0) {
            list.remove(str);
            list.add(0, str);
        } else if (iIndexOf < 0) {
            list.add(0, str);
        }
    }

    public static /* synthetic */ boolean b(c cVar) {
        cVar.m = false;
        return false;
    }

    private Long c(Context context) {
        long jLongValue = this.n;
        if (jLongValue == 0) {
            jLongValue = s.a(context, "anythink_sdk", c, (Long) 0L).longValue();
        }
        return Long.valueOf(jLongValue);
    }

    private void c(String str) {
        this.o = str;
        d("setCurrentDomain() >>> currentDomain = ".concat(String.valueOf(str)));
    }

    private static void c(List<String> list, String str) {
        if (TextUtils.isEmpty(str) || list == null) {
            return;
        }
        int iIndexOf = list.indexOf(str);
        if (iIndexOf >= 0 && iIndexOf < list.size() - 1) {
            list.remove(str);
            list.add(str);
        } else if (iIndexOf < 0) {
            list.add(str);
        }
    }

    private static void d(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" threadId = ");
        sb.append(Thread.currentThread().getId());
    }

    private static boolean d() {
        String language;
        try {
            language = Locale.getDefault().getLanguage();
        } catch (Exception unused) {
            language = "";
        }
        return language.equalsIgnoreCase("ru");
    }

    private static void e() {
        com.anythink.core.d.b.a(n.a().f()).b();
    }

    private static void f() {
    }

    public final String a(String str) {
        if (ATSDK.isCnSDK()) {
            return str;
        }
        try {
            String str2 = this.o;
            return TextUtils.isEmpty(str2) ? str : str.replace(new URL(str).getHost(), str2);
        } catch (Exception e2) {
            d("replaceUrlDomain() >> exception:" + e2.getMessage());
            return str;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Context context) {
        if (ATSDK.isCnSDK()) {
            return;
        }
        if (context instanceof Activity) {
            context = context.getApplicationContext();
        }
        if (this.l) {
            return;
        }
        this.l = true;
        List<String> list = this.k;
        if (!d()) {
            list.add(a.e);
        }
        list.add(h);
        String str = "";
        String strB = s.b(context, "anythink_sdk", d, "");
        if (b()) {
            list.clear();
            list.add(a.a);
            list.add(i);
            if (!TextUtils.equals(strB, a.e) && !TextUtils.equals(strB, h)) {
                str = strB;
            }
        }
        d("initDomain() >>> curUseDomain = ".concat(String.valueOf(str)));
        if (TextUtils.isEmpty(str)) {
            a(list);
        } else {
            b(list, str);
            a(list);
        }
    }

    public final void b(final String str) {
        if (ATSDK.isCnSDK()) {
            return;
        }
        d("tryGetDomainFromCdn() >>> start isTrying = " + this.m + " url = " + str);
        final Context contextF = n.a().f();
        if (TextUtils.isEmpty(str) || this.m || !i.a(contextF)) {
            return;
        }
        final String host = "";
        try {
            host = new URL(str).getHost();
        } catch (Exception e2) {
            d("tryGetDomainFromCdn() >>> " + e2.getMessage());
        }
        synchronized (this.j) {
            if (this.m) {
                return;
            }
            this.m = true;
            this.n = c(contextF).longValue();
            if (this.n > 0) {
                long jCurrentTimeMillis = (System.currentTimeMillis() - this.n) / 3600000;
                if (jCurrentTimeMillis < 24) {
                    d("tryGetDomainFromCdn() >>> intervalTime = ".concat(String.valueOf(jCurrentTimeMillis)));
                    a(this.k, "", host, str);
                    this.m = false;
                    return;
                }
            }
            new h().a(0, new k() { // from class: com.anythink.core.common.e.c.1
                @Override // com.anythink.core.common.h.k
                public final void onLoadCanceled(int i2) {
                    c.b(c.this);
                }

                @Override // com.anythink.core.common.h.k
                public final void onLoadError(int i2, String str2, AdError adError) {
                    c cVar = c.this;
                    cVar.a(cVar.k, "", host, str);
                    c.b(c.this);
                }

                @Override // com.anythink.core.common.h.k
                public final void onLoadFinish(int i2, Object obj) {
                    c.a(c.this, contextF);
                    if (obj != null) {
                        String str2 = c.f + obj.toString();
                        c cVar = c.this;
                        cVar.a(cVar.k, str2, host, str);
                    } else {
                        c cVar2 = c.this;
                        cVar2.a(cVar2.k, "", host, str);
                    }
                    c.b(c.this);
                }

                @Override // com.anythink.core.common.h.k
                public final void onLoadStart(int i2) {
                }
            });
        }
    }

    public final boolean b() {
        if (TextUtils.isEmpty(this.q)) {
            return false;
        }
        return ATCountryCode.INDIA.equalsIgnoreCase(this.q);
    }

    public final String c() {
        return b() ? h.e.s : h.e.r;
    }
}

package com.anythink.core.common.o;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import cn.haorui.sdk.core.HRConfig;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.IExHandler;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import org.json.JSONObject;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    private static String E = null;
    private static String F = null;
    private static String G = null;
    private static String H = null;
    private static String I = null;
    private static String J = null;
    private static String K = null;
    private static String L = null;
    private static String M = null;
    private static String N = null;
    private static String O = null;
    private static String P = null;
    private static String Q = null;
    private static String R = null;
    private static String S = null;
    private static String T = null;
    private static String U = null;
    private static String V = null;
    private static String W = null;
    private static String X = null;
    public static String a = null;
    public static String b = null;
    public static List<com.anythink.core.common.f.s> d = null;
    public static String e = null;
    public static final String f = "unknown";
    private static String g;
    private static String h;
    private static String k;
    private static boolean l;
    private static int m;
    private static boolean n;
    private static String o;
    private static final JSONObject i = new JSONObject();
    private static String j = null;
    public static String c = "";
    private static volatile String p = null;
    private static String q = "";
    private static String r = "";
    private static String s = "";
    private static String t = "";
    private static int u = 0;
    private static String v = "";
    private static String w = "";
    private static String x = null;
    private static String y = "";
    private static String z = "";
    private static int A = -1;
    private static int B = -1;
    private static int C = -1;
    private static int D = -1;

    private e() {
    }

    private static int A(Context context) {
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static String A() {
        if (I()) {
            return "";
        }
        if (Q == null) {
            try {
                Q = Build.VERSION.CODENAME;
            } catch (Throwable unused) {
                Q = "";
            }
        }
        String str = Q;
        if (str == null) {
            Q = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return Q;
    }

    private static int B(Context context) {
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static String B() {
        if (I()) {
            return "";
        }
        if (R == null) {
            try {
                R = Build.VERSION.INCREMENTAL;
            } catch (Throwable unused) {
                R = "";
            }
        }
        String str = R;
        if (str == null) {
            R = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return R;
    }

    private static int C(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return -1;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || !i.a("android.permission.ACCESS_NETWORK_STATE", context) || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return -1;
            }
            if (activeNetworkInfo.getType() == 1) {
                return -2;
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return -1;
            }
            return telephonyManager.getNetworkType();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static String C() {
        if (I()) {
            return "";
        }
        if (S == null) {
            try {
                S = Build.SERIAL;
            } catch (Throwable unused) {
                S = "";
            }
        }
        String str = S;
        if (str == null) {
            S = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return S;
    }

    public static String D() {
        if (I()) {
            return "";
        }
        if (T == null) {
            try {
                T = Build.DISPLAY;
            } catch (Throwable unused) {
                T = "";
            }
        }
        String str = T;
        if (str == null) {
            T = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return T;
    }

    private static void D(Context context) {
        if (d == null) {
            long jLongValue = s.a(context, com.anythink.core.common.b.h.p, "det_hw_time", (Long) 0L).longValue();
            ArrayList arrayList = new ArrayList();
            d = arrayList;
            arrayList.add(new com.anythink.core.common.f.s(context, jLongValue, "hw_ver", "com.huawei.appmarket"));
            d.add(new com.anythink.core.common.f.s(context, jLongValue, "hw_hms_ver", "com.huawei.hwid"));
            d.add(new com.anythink.core.common.f.s(context, jLongValue, "honor_ver", "com.huawei.appmarket"));
            s.a(context, com.anythink.core.common.b.h.p, "det_hw_time", System.currentTimeMillis());
        }
    }

    public static String E() {
        if (I()) {
            return "";
        }
        if (U == null) {
            try {
                U = "1";
            } catch (Throwable unused) {
                U = "";
            }
        }
        return U;
    }

    private static boolean E(Context context) {
        return !com.anythink.core.d.b.a(context).b(com.anythink.core.common.b.n.a().o()).aq();
    }

    public static String F() {
        if (I()) {
            return "";
        }
        if (V == null) {
            try {
                V = Build.BOARD;
            } catch (Throwable unused) {
                V = "";
            }
        }
        String str = V;
        if (str == null) {
            V = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return V;
    }

    private static int H() {
        return Build.VERSION.SDK_INT;
    }

    private static boolean I() {
        Context contextF = com.anythink.core.common.b.n.a().f();
        return !com.anythink.core.common.b.q.a(contextF).b() || E(contextF);
    }

    private static int a(int i2) {
        if (i2 == 20) {
            return 16;
        }
        switch (i2) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 1;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 3;
            case 13:
                return 13;
            default:
                return -1;
        }
    }

    public static String a() {
        if (com.anythink.core.common.b.n.a().c("model")) {
            return "";
        }
        try {
            return !com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b() ? "" : Build.MODEL;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String a(Context context, String str) {
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        if (context != null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
                StringBuilder sb = new StringBuilder();
                sb.append(packageInfo.versionCode);
                return sb.toString();
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public static void a(final int i2, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.o.e.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (e.i) {
                    if (e.i.has(String.valueOf(i2))) {
                        return;
                    }
                    try {
                        e.i.put(String.valueOf(i2), str);
                        String unused = e.j = e.i.toString();
                    } catch (Throwable unused2) {
                    }
                }
            }
        }, 13, true);
    }

    public static void a(Context context) {
        try {
            d();
            l(context);
            j(context);
            i(context);
            g(context);
            a();
            b();
            d(context);
            f();
            f(context);
            c();
            o(context);
            if (i.a(com.anythink.china.common.d.a, context)) {
                String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
                if (i.b(simOperator) && simOperator.length() > 3) {
                    y = simOperator.substring(0, 3);
                    z = simOperator.substring(3, simOperator.length());
                }
            }
            if (d == null) {
                long jLongValue = s.a(context, com.anythink.core.common.b.h.p, "det_hw_time", (Long) 0L).longValue();
                ArrayList arrayList = new ArrayList();
                d = arrayList;
                arrayList.add(new com.anythink.core.common.f.s(context, jLongValue, "hw_ver", "com.huawei.appmarket"));
                d.add(new com.anythink.core.common.f.s(context, jLongValue, "hw_hms_ver", "com.huawei.hwid"));
                d.add(new com.anythink.core.common.f.s(context, jLongValue, "honor_ver", "com.huawei.appmarket"));
                s.a(context, com.anythink.core.common.b.h.p, "det_hw_time", System.currentTimeMillis());
            }
            q();
            r();
            w(context);
            x(context);
            s();
            t();
            u();
            v();
            w();
            x();
            y();
            z();
            A();
            B();
            C();
            D();
            E();
            F();
        } catch (Exception unused) {
        }
    }

    public static void a(String str) {
        h = str;
        s.a(com.anythink.core.common.b.n.a().f(), com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.s, h);
    }

    public static int b(String str) {
        int i2 = D;
        if (i2 != -1) {
            return i2;
        }
        D = 0;
        try {
            D = ((Integer) Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("getWXAppSupportAPI", new Class[0]).invoke(c(str), new Object[0])).intValue();
        } catch (Throwable unused) {
        }
        return D;
    }

    public static String b() {
        if (com.anythink.core.common.b.n.a().c("brand")) {
            return "";
        }
        try {
            return !com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b() ? "" : Build.BRAND;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String b(Context context) {
        if (com.anythink.core.common.b.n.a().c("mcc")) {
            return "";
        }
        if (context == null) {
            com.anythink.core.common.b.n.a().f();
        }
        try {
            return !com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b() ? "" : y;
        } catch (Exception unused) {
            return "";
        }
    }

    public static Object c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory").getMethod("createWXAPI", Context.class, String.class).invoke(null, com.anythink.core.common.b.n.a().f(), str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String c() {
        if (com.anythink.core.common.b.n.a().c("timezone")) {
            return "";
        }
        try {
            if (!com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
                return "";
            }
            try {
                if (TextUtils.isEmpty(w)) {
                    String displayName = TimeZone.getDefault().getDisplayName(false, 0, Locale.ENGLISH);
                    w = displayName;
                    return displayName;
                }
            } catch (Throwable unused) {
            }
            return w;
        } catch (Exception unused2) {
            return "";
        }
    }

    public static String c(Context context) {
        if (com.anythink.core.common.b.n.a().c("mnc")) {
            return "";
        }
        if (context == null) {
            com.anythink.core.common.b.n.a().f();
        }
        try {
            return !com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b() ? "" : z;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String d() {
        if (com.anythink.core.common.b.n.a().c("os_vc")) {
            return "";
        }
        try {
            if (!com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
                return "";
            }
            if (TextUtils.isEmpty(r)) {
                r = String.valueOf(Build.VERSION.SDK_INT);
            }
            return r;
        } catch (Exception unused) {
            return "";
        }
    }

    public static synchronized String d(Context context) {
        if (com.anythink.core.common.b.n.a().c("android_id")) {
            return "";
        }
        if (!com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
            return "";
        }
        IExHandler iExHandlerB = com.anythink.core.common.b.n.a().b();
        if (iExHandlerB != null) {
            if (context == null) {
                context = com.anythink.core.common.b.n.a().f();
            }
            if (o == null) {
                o = s.b(context, com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.v, "");
            }
            if (!TextUtils.isEmpty(o)) {
                return o;
            }
            String aid = iExHandlerB.getAid(context);
            o = aid;
            if (!TextUtils.isEmpty(aid)) {
                s.a(context, com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.v, o);
                return o;
            }
        } else {
            o = "";
        }
        return o;
    }

    public static String e() {
        if (com.anythink.core.common.b.n.a().c("os_vn")) {
            return "";
        }
        if (TextUtils.isEmpty(q)) {
            q = Build.VERSION.RELEASE;
        }
        return q;
    }

    public static String e(Context context) {
        if (context == null) {
            return "";
        }
        try {
            String strD = d(context);
            if (TextUtils.isEmpty(strD)) {
                return "";
            }
            if (TextUtils.isEmpty(e)) {
                e = g.b(strD);
            }
        } catch (Throwable unused) {
        }
        return e;
    }

    public static /* synthetic */ boolean e(String str) {
        return Pattern.matches("^[0-]+$", str);
    }

    public static String f() {
        try {
            if (!com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
                return "";
            }
            if (h == null) {
                h = s.b(com.anythink.core.common.b.n.a().f(), com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.s, "");
            }
            return h;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String f(Context context) {
        if (com.anythink.core.common.b.n.a().c("language")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        try {
            if (!com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
                return "";
            }
            if (!TextUtils.isEmpty(v)) {
                return v;
            }
            String language = context.getResources().getConfiguration().locale.getLanguage();
            v = language;
            return language;
        } catch (Exception unused) {
            return "";
        }
    }

    private static boolean f(String str) {
        return Pattern.matches("^[0-]+$", str);
    }

    public static int g(Context context) {
        if (com.anythink.core.common.b.n.a().c("orient")) {
            return 0;
        }
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        return context.getResources().getConfiguration().orientation == 2 ? 2 : 1;
    }

    public static String g() {
        if (com.anythink.core.common.b.n.a().b() == null) {
            return "";
        }
        try {
            return new BigDecimal((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000.0d).setScale(6, 4).toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    private static boolean g(String str) {
        return com.anythink.core.common.b.n.a().c(str) || !com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b();
    }

    public static JSONObject h() {
        try {
            return new JSONObject(j);
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }

    public static boolean h(Context context) {
        return g(context) == 2;
    }

    public static synchronized String i() {
        if (com.anythink.core.common.b.n.a().c("ua")) {
            return "";
        }
        try {
            if (!com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
                return "";
            }
            if (!TextUtils.isEmpty(p)) {
                return p;
            }
            if (p == null) {
                String strB = s.b(com.anythink.core.common.b.n.a().f(), com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.f, "");
                p = strB;
                if (!TextUtils.isEmpty(strB)) {
                    return p;
                }
            }
            String str = Build.VERSION.RELEASE;
            String strA = a();
            String str2 = Build.ID;
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(strA) || TextUtils.isEmpty(str2)) {
                return "";
            }
            return "Mozilla/5.0 (Linux; Android " + str + "; " + strA + " Build/" + str2 + ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19";
        } catch (Exception unused) {
            return "";
        }
    }

    public static String i(Context context) {
        if (com.anythink.core.common.b.n.a().c("app_vc")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        if (u != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(u);
            return sb.toString();
        }
        try {
            u = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(u);
            return sb2.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String j() {
        if (!TextUtils.isEmpty(c)) {
            return c;
        }
        String strG = com.anythink.core.common.b.n.a().G();
        if (!TextUtils.isEmpty(strG)) {
            c = strG;
            return strG;
        }
        String strG2 = com.anythink.core.common.b.n.a().G();
        if (TextUtils.isEmpty(strG2)) {
            try {
                Class.forName("com.unity3d.player.UnityPlayer");
                strG2 = "2";
            } catch (Throwable unused) {
                strG2 = "1";
            }
            try {
                Class.forName("org.cocos2dx.lib.Cocos2dxActivity");
                Class.forName("org.cocos2dx.lib.Cocos2dxJavascriptJavaBridge");
                strG2 = "4";
            } catch (Throwable unused2) {
            }
        }
        c = strG2;
        return strG2;
    }

    public static String j(Context context) {
        if (com.anythink.core.common.b.n.a().c("app_vn")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        try {
            if (!TextUtils.isEmpty(t)) {
                return t;
            }
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            t = str;
            return str;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static int k() {
        if (B == -1) {
            if (TextUtils.isEmpty(l())) {
                B = 0;
            } else {
                try {
                    Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
                    Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram");
                    B = 1;
                } catch (Throwable unused) {
                    B = 0;
                }
            }
        }
        return B;
    }

    public static String k(Context context) {
        if (com.anythink.core.common.b.n.a().c("screen")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        try {
            if (!com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append((context == null ? com.anythink.core.common.b.n.a().f() : context).getResources().getDisplayMetrics().widthPixels);
            sb.append(Marker.ANY_MARKER);
            if (context == null) {
                context = com.anythink.core.common.b.n.a().f();
            }
            sb.append(context.getResources().getDisplayMetrics().heightPixels);
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String l() {
        Object obj;
        String strC = com.anythink.core.common.b.n.a().c();
        if (!TextUtils.isEmpty(strC)) {
            return strC;
        }
        try {
            Map<String, Object> mapL = com.anythink.core.common.b.n.a().l();
            if (mapL == null || (obj = mapL.get(ATAdConst.KEY.WECHAT_APPID)) == null) {
                return null;
            }
            return obj.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String l(Context context) {
        if (com.anythink.core.common.b.n.a().c("package_name")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        try {
            if (!TextUtils.isEmpty(s)) {
                return s;
            }
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            s = str;
            return str;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static int m() {
        int i2 = C;
        if (i2 != -1) {
            return i2;
        }
        C = 0;
        try {
            C = ((Integer) Class.forName("com.tencent.mm.opensdk.constants.Build").getField("SDK_INT").get(null)).intValue();
        } catch (Throwable unused) {
        }
        return C;
    }

    public static String m(Context context) {
        if (com.anythink.core.common.b.n.a().c("it_src")) {
            return "";
        }
        if (context == null) {
            context = com.anythink.core.common.b.n.a().f();
        }
        try {
            if (!TextUtils.isEmpty(a)) {
                return a;
            }
            String installerPackageName = context.getPackageManager().getInstallerPackageName(l(context));
            a = installerPackageName;
            return installerPackageName;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String n(Context context) {
        NetworkInfo activeNetworkInfo;
        if (com.anythink.core.common.b.n.a().c("network_type")) {
            return "";
        }
        try {
            if (!com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
                return "";
            }
            if (context == null) {
                return HRConfig.GENDER_UNKNOWN;
            }
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager == null || !i.a("android.permission.ACCESS_NETWORK_STATE", context) || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                    return HRConfig.GENDER_UNKNOWN;
                }
                int i2 = 1;
                if (activeNetworkInfo.getType() == 1) {
                    return "-2";
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null) {
                    return HRConfig.GENDER_UNKNOWN;
                }
                int networkType = telephonyManager.getNetworkType();
                StringBuilder sb = new StringBuilder();
                if (networkType != 20) {
                    switch (networkType) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                            break;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            i2 = 3;
                            break;
                        case 13:
                            i2 = 13;
                            break;
                        default:
                            i2 = -1;
                            break;
                    }
                } else {
                    i2 = 16;
                }
                sb.append(i2);
                return sb.toString();
            } catch (Exception e2) {
                e2.printStackTrace();
                return HRConfig.GENDER_UNKNOWN;
            }
        } catch (Exception unused) {
            return "";
        }
    }

    public static List<com.anythink.core.common.f.s> n() {
        return d;
    }

    public static String o() {
        if (com.anythink.core.common.b.n.a().c("amazon_id") || !com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
            return "";
        }
        if (k == null) {
            k = s.b(com.anythink.core.common.b.n.a().f(), com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.t, "");
        }
        if (TextUtils.isEmpty(k) && !l) {
            try {
                l = true;
                String string = Settings.Secure.getString(com.anythink.core.common.b.n.a().f().getContentResolver(), "advertising_id");
                k = string;
                if (TextUtils.isEmpty(string)) {
                    k = "";
                } else {
                    s.a(com.anythink.core.common.b.n.a().f(), com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.t, k);
                }
            } catch (Throwable unused) {
            }
        }
        return k;
    }

    public static String o(Context context) {
        String str = x;
        if (str != null) {
            if (str == null) {
                x = "";
            }
            return x;
        }
        try {
            String str2 = context.getPackageManager().getPackageInfo("com.android.vending", 0).versionName;
            x = str2;
            if (str2 == null) {
                x = "";
            }
            return x;
        } catch (Exception unused) {
            x = "";
            return "";
        }
    }

    public static int p() {
        if (!com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
            return -1;
        }
        if (m <= 0 && !n) {
            try {
                n = true;
                m = Settings.Secure.getInt(com.anythink.core.common.b.n.a().f().getContentResolver(), "limit_ad_tracking") != 0 ? 2 : 1;
            } catch (Throwable unused) {
                m = -1;
            }
        }
        return m;
    }

    public static String p(Context context) {
        if (com.anythink.core.common.b.n.a().b() == null) {
            return "";
        }
        if (TextUtils.isEmpty(b)) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            b = String.valueOf(displayMetrics.density);
        }
        return b;
    }

    public static String q() {
        if (g("cpu")) {
            return "";
        }
        if (E == null) {
            E = k.b();
        }
        return E;
    }

    public static void q(Context context) {
        String userAgentString;
        if (com.anythink.core.common.b.n.a().c("ua")) {
            return;
        }
        try {
            if (com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).b()) {
                if (TextUtils.isEmpty(p)) {
                    p = s.b(context, com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.f, "");
                }
                String strB = s.b(context, com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.g, "");
                if (TextUtils.isEmpty(p) || !Build.VERSION.RELEASE.equals(strB)) {
                    if (Looper.myLooper() != Looper.getMainLooper()) {
                        TextUtils.isEmpty(p);
                        return;
                    }
                    if (Build.VERSION.SDK_INT >= 17) {
                        userAgentString = WebSettings.getDefaultUserAgent(context);
                    } else {
                        WebView webView = new WebView(context);
                        h.a(webView);
                        userAgentString = webView.getSettings().getUserAgentString();
                    }
                    p = userAgentString;
                    s.a(context, com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.f, p);
                    s.a(context, com.anythink.core.common.b.h.p, com.anythink.core.common.b.h.g, Build.VERSION.RELEASE);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static String r() {
        if (g("isroot")) {
            return "";
        }
        if (F == null) {
            F = k.a();
        }
        return F;
    }

    public static synchronized void r(Context context) {
        if (TextUtils.isEmpty(com.anythink.core.common.b.n.a().x())) {
            IExHandler iExHandlerB = com.anythink.core.common.b.n.a().b();
            String uniqueId = iExHandlerB != null ? iExHandlerB.getUniqueId(context) : "";
            if (TextUtils.isEmpty(uniqueId)) {
                uniqueId = s(context);
            }
            if (TextUtils.isEmpty(uniqueId) || Pattern.matches("^[0-]+$", uniqueId)) {
                uniqueId = d(context);
            }
            if (TextUtils.isEmpty(uniqueId)) {
                uniqueId = UUID.randomUUID().toString();
            }
            com.anythink.core.common.b.n.a().l(g.a(uniqueId));
            com.anythink.core.common.n.e.a("", "3", "", String.valueOf(System.currentTimeMillis()));
        }
    }

    public static String s() {
        if (g(com.anythink.core.common.h.c.aF)) {
            return "";
        }
        if (I == null) {
            I = i.a() ? "1" : "0";
        }
        return I;
    }

    public static synchronized String s(final Context context) {
        if (com.anythink.core.common.b.n.a().c("gaid")) {
            return "";
        }
        final ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(2);
        final String[] strArr = new String[1];
        executorServiceNewFixedThreadPool.submit(new Runnable() { // from class: com.anythink.core.common.o.e.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    try {
                        Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                        Class<?> cls2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
                        strArr[0] = (String) cls2.getMethod("getId", new Class[0]).invoke(cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, context), new Object[0]);
                    } catch (Exception unused) {
                    }
                } catch (Throwable unused2) {
                    strArr[0] = new com.anythink.core.common.b.c().a(context).a();
                }
                if (!TextUtils.isEmpty(strArr[0]) && !e.e(strArr[0])) {
                    e.a(strArr[0]);
                }
                try {
                    synchronized (executorServiceNewFixedThreadPool) {
                        executorServiceNewFixedThreadPool.notifyAll();
                    }
                } catch (Throwable unused3) {
                }
            }
        });
        try {
            synchronized (executorServiceNewFixedThreadPool) {
                executorServiceNewFixedThreadPool.wait(com.anythink.expressad.exoplayer.i.a.f);
            }
            executorServiceNewFixedThreadPool.shutdown();
            if (strArr[0] == null) {
                return "";
            }
            return strArr[0];
        } catch (Exception unused) {
            return "";
        }
    }

    public static int t(Context context) {
        if (A == -1) {
            A = i.a(context, com.anythink.expressad.foundation.g.a.bC) ? 1 : 0;
        }
        return A;
    }

    public static String t() {
        if (I()) {
            return "";
        }
        if (J == null) {
            try {
                J = Build.TYPE;
            } catch (Throwable unused) {
            }
        }
        String str = J;
        if (str == null) {
            J = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return J;
    }

    public static String u() {
        if (I()) {
            return "";
        }
        if (TextUtils.isEmpty(K)) {
            try {
                K = Build.TAGS;
            } catch (Throwable unused) {
            }
        }
        String str = K;
        if (str == null) {
            K = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return K;
    }

    public static String u(Context context) {
        return g("isagent") ? "" : k.a(context);
    }

    public static String v() {
        if (I()) {
            return "";
        }
        if (L == null) {
            try {
                L = Build.USER;
            } catch (Throwable unused) {
                L = "";
            }
        }
        String str = L;
        if (str == null) {
            L = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return L;
    }

    public static String v(Context context) {
        return E(context) ? "" : k.c(context);
    }

    public static String w() {
        if (I()) {
            return "";
        }
        if (M == null) {
            try {
                M = Build.RADIO;
            } catch (Throwable unused) {
                M = "";
            }
        }
        String str = M;
        if (str == null) {
            M = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return M;
    }

    public static String w(Context context) {
        if (G == null) {
            G = k.d(context);
        }
        return G;
    }

    public static String x() {
        if (I()) {
            return "";
        }
        if (N == null) {
            try {
                N = Build.BOOTLOADER;
            } catch (Throwable unused) {
                N = "";
            }
        }
        String str = N;
        if (str == null) {
            N = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return N;
    }

    public static String x(Context context) {
        if (H == null) {
            H = k.e(context);
        }
        return H;
    }

    public static String y() {
        if (I()) {
            return "";
        }
        if (O == null) {
            try {
                O = Build.HARDWARE;
            } catch (Throwable unused) {
                O = "";
            }
        }
        String str = O;
        if (str == null) {
            O = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return O;
    }

    public static String y(Context context) {
        return k.b(context);
    }

    public static String z() {
        if (I()) {
            return "";
        }
        if (P == null) {
            try {
                P = Build.HOST;
            } catch (Throwable unused) {
                P = "";
            }
        }
        String str = P;
        if (str == null) {
            P = "";
        } else if ("unknown".equals(str)) {
            return "";
        }
        return P;
    }

    public static String z(Context context) {
        return g("battery") ? "" : k.f(context);
    }
}

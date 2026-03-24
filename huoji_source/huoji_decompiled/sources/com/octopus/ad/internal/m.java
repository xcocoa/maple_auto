package com.octopus.ad.internal;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.webkit.WebView;
import com.octopus.ad.Octopus;
import com.octopus.ad.internal.b.f;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.SPUtils;
import com.octopus.ad.utils.ThreadUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public class m {
    private static boolean F = true;
    private static boolean G = false;
    public static String e = null;
    public static String f = "";
    public static String g = "";
    private static String k = "USED_AD_UNIT_IDS_KEY";
    private static m l = null;
    private static String m = "OctopusImpl";
    private static String p;
    private boolean A;
    private DisplayMetrics B;
    private com.octopus.ad.internal.b.f E;
    public String c;
    public Context h;
    public float i;
    public float j;
    private String n;
    private String o;
    private float z;
    public boolean a = false;
    public boolean b = false;
    public HashMap<String, String> d = new HashMap<>();
    private HashSet<String> q = new HashSet<>();
    private HashSet<String> r = new HashSet<>();
    private HashSet<String> s = new HashSet<>();
    private HashSet<String> t = new HashSet<>();
    private HashSet<String> u = new HashSet<>();
    private HashSet<String> v = new HashSet<>();
    private Handler w = new Handler(Looper.getMainLooper()) { // from class: com.octopus.ad.internal.m.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
        }
    };
    private Handler x = null;
    private HandlerThread y = null;
    private boolean C = false;
    private boolean D = false;

    public static m a() {
        m mVar;
        synchronized (m.class) {
            if (l == null) {
                l = new m();
            }
            mVar = l;
        }
        return mVar;
    }

    private com.octopus.ad.internal.b.f r() {
        Context context = this.h;
        if (context == null) {
            return null;
        }
        return new f.a(context).a(52428800L).a();
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    private void s() {
        try {
            Class.forName("android.content.pm.PackageParser$Package").getDeclaredConstructor(String.class).setAccessible(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mHiddenApiWarningShown");
            declaredField.setAccessible(true);
            declaredField.setBoolean(objInvoke, true);
        } catch (Exception e3) {
            e3.printStackTrace();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void a(float f2) {
        q.a(0.0f <= f2 && f2 <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        q.a(e, (Object) "Octopus.initialize() must be called prior to setting the app volume.");
        this.z = f2;
    }

    public void a(final Context context, String str) {
        synchronized (m.class) {
            try {
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
                Log.i("octopus", "SDK_VERSION:1.5.8.9");
                this.h = context.getApplicationContext();
                try {
                    com.octopus.ad.utils.b.h.b().e().execute(new com.octopus.ad.utils.b.b(this.h));
                    Long l2 = (Long) SPUtils.get(this.h, "duration", Long.valueOf(com.anythink.expressad.d.a.b.aT));
                    String str2 = (String) SPUtils.get(this.h, "version", "1686041703212");
                    Long l3 = (Long) SPUtils.get(this.h, "lastReqTime", 0L);
                    if (l2 != null && str2 != null && l3 != null && com.octopus.ad.utils.b.l.c() - l3.longValue() > l2.longValue()) {
                        new j(com.octopus.ad.utils.b.c.a("aHR0cDovL3Nka2NmZy5hZGludGwuY24vc2RrL3BrZ0NvbmZpZz92ZXJzaW9uPQ==") + str2).execute(new Void[0]);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (!Octopus.isLimitPersonalAds()) {
                    com.octopus.ad.utils.a.b.a((Application) this.h);
                }
                HaoboLog.setErrorContext(context.getApplicationContext());
                e = str;
                try {
                    try {
                        String string = SPUtils.getString(this.h, "userAgent");
                        if (TextUtils.isEmpty(string)) {
                            ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.m.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    WebView webView = new WebView(context);
                                    int i = Build.VERSION.SDK_INT;
                                    if (i >= 11 && i < 19) {
                                        webView.removeJavascriptInterface("searchBoxJavaBridge_");
                                        webView.removeJavascriptInterface("accessibility");
                                        webView.removeJavascriptInterface("accessibilityTraversal");
                                    }
                                    if (i >= 19) {
                                        WebView.setWebContentsDebuggingEnabled(false);
                                    }
                                    webView.getSettings().setSavePassword(false);
                                    String userAgentString = webView.getSettings().getUserAgentString();
                                    if (TextUtils.isEmpty(userAgentString)) {
                                        return;
                                    }
                                    m.this.c(userAgentString);
                                    SPUtils.put(m.this.h, "userAgent", userAgentString);
                                }
                            });
                        } else {
                            c(string);
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                this.B = displayMetrics;
                int i = displayMetrics.widthPixels;
                int i2 = displayMetrics.heightPixels;
                if (i < i2) {
                    this.i = i / 720.0f;
                    this.j = i2 / 1280.0f;
                } else {
                    this.i = i2 / 720.0f;
                    this.j = i / 1280.0f;
                }
                if (!this.D) {
                    com.octopus.ad.utils.e.a(this.h).a(new com.octopus.ad.utils.d() { // from class: com.octopus.ad.internal.m.3
                        @Override // com.octopus.ad.utils.d
                        public void a() {
                            com.octopus.ad.utils.b.f.a("octopus", "上报活跃量");
                        }

                        @Override // com.octopus.ad.utils.d
                        public void a(long j, long j2) {
                            com.octopus.ad.utils.b.f.a("octopus", "在线时长:" + (j2 - j));
                            SPUtils.put(m.this.h, "startTime", Long.valueOf(j));
                            SPUtils.put(m.this.h, "endTime", Long.valueOf(j2));
                        }
                    });
                }
                this.D = true;
                if (Build.VERSION.SDK_INT >= 28) {
                    s();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(String str) {
        this.n = str;
    }

    public void a(String str, boolean z) {
    }

    public void a(boolean z) {
        q.a(e, (Object) "Octopus.initialize() must be called prior to setting the app volume.");
        this.A = z;
    }

    public com.octopus.ad.internal.b.f b() {
        if (this.h == null) {
            return null;
        }
        com.octopus.ad.internal.b.f fVar = this.E;
        if (fVar != null) {
            return fVar;
        }
        com.octopus.ad.internal.b.f fVarR = r();
        this.E = fVarR;
        return fVarR;
    }

    public void b(String str) {
        this.o = str;
    }

    public void b(boolean z) {
        F = z;
    }

    public Handler c() {
        if (this.x == null) {
            if (this.y == null) {
                HandlerThread handlerThread = new HandlerThread("BackgroundHandler");
                this.y = handlerThread;
                handlerThread.start();
            }
            this.x = new Handler(this.y.getLooper());
        }
        return this.x;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.c = str;
    }

    public String d() {
        return e;
    }

    public String e() {
        return this.n;
    }

    public String f() {
        return this.o;
    }

    public Context g() {
        return this.h;
    }

    public String h() {
        return TextUtils.isEmpty(this.c) ? "application/json; charset=utf-8" : this.c;
    }

    public String i() {
        String strA = com.octopus.ad.utils.b.c.a("aHR0cDovL3N2LmFkaW50bC5jbg==");
        return TextUtils.isEmpty(strA) ? "" : this.a ? strA.replace("http:", "https:") : strA;
    }

    public String j() {
        String str;
        StringBuilder sb;
        String strI;
        Boolean bool = Boolean.TRUE;
        if (TextUtils.isEmpty(p)) {
            Boolean bool2 = (Boolean) SPUtils.getFromGroupSdk(this.h, "encrypt", bool);
            str = (bool2 == null || bool2.booleanValue()) ? "/api/zysdk?isEncrypt=1" : "/api/zysdk?isEncrypt=0";
            sb = new StringBuilder();
            strI = i();
        } else {
            Boolean bool3 = (Boolean) SPUtils.getFromGroupSdk(this.h, "encrypt", bool);
            str = (bool3 == null || bool3.booleanValue()) ? "/api/zysdk?isEncrypt=1" : "/api/zysdk?isEncrypt=0";
            sb = new StringBuilder();
            strI = p;
        }
        sb.append(strI);
        sb.append(str);
        return sb.toString();
    }

    public String k() {
        if (!TextUtils.isEmpty(p)) {
            return p;
        }
        String strA = com.octopus.ad.utils.b.c.a("aHR0cDovL3N2LmFkaW50bC5jbg==");
        return TextUtils.isEmpty(strA) ? "" : this.a ? strA.replace("http:", "https:") : strA;
    }

    public float l() {
        return this.i;
    }

    public float m() {
        return this.j;
    }

    public float n() {
        return Math.max(this.i, this.j);
    }

    public DisplayMetrics o() {
        return this.B;
    }

    public HashSet<String> p() {
        return this.v;
    }

    public boolean q() {
        return F;
    }
}

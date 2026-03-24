package com.umeng.commonsdk;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.amap.UMAmapConfig;
import com.umeng.commonsdk.amap.a;
import com.umeng.commonsdk.amap.b;
import com.umeng.commonsdk.framework.c;
import com.umeng.commonsdk.proguard.d;
import com.umeng.commonsdk.proguard.h;
import com.umeng.commonsdk.proguard.j;
import com.umeng.commonsdk.proguard.k;
import com.umeng.commonsdk.proguard.l;
import com.umeng.commonsdk.proguard.r;
import com.umeng.commonsdk.proguard.t;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class UMConfigureImpl {
    private static b a;
    private static boolean b;

    private static synchronized void a(Context context) {
        if (context != null) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (new a(applicationContext).a() != null) {
                    String strA = com.umeng.commonsdk.framework.b.a(applicationContext);
                    String packageName = applicationContext.getPackageName();
                    if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(packageName) && strA.equals(packageName)) {
                        if (a == null) {
                            a = new b(applicationContext, 1, UMAmapConfig.AMAP_CACHE_WRITE_TIME);
                        }
                        if (a.isAlive()) {
                            e.a("AmapLBS", "[lbs-build] not write start");
                        } else {
                            e.a("AmapLBS", "[lbs-build] begin write LBS");
                            a.start();
                        }
                    }
                } else {
                    e.a("AmapLBS", "[lbs-send] not get AMAP !!!");
                }
            } catch (Throwable th) {
                e.c("AmapLBS", "e is " + th.getMessage());
                com.umeng.commonsdk.proguard.e.a(context, th);
            }
        }
    }

    private static void b(final Context context) {
        if (context != null) {
            try {
                String strA = com.umeng.commonsdk.framework.b.a(context);
                String packageName = context.getPackageName();
                if (TextUtils.isEmpty(strA) || TextUtils.isEmpty(packageName) || !strA.equals(packageName)) {
                    return;
                }
                new Thread(new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            JSONObject jSONObjectB = h.b(context);
                            if (jSONObjectB == null || jSONObjectB.length() <= 0) {
                                return;
                            }
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("lbs", jSONObjectB);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("tp", jSONObject);
                            UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                            uMSLEnvelopeBuild.buildSLEnvelope(context, uMSLEnvelopeBuild.buildSLBaseHeader(context), jSONObject2, UMAmapConfig.AMAP_CACHE_PATH);
                        } catch (Exception e) {
                            com.umeng.commonsdk.proguard.e.a(context, e);
                        }
                    }
                }).start();
            } catch (Throwable th) {
                com.umeng.commonsdk.proguard.e.a(context, th);
            }
        }
    }

    private static synchronized void c(final Context context) {
        if (context != null) {
            try {
                if (!b) {
                    new Thread(new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                String strA = com.umeng.commonsdk.framework.b.a(context);
                                String packageName = context.getPackageName();
                                if (TextUtils.isEmpty(strA) || TextUtils.isEmpty(packageName) || !strA.equals(packageName)) {
                                    return;
                                }
                                try {
                                    h.a(context);
                                } catch (Throwable th) {
                                    e.c(c.d, "e is " + th);
                                }
                                try {
                                    if (!l.a(context).a()) {
                                        l.a(context).b();
                                    }
                                } catch (Throwable th2) {
                                    e.c(c.d, "e is " + th2);
                                    th2.printStackTrace();
                                }
                                try {
                                    t.b(context);
                                } catch (Exception e) {
                                    e.c(c.d, "e is " + e);
                                }
                                try {
                                    j.n(context);
                                } catch (Exception e2) {
                                    e.c(c.d, "e is " + e2);
                                }
                                try {
                                    j.d(context);
                                } catch (Exception e3) {
                                    e.c(c.d, "e is " + e3);
                                }
                                try {
                                    r.b(context);
                                } catch (Exception e4) {
                                    e.c(c.d, "e is " + e4);
                                }
                                try {
                                    d.a(context);
                                } catch (Exception e5) {
                                    e.c(c.d, "e is " + e5);
                                }
                                try {
                                    d.b(context);
                                } catch (Throwable unused) {
                                }
                            } catch (Throwable th3) {
                                com.umeng.commonsdk.proguard.e.a(context, th3);
                            }
                        }
                    }).start();
                    String strA = com.umeng.commonsdk.framework.b.a(context);
                    String packageName = context.getPackageName();
                    if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(packageName) && strA.equals(packageName)) {
                        try {
                            j.r(context);
                        } catch (Exception e) {
                            e.c(c.d, "e is " + e);
                            com.umeng.commonsdk.proguard.e.a(context, e);
                        }
                    }
                    try {
                        if (!k.a(context).a()) {
                            k.a(context).b();
                        }
                    } catch (Throwable th) {
                        e.c(c.d, "e is " + th);
                        com.umeng.commonsdk.proguard.e.a(context, th);
                    }
                    b = true;
                }
            } catch (Throwable th2) {
                e.c(c.d, "e is " + th2.getMessage());
                com.umeng.commonsdk.proguard.e.a(context, th2);
            }
        }
    }

    public static void init(Context context) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        a(applicationContext);
        b(applicationContext);
        c(applicationContext);
    }
}

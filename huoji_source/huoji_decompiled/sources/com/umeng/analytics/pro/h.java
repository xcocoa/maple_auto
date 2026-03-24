package com.umeng.analytics.pro;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import cn.haorui.sdk.core.HRConfig;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.g;
import com.umeng.analytics.pro.i;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    public static String a;
    private static JSONObject f = new JSONObject();
    private Application g;
    private final Map<String, Long> e = new HashMap();
    public boolean b = false;
    public boolean c = false;
    public Application.ActivityLifecycleCallbacks d = new Application.ActivityLifecycleCallbacks() { // from class: com.umeng.analytics.pro.h.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            h.this.c(activity);
            h.this.c = false;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            h hVar = h.this;
            if (hVar.c) {
                hVar.c = false;
                if (h.a.equals(activity.getPackageName() + "." + activity.getLocalClassName())) {
                    return;
                } else {
                    hVar = h.this;
                }
            }
            hVar.b(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    };

    public h(Activity activity) {
        this.g = null;
        synchronized (this) {
            if (this.g == null && activity != null) {
                this.g = activity.getApplication();
                a(activity);
            }
        }
    }

    private void a(Activity activity) {
        if (this.b) {
            return;
        }
        this.b = true;
        this.g.registerActivityLifecycleCallbacks(this.d);
        if (a == null) {
            this.c = true;
            b(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Activity activity) {
        a = activity.getPackageName() + "." + activity.getLocalClassName();
        if (AnalyticsConfig.FLAG_DPLUS) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(b.ai, a);
                jSONObject.put("_$!ts", System.currentTimeMillis());
                JSONObject jSONObjectI = com.umeng.analytics.b.a().i();
                if (jSONObjectI.length() > 0) {
                    jSONObject.put(b.ab, jSONObjectI);
                }
                String strC = o.a().c();
                if (TextUtils.isEmpty(strC)) {
                    strC = HRConfig.GENDER_UNKNOWN;
                }
                jSONObject.put("__ii", strC);
                if (o.a().b()) {
                    jSONObject.put("__ii", HRConfig.GENDER_UNKNOWN);
                }
                UMWorkDispatch.sendEvent(activity.getApplicationContext(), i.a.k, CoreProtocol.getInstance(activity.getApplicationContext()), jSONObject);
            } catch (JSONException unused) {
            }
        }
        synchronized (this.e) {
            this.e.put(a, Long.valueOf(System.currentTimeMillis()));
        }
    }

    public static void b(Context context) {
        try {
            synchronized (f) {
                if (context != null) {
                    if (f.length() > 0) {
                        g.a(context).a(o.a().d(), f, g.a.AUTOPAGE);
                        f = new JSONObject();
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Activity activity) {
        long jCurrentTimeMillis = 0;
        try {
            synchronized (this.e) {
                if (this.e.containsKey(a)) {
                    jCurrentTimeMillis = System.currentTimeMillis() - this.e.get(a).longValue();
                    this.e.remove(a);
                }
            }
            synchronized (f) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    f = jSONObject;
                    jSONObject.put(b.u, a);
                    f.put("duration", jCurrentTimeMillis);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public void a() {
        this.b = false;
        Application application = this.g;
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this.d);
            this.g = null;
        }
    }

    public void a(Context context) {
        c(null);
        a();
    }
}

package com.octopus.ad.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    private String f;
    private d i;
    private String a = "OnLineStateClass";
    private int b = 0;
    private boolean c = true;
    private boolean d = false;
    private boolean e = false;
    private Map<String, String> g = new HashMap();
    private long h = 0;

    public static /* synthetic */ int d(f fVar) {
        int i = fVar.b;
        fVar.b = i + 1;
        return i;
    }

    public static /* synthetic */ int h(f fVar) {
        int i = fVar.b;
        fVar.b = i - 1;
        return i;
    }

    public void a(Context context) {
        Application application = (Application) context.getApplicationContext();
        this.h = System.currentTimeMillis() / 1000;
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.octopus.ad.utils.f.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                f.this.f = activity.getClass().getSimpleName();
                f.this.g.put(f.this.f, f.this.f);
                f.this.c = true;
                f.this.d = false;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                f.this.g.remove(activity.getClass().getSimpleName());
                if (f.this.g.size() == 0 && f.this.c) {
                    long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                    if (f.this.i != null) {
                        long unused = f.this.h;
                        f.this.i.a(jCurrentTimeMillis, f.this.h);
                        f.this.h = System.currentTimeMillis() / 1000;
                    }
                    f.this.c = false;
                }
                if (f.this.g.size() == 0) {
                    f.this.e = true;
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                f.this.d = !activity.getClass().getSimpleName().equals(f.this.f);
                f.this.f = activity.getClass().getSimpleName();
                if (!f.this.c || f.this.e) {
                    f.this.e = false;
                    if (f.this.i != null) {
                        f.this.i.a();
                    }
                    f.this.h = System.currentTimeMillis() / 1000;
                    f.this.c = true;
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                com.octopus.ad.utils.b.f.a(f.this.a, "onActivityStarted");
                f.d(f.this);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                com.octopus.ad.utils.b.f.a(f.this.a, "onActivityStopped");
                f.h(f.this);
                if (activity.getClass().getSimpleName().equals(f.this.f)) {
                    if (!f.this.d || f.this.g.size() == 1) {
                        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                        if (f.this.i != null) {
                            long unused = f.this.h;
                            f.this.i.a(f.this.h, jCurrentTimeMillis);
                            f.this.h = System.currentTimeMillis() / 1000;
                        }
                        f.this.c = false;
                    }
                }
            }
        });
    }

    public void a(d dVar) {
        this.i = dVar;
    }
}

package com.didi.virtualapk.internal;

import android.app.Activity;
import android.app.ActivityThread;
import android.app.Application;
import android.os.Bundle;
import com.didi.virtualapk.utils.Reflector;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityLifecycleCallbacksProxy implements Application.ActivityLifecycleCallbacks {
    public final ArrayList<Application.ActivityLifecycleCallbacks> mActivityLifecycleCallbacks = (ArrayList) Reflector.QuietReflector.with((Object) ActivityThread.currentApplication()).field("mActivityLifecycleCallbacks").get();

    public Object[] collectActivityLifecycleCallbacks() {
        Object[] array;
        ArrayList<Application.ActivityLifecycleCallbacks> arrayList = this.mActivityLifecycleCallbacks;
        if (arrayList == null) {
            return null;
        }
        synchronized (arrayList) {
            array = this.mActivityLifecycleCallbacks.size() > 0 ? this.mActivityLifecycleCallbacks.toArray() : null;
        }
        return array;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityCreated(activity, bundle);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityDestroyed(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityPaused(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityResumed(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivitySaveInstanceState(activity, bundle);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityStarted(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityStopped(activity);
            }
        }
    }
}

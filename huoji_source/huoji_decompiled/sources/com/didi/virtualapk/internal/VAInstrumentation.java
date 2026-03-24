package com.didi.virtualapk.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.Instrumentation;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.PersistableBundle;
import android.util.Log;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.delegate.StubActivity;
import com.didi.virtualapk.internal.utils.PluginUtil;
import com.didi.virtualapk.utils.Reflector;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VAInstrumentation extends Instrumentation implements Handler.Callback {
    public static final int LAUNCH_ACTIVITY = 100;
    public static final String TAG = "VA.VAInstrumentation";
    public final ArrayList<WeakReference<Activity>> mActivities = new ArrayList<>();
    public Instrumentation mBase;
    public PluginManager mPluginManager;

    public VAInstrumentation(PluginManager pluginManager, Instrumentation instrumentation) {
        this.mPluginManager = pluginManager;
        this.mBase = instrumentation;
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle bundle) {
        injectActivity(activity);
        this.mBase.callActivityOnCreate(activity, bundle);
    }

    @Override // android.app.Instrumentation
    @TargetApi(21)
    public void callActivityOnCreate(Activity activity, Bundle bundle, PersistableBundle persistableBundle) {
        injectActivity(activity);
        this.mBase.callActivityOnCreate(activity, bundle, persistableBundle);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i) {
        injectIntent(intent);
        return this.mBase.execStartActivity(context, iBinder, iBinder2, activity, intent, i);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i, Bundle bundle) {
        injectIntent(intent);
        return this.mBase.execStartActivity(context, iBinder, iBinder2, activity, intent, i, bundle);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i, Bundle bundle) {
        injectIntent(intent);
        return this.mBase.execStartActivity(context, iBinder, iBinder2, fragment, intent, i, bundle);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, String str, Intent intent, int i, Bundle bundle) {
        injectIntent(intent);
        return this.mBase.execStartActivity(context, iBinder, iBinder2, str, intent, i, bundle);
    }

    public List<WeakReference<Activity>> getActivities() {
        ArrayList arrayList;
        synchronized (this.mActivities) {
            arrayList = new ArrayList(this.mActivities);
        }
        return arrayList;
    }

    @Override // android.app.Instrumentation
    public ComponentName getComponentName() {
        return this.mBase.getComponentName();
    }

    @Override // android.app.Instrumentation
    public Context getContext() {
        return this.mBase.getContext();
    }

    @Override // android.app.Instrumentation
    public Context getTargetContext() {
        return this.mBase.getTargetContext();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int theme;
        if (message.what != 100) {
            return false;
        }
        try {
            Reflector reflectorWith = Reflector.with(message.obj);
            Intent intent = (Intent) reflectorWith.field("intent").get();
            ActivityInfo activityInfo = (ActivityInfo) reflectorWith.field("activityInfo").get();
            if (!PluginUtil.isIntentFromPlugin(intent) || (theme = PluginUtil.getTheme(this.mPluginManager.getHostContext(), intent)) == 0) {
                return false;
            }
            Log.i(TAG, "resolve theme, current theme:" + activityInfo.theme + "  after :0x" + Integer.toHexString(theme));
            activityInfo.theme = theme;
            return false;
        } catch (Exception e) {
            Log.w(TAG, e);
            return false;
        }
    }

    public void injectActivity(Activity activity) {
        Intent intent = activity.getIntent();
        if (PluginUtil.isIntentFromPlugin(intent)) {
            Context baseContext = activity.getBaseContext();
            try {
                LoadedPlugin loadedPlugin = this.mPluginManager.getLoadedPlugin(intent);
                Reflector.with(baseContext).field("mResources").set(loadedPlugin.getResources());
                Reflector reflectorWith = Reflector.with(activity);
                reflectorWith.field("mBase").set(loadedPlugin.createPluginContext(activity.getBaseContext()));
                reflectorWith.field("mApplication").set(loadedPlugin.getApplication());
                int i = loadedPlugin.getActivityInfo(PluginUtil.getComponent(intent)).screenOrientation;
                if (i != -1) {
                    activity.setRequestedOrientation(i);
                }
                ComponentName component = PluginUtil.getComponent(intent);
                Intent intent2 = new Intent(intent);
                intent2.setClassName(component.getPackageName(), component.getClassName());
                intent2.setExtrasClassLoader(activity.getClassLoader());
                activity.setIntent(intent2);
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
    }

    public void injectIntent(Intent intent) {
        this.mPluginManager.getComponentsHandler().transformIntentToExplicitAsNeeded(intent);
        if (intent.getComponent() != null) {
            Log.i(TAG, String.format("execStartActivity[%s : %s]", intent.getComponent().getPackageName(), intent.getComponent().getClassName()));
            this.mPluginManager.getComponentsHandler().markIntentIfNeeded(intent);
        }
    }

    public Activity newActivity(Activity activity) {
        synchronized (this.mActivities) {
            for (int size = this.mActivities.size() - 1; size >= 0; size--) {
                if (this.mActivities.get(size).get() == null) {
                    this.mActivities.remove(size);
                }
            }
            this.mActivities.add(new WeakReference<>(activity));
        }
        return activity;
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(ClassLoader classLoader, String str, Intent intent) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        Activity activityNewActivity;
        boolean z = false;
        try {
            classLoader.loadClass(str);
            Log.i(TAG, String.format("newActivity[%s]", str));
        } catch (ClassNotFoundException unused) {
            ComponentName component = PluginUtil.getComponent(intent);
            if (component != null) {
                String className = component.getClassName();
                Log.i(TAG, String.format("newActivity[%s : %s/%s]", str, component.getPackageName(), className));
                LoadedPlugin loadedPlugin = this.mPluginManager.getLoadedPlugin(component);
                if (loadedPlugin == null) {
                    try {
                        z = (2 & this.mPluginManager.getHostContext().getApplicationInfo().flags) != 0;
                    } catch (Throwable unused2) {
                    }
                    if (z) {
                        throw new ActivityNotFoundException("error intent: " + intent.toURI());
                    }
                    Log.i(TAG, "Not found. starting the stub activity: " + StubActivity.class);
                    activityNewActivity = this.mBase.newActivity(classLoader, StubActivity.class.getName(), intent);
                } else {
                    activityNewActivity = this.mBase.newActivity(loadedPlugin.getClassLoader(), className, intent);
                    activityNewActivity.setIntent(intent);
                    Reflector.QuietReflector.with((Object) activityNewActivity).field("mResources").set((Object) loadedPlugin.getResources());
                }
            }
            return newActivity(activityNewActivity);
        }
        activityNewActivity = this.mBase.newActivity(classLoader, str, intent);
        return newActivity(activityNewActivity);
    }

    @Override // android.app.Instrumentation
    public Application newApplication(ClassLoader classLoader, String str, Context context) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        return this.mBase.newApplication(classLoader, str, context);
    }
}

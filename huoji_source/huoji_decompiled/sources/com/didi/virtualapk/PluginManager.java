package com.didi.virtualapk;

import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.ActivityThread;
import android.app.Application;
import android.app.IActivityManager;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.content.IContentProvider;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.util.Singleton;
import com.didi.virtualapk.delegate.ActivityManagerProxy;
import com.didi.virtualapk.delegate.IContentProviderProxy;
import com.didi.virtualapk.delegate.RemoteContentProvider;
import com.didi.virtualapk.internal.ComponentsHandler;
import com.didi.virtualapk.internal.LoadedPlugin;
import com.didi.virtualapk.internal.VAInstrumentation;
import com.didi.virtualapk.internal.utils.PluginUtil;
import com.didi.virtualapk.utils.Reflector;
import com.didi.virtualapk.utils.RunUtil;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class PluginManager {
    public static final String TAG = "VA.PluginManager";
    private static volatile PluginManager sInstance;
    public IActivityManager mActivityManager;
    public final Application mApplication;
    public ComponentsHandler mComponentsHandler;
    public final Context mContext;
    public IContentProvider mIContentProvider;
    public VAInstrumentation mInstrumentation;
    public final Map<String, LoadedPlugin> mPlugins = new ConcurrentHashMap();
    public final List<Callback> mCallbacks = new ArrayList();

    public interface Callback {
        void onAddedLoadedPlugin(LoadedPlugin loadedPlugin);
    }

    public PluginManager(Context context) {
        Context baseContext;
        if (context instanceof Application) {
            Application application = (Application) context;
            this.mApplication = application;
            baseContext = application.getBaseContext();
        } else {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                this.mContext = context;
                this.mApplication = ActivityThread.currentApplication();
                this.mComponentsHandler = createComponentsHandler();
                hookCurrentProcess();
            }
            Application application2 = (Application) applicationContext;
            this.mApplication = application2;
            baseContext = application2.getBaseContext();
        }
        this.mContext = baseContext;
        this.mComponentsHandler = createComponentsHandler();
        hookCurrentProcess();
    }

    private static PluginManager createInstance(Context context) {
        Bundle bundle;
        String string;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (Exception e) {
            Log.w("VA.PluginManager", "Created the instance error!", e);
        }
        if (bundle != null && (string = bundle.getString("VA_FACTORY")) != null) {
            PluginManager pluginManager = (PluginManager) Reflector.on(string).method("create", Context.class).call(context);
            if (pluginManager != null) {
                Log.d("VA.PluginManager", "Created a instance of " + pluginManager.getClass());
                return pluginManager;
            }
            return new PluginManager(context);
        }
        return new PluginManager(context);
    }

    public static PluginManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (PluginManager.class) {
                if (sInstance == null) {
                    sInstance = createInstance(context);
                }
            }
        }
        return sInstance;
    }

    public void addCallback(Callback callback) {
        if (callback == null) {
            return;
        }
        synchronized (this.mCallbacks) {
            if (this.mCallbacks.contains(callback)) {
                throw new RuntimeException("Already added " + callback + "!");
            }
            this.mCallbacks.add(callback);
        }
    }

    public ActivityManagerProxy createActivityManagerProxy(IActivityManager iActivityManager) throws Exception {
        return new ActivityManagerProxy(this, iActivityManager);
    }

    public ComponentsHandler createComponentsHandler() {
        return new ComponentsHandler(this);
    }

    public VAInstrumentation createInstrumentation(Instrumentation instrumentation) throws Exception {
        return new VAInstrumentation(this, instrumentation);
    }

    public LoadedPlugin createLoadedPlugin(File file) throws Exception {
        return new LoadedPlugin(this, this.mContext, file);
    }

    public void doInWorkThread() {
    }

    public IActivityManager getActivityManager() {
        return this.mActivityManager;
    }

    public List<LoadedPlugin> getAllLoadedPlugins() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.mPlugins.values());
        return arrayList;
    }

    public ComponentsHandler getComponentsHandler() {
        return this.mComponentsHandler;
    }

    public Application getHostApplication() {
        return this.mApplication;
    }

    public Context getHostContext() {
        return this.mContext;
    }

    public synchronized IContentProvider getIContentProvider() {
        if (this.mIContentProvider == null) {
            hookIContentProviderAsNeeded();
        }
        return this.mIContentProvider;
    }

    public VAInstrumentation getInstrumentation() {
        return this.mInstrumentation;
    }

    public LoadedPlugin getLoadedPlugin(ComponentName componentName) {
        if (componentName == null) {
            return null;
        }
        return getLoadedPlugin(componentName.getPackageName());
    }

    public LoadedPlugin getLoadedPlugin(Intent intent) {
        return getLoadedPlugin(PluginUtil.getComponent(intent));
    }

    public LoadedPlugin getLoadedPlugin(String str) {
        return this.mPlugins.get(str);
    }

    public void hookCurrentProcess() {
        hookInstrumentationAndHandler();
        hookSystemServices();
        hookDataBindingUtil();
    }

    public void hookDataBindingUtil() {
        Reflector.QuietReflector quietReflectorField = Reflector.QuietReflector.on("androidx.databinding.DataBindingUtil").field("sMapper");
        if (quietReflectorField.get() != null) {
            try {
                Callback callback = (Callback) Reflector.on("androidx.databinding.DataBinderMapperProxy").constructor(new Class[0]).newInstance(new Object[0]);
                quietReflectorField.set((Object) callback);
                addCallback(callback);
                Log.d("VA.PluginManager", "hookDataBindingUtil succeed : " + callback);
            } catch (Reflector.ReflectedException unused) {
            }
        }
    }

    public void hookIContentProviderAsNeeded() {
        Field declaredField = null;
        this.mContext.getContentResolver().call(Uri.parse(RemoteContentProvider.getUri(this.mContext)), "wakeup", (String) null, (Bundle) null);
        try {
            for (Map.Entry entry : ((Map) Reflector.with(ActivityThread.currentActivityThread()).field("mProviderMap").get()).entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (!(key instanceof String)) {
                    if (declaredField == null) {
                        declaredField = key.getClass().getDeclaredField("authority");
                        declaredField.setAccessible(true);
                    }
                    key = declaredField.get(key);
                }
                if (((String) key).equals(RemoteContentProvider.getAuthority(this.mContext))) {
                    Field declaredField2 = value.getClass().getDeclaredField("mProvider");
                    declaredField2.setAccessible(true);
                    this.mIContentProvider = IContentProviderProxy.newInstance(this.mContext, (IContentProvider) declaredField2.get(value));
                    Log.d("VA.PluginManager", "hookIContentProvider succeed : " + this.mIContentProvider);
                    return;
                }
            }
        } catch (Exception e) {
            Log.w("VA.PluginManager", e);
        }
    }

    public void hookInstrumentationAndHandler() {
        try {
            ActivityThread activityThreadCurrentActivityThread = ActivityThread.currentActivityThread();
            VAInstrumentation vAInstrumentationCreateInstrumentation = createInstrumentation(activityThreadCurrentActivityThread.getInstrumentation());
            Reflector.with(activityThreadCurrentActivityThread).field("mInstrumentation").set(vAInstrumentationCreateInstrumentation);
            Reflector.with((Handler) Reflector.with(activityThreadCurrentActivityThread).method("getHandler", new Class[0]).call(new Object[0])).field("mCallback").set(vAInstrumentationCreateInstrumentation);
            this.mInstrumentation = vAInstrumentationCreateInstrumentation;
            Log.d("VA.PluginManager", "hookInstrumentationAndHandler succeed : " + this.mInstrumentation);
        } catch (Exception e) {
            Log.w("VA.PluginManager", e);
        }
    }

    public void hookSystemServices() {
        try {
            Singleton singleton = (Singleton) (Build.VERSION.SDK_INT >= 26 ? Reflector.on((Class<?>) ActivityManager.class).field("IActivityManagerSingleton").get() : Reflector.on((Class<?>) ActivityManagerNative.class).field("gDefault").get());
            IActivityManager iActivityManager = (IActivityManager) Proxy.newProxyInstance(this.mContext.getClassLoader(), new Class[]{IActivityManager.class}, createActivityManagerProxy((IActivityManager) singleton.get()));
            Reflector.with(singleton).field("mInstance").set(iActivityManager);
            if (singleton.get() == iActivityManager) {
                this.mActivityManager = iActivityManager;
                Log.d("VA.PluginManager", "hookSystemServices succeed : " + this.mActivityManager);
            }
        } catch (Exception e) {
            Log.w("VA.PluginManager", e);
        }
    }

    public void init() {
        RunUtil.getThreadPool().execute(new Runnable() { // from class: com.didi.virtualapk.PluginManager.1
            @Override // java.lang.Runnable
            public void run() {
                PluginManager.this.doInWorkThread();
            }
        });
    }

    public void loadPlugin(File file) throws Exception {
        if (file == null) {
            throw new IllegalArgumentException("error : apk is null.");
        }
        if (!file.exists()) {
            new FileInputStream(file).close();
        }
        LoadedPlugin loadedPluginCreateLoadedPlugin = createLoadedPlugin(file);
        if (loadedPluginCreateLoadedPlugin == null) {
            throw new RuntimeException("Can't load plugin which is invalid: " + file.getAbsolutePath());
        }
        this.mPlugins.put(loadedPluginCreateLoadedPlugin.getPackageName(), loadedPluginCreateLoadedPlugin);
        synchronized (this.mCallbacks) {
            for (int i = 0; i < this.mCallbacks.size(); i++) {
                this.mCallbacks.get(i).onAddedLoadedPlugin(loadedPluginCreateLoadedPlugin);
            }
        }
    }

    @Deprecated
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i) {
        ArrayList arrayList = new ArrayList();
        Iterator<LoadedPlugin> it = this.mPlugins.values().iterator();
        while (it.hasNext()) {
            List<ResolveInfo> listQueryBroadcastReceivers = it.next().queryBroadcastReceivers(intent, i);
            if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
                arrayList.addAll(listQueryBroadcastReceivers);
            }
        }
        return arrayList;
    }

    @Deprecated
    public List<ResolveInfo> queryIntentActivities(Intent intent, int i) {
        ArrayList arrayList = new ArrayList();
        Iterator<LoadedPlugin> it = this.mPlugins.values().iterator();
        while (it.hasNext()) {
            List<ResolveInfo> listQueryIntentActivities = it.next().queryIntentActivities(intent, i);
            if (listQueryIntentActivities != null && listQueryIntentActivities.size() > 0) {
                arrayList.addAll(listQueryIntentActivities);
            }
        }
        return arrayList;
    }

    @Deprecated
    public List<ResolveInfo> queryIntentServices(Intent intent, int i) {
        ArrayList arrayList = new ArrayList();
        Iterator<LoadedPlugin> it = this.mPlugins.values().iterator();
        while (it.hasNext()) {
            List<ResolveInfo> listQueryIntentServices = it.next().queryIntentServices(intent, i);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                arrayList.addAll(listQueryIntentServices);
            }
        }
        return arrayList;
    }

    public void removeCallback(Callback callback) {
        synchronized (this.mCallbacks) {
            this.mCallbacks.remove(callback);
        }
    }

    public ResolveInfo resolveActivity(Intent intent) {
        return resolveActivity(intent, 0);
    }

    public ResolveInfo resolveActivity(Intent intent, int i) {
        Iterator<LoadedPlugin> it = this.mPlugins.values().iterator();
        while (it.hasNext()) {
            ResolveInfo resolveInfoResolveActivity = it.next().resolveActivity(intent, i);
            if (resolveInfoResolveActivity != null) {
                return resolveInfoResolveActivity;
            }
        }
        return null;
    }

    public ProviderInfo resolveContentProvider(String str, int i) {
        Iterator<LoadedPlugin> it = this.mPlugins.values().iterator();
        while (it.hasNext()) {
            ProviderInfo providerInfoResolveContentProvider = it.next().resolveContentProvider(str, i);
            if (providerInfoResolveContentProvider != null) {
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    public ResolveInfo resolveService(Intent intent, int i) {
        Iterator<LoadedPlugin> it = this.mPlugins.values().iterator();
        while (it.hasNext()) {
            ResolveInfo resolveInfoResolveService = it.next().resolveService(intent, i);
            if (resolveInfoResolveService != null) {
                return resolveInfoResolveService;
            }
        }
        return null;
    }
}

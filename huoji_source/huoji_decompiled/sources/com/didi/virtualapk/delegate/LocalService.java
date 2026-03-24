package com.didi.virtualapk.delegate;

import android.app.ActivityThread;
import android.app.Application;
import android.app.IServiceConnection;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import com.anythink.expressad.d.a.b;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.internal.LoadedPlugin;
import com.didi.virtualapk.internal.utils.PluginUtil;
import com.didi.virtualapk.utils.Reflector;

/* JADX INFO: loaded from: classes2.dex */
public class LocalService extends Service {
    public static final String EXTRA_COMMAND = "command";
    public static final int EXTRA_COMMAND_BIND_SERVICE = 3;
    public static final int EXTRA_COMMAND_START_SERVICE = 1;
    public static final int EXTRA_COMMAND_STOP_SERVICE = 2;
    public static final int EXTRA_COMMAND_UNBIND_SERVICE = 4;
    public static final String EXTRA_PLUGIN_LOCATION = "plugin_location";
    public static final String EXTRA_TARGET = "target";
    private static final String TAG = "VA.LocalService";
    private PluginManager mPluginManager;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new Binder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mPluginManager = PluginManager.getInstance(this);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0188 -> B:78:0x006e). Please report as a decompilation issue!!! */
    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Service service;
        String str;
        StringBuilder sb;
        Service service2;
        Service service3;
        if (intent == null || !intent.hasExtra(EXTRA_TARGET) || !intent.hasExtra("command")) {
            return 1;
        }
        Intent intent2 = (Intent) intent.getParcelableExtra(EXTRA_TARGET);
        int intExtra = intent.getIntExtra("command", 0);
        if (intent2 == null || intExtra <= 0) {
            return 1;
        }
        ComponentName component = intent2.getComponent();
        LoadedPlugin loadedPlugin = this.mPluginManager.getLoadedPlugin(component);
        if (loadedPlugin == null) {
            Log.w(TAG, "Error target: " + intent2.toURI());
            return 1;
        }
        intent2.setExtrasClassLoader(loadedPlugin.getClassLoader());
        if (intExtra == 1) {
            ActivityThread activityThreadCurrentActivityThread = ActivityThread.currentActivityThread();
            ActivityThread.ApplicationThread applicationThread = activityThreadCurrentActivityThread.getApplicationThread();
            if (this.mPluginManager.getComponentsHandler().isServiceAvailable(component)) {
                service = this.mPluginManager.getComponentsHandler().getService(component);
            } else {
                try {
                    Service service4 = (Service) loadedPlugin.getClassLoader().loadClass(component.getClassName()).newInstance();
                    service4.getClass().getMethod("attach", Context.class, ActivityThread.class, String.class, IBinder.class, Application.class, Object.class).invoke(service4, loadedPlugin.getPluginContext(), activityThreadCurrentActivityThread, component.getClassName(), applicationThread.asBinder(), loadedPlugin.getApplication(), this.mPluginManager.getActivityManager());
                    service4.onCreate();
                    this.mPluginManager.getComponentsHandler().rememberService(component, service4);
                    service = service4;
                } catch (Throwable unused) {
                    return 1;
                }
            }
            service.onStartCommand(intent2, 0, this.mPluginManager.getComponentsHandler().getServiceCounter(service).getAndIncrement());
            return 1;
        }
        if (intExtra == 2) {
            Service serviceForgetService = this.mPluginManager.getComponentsHandler().forgetService(component);
            if (serviceForgetService == null) {
                sb = new StringBuilder();
                sb.append(component);
                sb.append(" not found");
                Log.i(TAG, sb.toString());
                return 1;
            }
            try {
                serviceForgetService.onDestroy();
                return 1;
            } catch (Exception e) {
                str = "Unable to stop service " + serviceForgetService + ": " + e.toString();
                Log.e(TAG, str);
                return 1;
            }
        }
        if (intExtra != 3) {
            if (intExtra != 4) {
                return 1;
            }
            Service serviceForgetService2 = this.mPluginManager.getComponentsHandler().forgetService(component);
            if (serviceForgetService2 == null) {
                sb = new StringBuilder();
                sb.append(component);
                sb.append(" not found");
                Log.i(TAG, sb.toString());
                return 1;
            }
            try {
                serviceForgetService2.onUnbind(intent2);
                serviceForgetService2.onDestroy();
                return 1;
            } catch (Exception e2) {
                str = "Unable to unbind service " + serviceForgetService2 + ": " + e2.toString();
                Log.e(TAG, str);
                return 1;
            }
        }
        ActivityThread activityThreadCurrentActivityThread2 = ActivityThread.currentActivityThread();
        ActivityThread.ApplicationThread applicationThread2 = activityThreadCurrentActivityThread2.getApplicationThread();
        if (this.mPluginManager.getComponentsHandler().isServiceAvailable(component)) {
            service3 = this.mPluginManager.getComponentsHandler().getService(component);
        } else {
            try {
                service2 = (Service) loadedPlugin.getClassLoader().loadClass(component.getClassName()).newInstance();
            } catch (Throwable th) {
                th = th;
                service2 = null;
            }
            try {
                service2.getClass().getMethod("attach", Context.class, ActivityThread.class, String.class, IBinder.class, Application.class, Object.class).invoke(service2, loadedPlugin.getPluginContext(), activityThreadCurrentActivityThread2, component.getClassName(), applicationThread2.asBinder(), loadedPlugin.getApplication(), this.mPluginManager.getActivityManager());
                service2.onCreate();
                this.mPluginManager.getComponentsHandler().rememberService(component, service2);
            } catch (Throwable th2) {
                th = th2;
                Log.w(TAG, th);
            }
            service3 = service2;
        }
        try {
            IBinder iBinderOnBind = service3.onBind(intent2);
            IServiceConnection iServiceConnectionAsInterface = IServiceConnection.Stub.asInterface(PluginUtil.getBinder(intent.getExtras(), b.bH));
            if (Build.VERSION.SDK_INT >= 26) {
                iServiceConnectionAsInterface.connected(component, iBinderOnBind, false);
            } else {
                Reflector.QuietReflector.with((Object) iServiceConnectionAsInterface).method("connected", ComponentName.class, IBinder.class).call(component, iBinderOnBind);
            }
        } catch (Exception e3) {
            Log.w(TAG, e3);
        }
        return 1;
    }
}

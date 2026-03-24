package z2;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import com.cyjh.event.Injector;
import com.cyjh.mobileanjian.ipc.interfaces.OnEngineStartCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener;
import com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener;
import com.cyjh.mobileanjian.ipc.rpc.AndroidHelper;
import com.cyjh.mq.service.IpcService;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class ag {
    private static RootProgressListener OooO = null;
    public static final String OooO00o = "start_eventsrv";
    public static final String OooO0O0 = "start_eventsrvR";
    public static final String OooO0OO = ".event.localserver";
    public static final String OooO0Oo = "com.cyjh.mobileanjian.ipc.ClientService";
    public static final String OooO0o = "libmqm.so";
    public static final String OooO0o0 = "DaemonClient.zip";
    private static Application OooO0oO = null;
    private static OnKeyEventListener OooO0oo = null;
    private static OnEngineStartCallback OooOO0 = null;
    public static String OooOO0O = "";

    public static OnEngineStartCallback OooO() {
        return OooOO0;
    }

    public static void OooO00o() {
        if (OooO0oO != null) {
            OooO0oO.stopService(new Intent(OooO0oO, (Class<?>) IpcService.class));
        }
    }

    public static void OooO0O0(Application application, OnKeyEventListener onKeyEventListener, RootProgressListener rootProgressListener, OnEngineStartCallback onEngineStartCallback) {
        if (OooO0oO != null) {
            return;
        }
        OooO0oO = application;
        OooO0oo = onKeyEventListener;
        OooO = rootProgressListener;
        OooOO0 = onEngineStartCallback;
        Injector.init(application.getApplicationContext());
        AndroidHelper.init(application);
        application.startService(new Intent(application, (Class<?>) IpcService.class));
    }

    public static void OooO0OO(String str) {
        OooOO0O = str;
    }

    public static Application OooO0Oo() {
        return OooO0oO;
    }

    public static File OooO0o() {
        return new File(OooO0oO.getFilesDir(), OooO0O0);
    }

    public static Context OooO0o0() {
        return OooO0oO.getApplicationContext();
    }

    public static OnKeyEventListener OooO0oO() {
        return OooO0oo;
    }

    public static RootProgressListener OooO0oo() {
        return OooO;
    }

    private static File OooOO0() {
        return new File(OooO0oO.getFilesDir(), OooO00o);
    }
}

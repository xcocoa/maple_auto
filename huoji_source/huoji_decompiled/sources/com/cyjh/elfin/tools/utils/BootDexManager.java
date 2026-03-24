package com.cyjh.elfin.tools.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.anythink.expressad.d.a.b;
import com.cyjh.common.util.toast.ThreadUtils;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.tools.utils.BootDexManager;
import com.cyjh.elfin.ui.activity.SplashActivity;
import java.io.File;
import z2.e5;
import z2.f6;
import z2.g6;
import z2.o4;
import z2.x4;
import z2.y4;

/* JADX INFO: loaded from: classes.dex */
public class BootDexManager {
    private static final String OooO0OO = "com.cyjh.elfin.tools.utils.BootDexManager";
    private static final String OooO0Oo = "com.cyjh.boot.MY_ACTION";
    private static volatile BootDexManager OooO0o = null;
    private static final String OooO0o0 = "com.cyjh.logcat.LOGCAT_ACTION";
    private boolean OooO0O0 = false;
    private AppRebootBroadcastReceiver OooO00o = new AppRebootBroadcastReceiver();

    public class AppRebootBroadcastReceiver extends BroadcastReceiver {
        public AppRebootBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BootDexManager.OooO0Oo.equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra(b.aB);
                String stringExtra2 = intent.getStringExtra("packageName");
                String unused = BootDexManager.OooO0OO;
                String str = "=====保活-pid:" + stringExtra + "==packageName:" + stringExtra2;
                if (stringExtra2.equals(AppContext.OooO00o().getPackageName())) {
                    AppContext.OooO00o().ooOO = stringExtra;
                    return;
                }
                return;
            }
            if (BootDexManager.OooO0o0.equals(intent.getAction())) {
                String stringExtra3 = intent.getStringExtra(b.aB);
                String stringExtra4 = intent.getStringExtra("packageName");
                String unused2 = BootDexManager.OooO0OO;
                String str2 = "=====logcat-pid:" + stringExtra3 + "==packageName:" + stringExtra4;
                if (stringExtra4.equals(AppContext.OooO00o().getPackageName())) {
                    AppContext.OooO00o().o00O0O = stringExtra3;
                }
            }
        }
    }

    public class OooO00o extends ThreadUtils.OooO0o<Object> {
        public OooO00o() {
        }

        @Override // com.cyjh.common.util.toast.ThreadUtils.OooOO0
        public Object OooO0o() throws Throwable {
            BootDexManager.this.OooO0o();
            return "";
        }

        @Override // com.cyjh.common.util.toast.ThreadUtils.OooOO0
        public void OooOOO0(Object obj) {
        }
    }

    public BootDexManager() {
        IntentFilter intentFilter = new IntentFilter(OooO0Oo);
        intentFilter.addAction(OooO0o0);
        AppContext.OooO00o().registerReceiver(this.OooO00o, intentFilter);
    }

    public static BootDexManager OooO0OO() {
        if (OooO0o == null) {
            synchronized (BootDexManager.class) {
                if (OooO0o == null) {
                    OooO0o = new BootDexManager();
                }
            }
        }
        return OooO0o;
    }

    public static /* synthetic */ void OooO0Oo() {
        try {
            y4.OooO00o oooO00oOooO0oO = y4.OooO0oO(new String[]{"export CLASSPATH=" + AppContext.OooO00o().getFilesDir() + File.separator + g6.OooOo0o, "exec /system/bin/app_process32 " + AppContext.OooO00o().getFilesDir() + " com.cyjh.bootdex.DexMain " + AppContext.OooO00o().getPackageName() + o4.OooO00o.OooO0Oo + SplashActivity.class.getName() + " &"}, true, 0);
            boolean zIsEmpty = TextUtils.isEmpty(oooO00oOooO0oO.OooO0OO);
            StringBuilder sb = new StringBuilder();
            sb.append("=====startDex --> errorMsg=");
            sb.append(oooO00oOooO0oO.OooO0OO);
            sb.append(",successMsg=");
            sb.append(oooO00oOooO0oO.OooO0O0);
            sb.append(",cmdResult=");
            sb.append(zIsEmpty);
            sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static /* synthetic */ void OooO0o0(String str) {
        try {
            y4.OooO00o oooO00oOooO0oO = y4.OooO0oO(new String[]{"export CLASSPATH=" + AppContext.OooO00o().getFilesDir() + File.separator + g6.OooOo0o, "exec /system/bin/app_process32 " + AppContext.OooO00o().getFilesDir() + " com.cyjh.logcatdex.LogcatDexMain " + AppContext.OooO00o().getPackageName() + " \"" + str + "\" &"}, true, 0);
            boolean zIsEmpty = TextUtils.isEmpty(oooO00oOooO0oO.OooO0OO);
            StringBuilder sb = new StringBuilder();
            sb.append("=====startLogcatDex --> errorMsg=");
            sb.append(oooO00oOooO0oO.OooO0OO);
            sb.append(",successMsg=");
            sb.append(oooO00oOooO0oO.OooO0O0);
            sb.append(",cmdResult=");
            sb.append(zIsEmpty);
            sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO() {
        if (TextUtils.isEmpty(AppContext.OooO00o().o00O0O)) {
            return;
        }
        y4.OooO0OO("kill " + AppContext.OooO00o().o00O0O, true, 0);
        AppContext.OooO00o().o00O0O = "";
    }

    public void OooO0O0() {
        boolean zOooO00o = x4.OooO0O0().OooO00o(f6.OooOo0, Boolean.FALSE);
        this.OooO0O0 = zOooO00o;
        if (zOooO00o && TextUtils.isEmpty(AppContext.OooO00o().ooOO)) {
            com.cyjh.common.util.toast.ThreadUtils.OooOO0O(new OooO00o());
            return;
        }
        if (TextUtils.isEmpty(AppContext.OooO00o().ooOO)) {
            return;
        }
        y4.OooO0OO("kill " + AppContext.OooO00o().ooOO, true, 0);
        AppContext.OooO00o().ooOO = "";
    }

    public void OooO0o() {
        e5.OooO00o().OooO0o(new Runnable() { // from class: z2.i8
            @Override // java.lang.Runnable
            public final void run() {
                BootDexManager.OooO0Oo();
            }
        });
    }

    public void OooO0oO(final String str) {
        e5.OooO00o().OooO0o(new Runnable() { // from class: z2.j8
            @Override // java.lang.Runnable
            public final void run() {
                BootDexManager.OooO0o0(str);
            }
        });
    }

    public void OooO0oo() {
        if (TextUtils.isEmpty(AppContext.OooO00o().ooOO)) {
            return;
        }
        y4.OooO0OO("kill " + AppContext.OooO00o().ooOO, true, 0);
        AppContext.OooO00o().ooOO = "";
    }

    public void OooOO0() {
        AppContext.OooO00o().unregisterReceiver(this.OooO00o);
    }

    public void OooOO0O(String str) {
        try {
            y4.OooO00o oooO00oOooO0oO = y4.OooO0oO(new String[]{"export CLASSPATH=" + AppContext.OooO00o().getFilesDir() + File.separator + g6.OooOo0o, "exec /system/bin/app_process32 " + AppContext.OooO00o().getFilesDir() + " com.cyjh.file.FileDexMain " + str + " &"}, true, 0);
            boolean zIsEmpty = TextUtils.isEmpty(oooO00oOooO0oO.OooO0OO);
            StringBuilder sb = new StringBuilder();
            sb.append("=====startFileDex --> errorMsg=");
            sb.append(oooO00oOooO0oO.OooO0OO);
            sb.append(",successMsg=");
            sb.append(oooO00oOooO0oO.OooO0O0);
            sb.append(",cmdResult=");
            sb.append(zIsEmpty);
            sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

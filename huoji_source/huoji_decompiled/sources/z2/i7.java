package z2;

import android.app.Application;
import android.content.Intent;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.ac.R;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.tools.utils.BootDexManager;
import com.cyjh.elfin.ui.activity.ElfinFreeActivity;
import com.cyjh.http.bean.request.DeviceInfo;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.mobileanjian.ipc.rpc.RestartScriptHelper;
import com.rck.yt.ten.cn.Orcck;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.function.ToLongFunction;
import org.json.JSONObject;
import z2.ad;
import z2.kc;

/* JADX INFO: loaded from: classes.dex */
public class i7 {
    private static final int OooOO0o = 3000;
    private static final i7 OooOOO = new i7();
    private static final String OooOOO0 = "z2.i7";
    private String OooO0O0;
    private int OooO0OO;
    private int OooOO0;
    private boolean OooO00o = false;
    private final Object OooO0Oo = new Object();
    private boolean OooO0o0 = false;
    private final Handler OooO0o = new OooO00o(Looper.getMainLooper());
    private final ji OooO0oO = new OooO0O0();
    private boolean OooO0oo = true;
    public boolean OooO = true;
    public boolean OooOO0O = true;

    public class OooO implements r3<Boolean> {
        public OooO() {
        }

        @Override // z2.r3
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void OooO00o(Boolean bool) {
            i7.this.OooO0oo = false;
            i7.this.OooO = bool.booleanValue();
        }

        @Override // z2.r3
        public void error(String str) {
            i7.this.OooO0oo = true;
        }
    }

    public class OooO00o extends Handler {
        public OooO00o(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1 || i == 2 || i != 3) {
                return;
            }
            oi.OooO0o().OooO0o0((String) message.obj, i7.this.OooOO0());
        }
    }

    public class OooO0O0 implements ji {

        public class OooO00o implements ad.OooO00o {
            public OooO00o() {
            }

            @Override // z2.ad.OooO00o
            public void OooO00o(int i, String str) {
            }

            @Override // z2.ad.OooO00o
            public void OooO0O0(String str) {
            }
        }

        public OooO0O0() {
        }

        @Override // z2.ji
        public void callback(int i, String str) {
            i7.this.OooO0o0(i, str);
        }

        @Override // z2.ji
        public void doSpecialFuction(int i, String str) {
            Script scriptOooO0oO;
            if (!c9.OooO0oo() || (scriptOooO0oO = b7.OooO0Oo().OooO0oO()) == null) {
                return;
            }
            ad.OooO0o().OooOO0(AppContext.OooO00o(), scriptOooO0oO.getId(), str, new OooO00o());
        }

        @Override // z2.ji
        public String getForegroundPackage() {
            return i7.this.OooO0oo();
        }

        @Override // z2.ji
        public String getRunningPackages() {
            return oi.OooO0o().OooO0OO().getRunningPackages();
        }

        @Override // z2.ji
        public void inputText(String str) {
            Intent intent = new Intent("_VA_" + i7.this.OooO0oo());
            intent.putExtra(c3.OooO00o, 1);
            intent.putExtra(c3.OooO0o0, str);
            AppContext.OooO00o().sendBroadcast(intent);
        }

        @Override // z2.ji
        public void keyPress(int i) {
            Intent intent = new Intent("_VA_" + i7.this.OooO0oo());
            intent.putExtra(c3.OooO00o, 2);
            intent.putExtra(c3.OooO0Oo, i);
            AppContext.OooO00o().sendBroadcast(intent);
        }

        @Override // z2.ji
        public void killApp(String str) {
            oi.OooO0o().OooO0OO().OooO00o(str, i7.this.OooOO0());
        }

        @Override // z2.ji
        public void launchApp(String str) {
            Message messageObtainMessage = i7.this.OooO0o.obtainMessage();
            messageObtainMessage.what = 3;
            messageObtainMessage.obj = str;
            i7.this.OooO0o.sendMessage(messageObtainMessage);
        }

        @Override // z2.ji
        public void onEngineStart(int i) {
            i7.this.OooOOo(i);
        }

        @Override // z2.ji
        public void onKeyEvent(int i) {
            String str = "onKeyEvent1: -- " + i;
            i7.this.OooOOoo(i);
        }

        @Override // z2.ji
        public void onPause() {
            i7.this.OooOo00();
        }

        @Override // z2.ji
        public void onResume() {
            i7.this.OooOo0();
        }

        @Override // z2.ji
        public void onScriptIsRunning() {
            i7.this.OooOo0O();
        }

        @Override // z2.ji
        public void onSetControlBarVisiable(int i) {
            i7.this.OooOo0o(i);
        }

        @Override // z2.ji
        public void onStartScript() {
            i7.this.OooOo();
        }

        @Override // z2.ji
        public void onStopScript(int i, String str) {
            i7.this.OooOoO0(i, str);
        }

        @Override // z2.ji
        public void onUpdateControlBarPos(float f, int i, int i2) {
            i7.this.OooOoO(f, i, i2);
        }
    }

    public class OooO0OO implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ String OoooOoo;
        public final /* synthetic */ String Ooooo00;
        public final /* synthetic */ long Ooooo0o;
        public final /* synthetic */ String OooooO0;

        public OooO0OO(String str, String str2, String str3, long j, String str4) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
            this.Ooooo00 = str3;
            this.Ooooo0o = j;
            this.OooooO0 = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (i7.this.OooO0Oo) {
                ii.OooOo00(this.OoooOoO, this.OoooOoo, this.Ooooo00, this.Ooooo0o, this.OooooO0);
            }
        }
    }

    public class OooO0o implements Runnable {
        public OooO0o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (i7.this.OooO0Oo) {
                ii.OooOo0o();
            }
        }
    }

    public class OooOO0 implements Runnable {
        public OooOO0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b7.OooO0o = false;
        }
    }

    public class OooOO0O implements View.OnClickListener {
        public final /* synthetic */ ba OoooOoO;

        public OooOO0O(ba baVar) {
            this.OoooOoO = baVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.OoooOoO.dismiss();
        }
    }

    public class OooOOO0 implements kc.OooO00o {
        public OooOOO0() {
        }

        @Override // z2.kc.OooO00o
        public void OooO00o(VersionUpdateInfo versionUpdateInfo) {
        }

        @Override // z2.kc.OooO00o
        public void OooO0O0(VersionUpdateInfo versionUpdateInfo) {
        }

        @Override // z2.kc.OooO00o
        public void OooO0OO(VersionUpdateInfo versionUpdateInfo) {
            String unused = i7.OooOOO0;
            if (versionUpdateInfo == null) {
                return;
            }
            Intent intent = new Intent(AppContext.OooO00o(), (Class<?>) ElfinFreeActivity.class);
            intent.putExtra("needUpdate", true);
            AppContext.OooO00o().startActivity(intent);
        }
    }

    public static i7 OooO() {
        return OooOOO;
    }

    private void OooO0o() {
        File[] fileArrListFiles = new File(Environment.getExternalStorageDirectory() + "/Logcat").listFiles();
        Arrays.sort(fileArrListFiles, Comparator.comparingLong(new ToLongFunction() { // from class: z2.e7
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((File) obj).lastModified();
            }
        }));
        if (fileArrListFiles.length > 3) {
            for (int i = 0; i < fileArrListFiles.length - 3; i++) {
                fileArrListFiles[i].delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooOOOO, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooOOOo() {
        while (!this.OooO0o0) {
            SystemClock.sleep(500L);
        }
    }

    private void OooOoo0(String str) {
        if (ba.Ooooo0o && !ba.OooooO0) {
            l10.OooO0o().OooOOOO(new MsgItem(1005));
        }
        if (ba.Ooooo0o) {
            l10.OooO0o().OooOOOO(new MsgItem.UpdateMessageToDialog(str));
            return;
        }
        ba baVar = new ba(AppContext.OooO00o(), true, str);
        baVar.OooO0O0(new OooOO0O(baVar));
        baVar.show();
    }

    private void Oooo0OO() {
        if (!OooOOO()) {
            j7.OooO0O0().OooO0o(d8.OooOOO);
        } else {
            Oooo0o0();
            b7.OooO0o = false;
        }
    }

    private void Oooo0oO() {
        if (z6.OooO0Oo().OooO0OO() != null) {
            z6.OooO0Oo().OooO0OO().Oooo0();
            z6.OooO0Oo().OooO0OO().Ooooo00();
        }
    }

    public void OooO0o0(int i, String str) {
        String string;
        try {
            String str2 = "code 222:" + i + " , json:" + str;
            if (i == 31) {
                ae.Oooo0o0("heartbeatCheckFree.txt", AppContext.OooO00o(), "callback code:" + i + ", json:" + str, true);
                string = AppContext.OooO00o().getString(R.string.check_heartbeat_failed) + "(" + str + ")";
            } else if (i == 32) {
                string = new JSONObject(str).getString(g6.OooO0Oo);
            } else if (i == 33) {
                string = AppContext.OooO00o().getString(R.string.no_get_heartbeat_time);
            } else {
                if (i == 36) {
                    l10.OooO0o().OooOOOO(new MsgItem(2000));
                    return;
                }
                if (i != 34) {
                    if (i == 37) {
                        ae.Oooo0o0("heartbeatCheckFree.txt", AppContext.OooO00o(), "callback code:" + i + ", json:" + str, true);
                        b7.OooO0Oo().OooO0OO = 4;
                        return;
                    }
                    return;
                }
                string = new JSONObject(str).getString(g6.OooO0Oo);
            }
            OooOoo0(string);
        } catch (Exception e) {
            e.printStackTrace();
            c5.OooO0OO(AppContext.OooO00o(), e.getMessage());
        }
    }

    public void OooO0oO() {
        this.OooO00o = true;
        Oooo0o0();
    }

    public String OooO0oo() {
        return this.OooO0O0;
    }

    public int OooOO0() {
        return this.OooO0OO;
    }

    public void OooOO0O(Application application) {
        ii.OooO0Oo(application);
    }

    public void OooOO0o() {
        ii.OooO0o0(AppContext.OooO00o(), AppContext.OooO00o().getString(R.string.pay_appid), AppContext.OooO00o().getString(R.string.pay_vsersion), Environment.getExternalStorageDirectory() + File.separator + k3.o0O0O00, this.OooO0oO);
        Orcck.addOcrTest(AppContext.OooO00o());
        Orcck.init();
    }

    public boolean OooOOO() {
        return ii.OooO0oo();
    }

    public void OooOOO0(String str, String str2, String str3) {
        ii.OooO0o(str, str2, str3);
    }

    public void OooOOo(int i) {
        String str = "onEngineStart:" + i;
        this.OooO0o0 = true;
    }

    public void OooOOoo(int i) {
        AppContext appContextOooO00o;
        int i2;
        if (x4.OooO0O0().OooO00o(f6.OooOO0o, Boolean.TRUE) && i == 114) {
            if (!t4.OooOO0(AppContext.OooO00o())) {
                appContextOooO00o = AppContext.OooO00o();
                i2 = R.string.network_off;
            } else if (AppContext.OooO00o().OoooOoo) {
                appContextOooO00o = AppContext.OooO00o();
                i2 = R.string.version_too_low;
            } else if (!AppContext.OooO00o().Ooooo00) {
                appContextOooO00o = AppContext.OooO00o();
                i2 = R.string.volume_run_script_tips;
            } else {
                if (!b7.OooO0o) {
                    b7.OooO0o = true;
                    OooO().Oooo0OO();
                    this.OooO0o.removeCallbacksAndMessages(null);
                    this.OooO0o.postDelayed(new OooOO0(), com.anythink.expressad.video.module.a.a.m.ag);
                    return;
                }
                appContextOooO00o = AppContext.OooO00o();
                i2 = R.string.volume_click_hips;
            }
            c5.OooO0Oo(appContextOooO00o, i2);
        }
    }

    public void OooOo() {
        x4.OooO0O0().OooO0o(f6.OooOo, Boolean.TRUE);
        this.OooO00o = false;
        j7.OooO0O0().OooO0o0(4);
        q7.OooO0o0().OooOO0();
        b7.OooO0Oo().OooO0OO = 2;
        this.OooO = false;
        x4 x4VarOooO0O0 = x4.OooO0O0();
        Boolean bool = Boolean.FALSE;
        if (x4VarOooO0O0.OooO00o(f6.OooOo0, bool)) {
            BootDexManager.OooO0OO().OooO0o();
        }
        if (x4.OooO0O0().OooO00o(f6.OooOOo, bool)) {
            BootDexManager.OooO0OO().OooO0oO(x4.OooO0O0().OooO0Oo(f6.OooOo00, "logcat -v time"));
        }
        h7.OooO0o(new OooO());
        d7.OooO00o().OooO0o0();
        Oooo0oO();
    }

    public void OooOo0() {
        b7.OooO0Oo().OooO0OO = 2;
        Oooo0oO();
        this.OooOO0O = true;
    }

    public void OooOo00() {
        if (4 == b7.OooO0Oo().OooO0OO) {
            s4.OooO00o(AppContext.OooO00o(), AppContext.OooO00o().getString(R.string.script_run_pausing));
            return;
        }
        b7.OooO0Oo().OooO0OO = 3;
        if (this.OooOO0O) {
            Oooo0oO();
            this.OooOO0O = false;
        }
    }

    public void OooOo0O() {
        b7.OooO0Oo().OooO0OO = 2;
    }

    public void OooOo0o(int i) {
        z6.OooO0Oo().OooO0OO().setControlbarVisiable(i);
    }

    public void OooOoO(float f, int i, int i2) {
        Oooo0oO();
        z6.OooO0Oo().OooO0OO().o000oOoO(f, i, i2);
    }

    public void OooOoO0(int i, String str) {
        x4 x4VarOooO0O0 = x4.OooO0O0();
        Boolean bool = Boolean.FALSE;
        if (x4VarOooO0O0.OooO00o(f6.OooOOoo, bool)) {
            if (i == 115) {
                v6 v6Var = new v6(AppContext.OooO00o());
                v6Var.show();
                v6Var.OooO0oo("Code:" + i + " \n " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis())) + " \nMsg:" + str);
            } else if (i == 1002) {
                String strOooOO0o = k4.OooOO0o(new File("/sdcard/engine_common.txt"));
                if (TextUtils.isEmpty(strOooOO0o)) {
                    strOooOO0o = str;
                }
                v6 v6Var2 = new v6(AppContext.OooO00o());
                v6Var2.show();
                v6Var2.OooO0oo("Code:" + i + " \n " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis())) + " \nMsg:" + strOooOO0o);
            }
        }
        String str2 = "onStopScript: returnCode1 = " + i + ", msg:" + str;
        x4.OooO0O0().OooO0o(f6.OooOo, bool);
        j7.OooO0O0().OooO0o0(1);
        b7.OooO0Oo().OooO0OO = 1;
        this.OooO = true;
        ae.Oooo0o0("heartbeatCheckFree.txt", AppContext.OooO00o(), "onStopScript - callback code:" + i + "\n", true);
        if (x4.OooO0O0().OooO00o(f6.OooOo0, bool)) {
            BootDexManager.OooO0OO().OooO0oo();
        }
        if (x4.OooO0O0().OooO00o(f6.OooOOo, bool)) {
            BootDexManager.OooO0OO().OooO();
            OooO0o();
        }
        if (TextUtils.isEmpty(gc.OooO0OO().OooO0O0.DeviceId) || TextUtils.isEmpty(gc.OooO0OO().OooO0O0.DeviceCode)) {
            DeviceInfo deviceInfoOooO00o = ae.OooO00o(AppContext.OooO00o());
            gc.OooO0OO().OooO0O0.DeviceId = deviceInfoOooO00o.DeviceId;
            gc.OooO0OO().OooO0O0.DeviceCode = deviceInfoOooO00o.DeviceCode;
        }
        if (!this.OooO0oo && m7.OooO0o0().OooOO0 != null) {
            h7.OooO0oO(null);
        }
        d7.OooO00o().OooO0o0();
        Oooo0oO();
        z6.OooO0Oo().OooO0OO().Oooo0O0();
        if (i == 1003) {
            Toast.makeText(AppContext.OooO00o(), R.string.toast_run_no_permission, 0).show();
        }
        String str3 = "onStopScript RestartScriptHelper.isNeedRestart():" + RestartScriptHelper.isNeedRestart();
        if (this.OooO00o) {
            c7.OooO0oo().OooOO0();
            l10.OooO0o().OooOOOO(new MsgItem(1008));
        } else if (RestartScriptHelper.isNeedRestart().booleanValue()) {
            h7.OooO0o0(null);
        }
    }

    public void OooOoOO() {
        ii.OooO();
    }

    public void OooOoo() {
        ii.OooOO0();
    }

    public void OooOooO(String str) {
        this.OooO0O0 = str;
    }

    public void OooOooo(int i) {
        this.OooOO0 = i;
        ii.OooOOOO(i);
        OooOO0o();
    }

    public void Oooo() {
        if (i4.OooO00o().OooO0O0()) {
            return;
        }
        if (!t4.OooOO0(AppContext.OooO00o())) {
            c5.OooO0O0(AppContext.OooO00o(), R.string.network_off);
            return;
        }
        String strOooO0Oo = z8.OooO0Oo(AppContext.OooO00o(), f6.OooO0oo);
        String strOooOO0O = a4.OooOO0O(AppContext.OooO00o());
        UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
        updateRequestInfo.ScriptId = b7.OooO0Oo().OooO0oO().getId();
        updateRequestInfo.DeviceName = strOooOO0O;
        updateRequestInfo.ScriptVersion = Integer.parseInt(strOooO0Oo);
        String str = "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName + ",ScriptVersion=" + updateRequestInfo.ScriptVersion;
        kc.OooOo00().OooOo0O(new OooOOO0()).OooOo(true, AppContext.OooO00o(), updateRequestInfo);
    }

    public void Oooo0() {
        ii.OooOOO0(ii.OooO00o.getFilesDir() + File.separator + k3.o000000);
        ii.OooOOO(q7.OooO0o0().OooO0o());
        b7.OooO0Oo().OooOO0();
        e5.OooO00o().OooO0o(new Runnable() { // from class: z2.g7
            @Override // java.lang.Runnable
            public final void run() {
                this.OoooOoO.OooOOOo();
            }
        }).OooOOO(new y30() { // from class: z2.f7
            @Override // z2.y30
            public final void OooO0O0(Object obj) {
                ii.OooOOo();
            }
        });
    }

    public void Oooo000(String str, String str2, String str3, int i, long j, String str4, String str5, String str6, String str7) {
        ii.OooOOOo(str, str2, str3, i, j, str4, str5, str6, str7);
    }

    public void Oooo00O(String str, String str2, String str3, String str4, String str5) {
        ii.OooOOo0(str, str2, str3, str4, str5);
    }

    public void Oooo00o(int i) {
        this.OooO0OO = i;
    }

    public void Oooo0O0(String str, String str2, String str3, long j, String str4) {
        String str5 = "EnginSdk -- 1starLoop " + Thread.currentThread().getName();
        e5.OooO00o().OooO0o(new OooO0OO(str, str2, str3, j, str4));
    }

    public void Oooo0o() {
        e5.OooO00o().OooO0o(new OooO0o());
    }

    public void Oooo0o0() {
        Log.i("EnginSdk", "stop");
        RestartScriptHelper.setNeedRestartValue(Boolean.FALSE);
        ii.OooOo0();
    }

    public void Oooo0oo() {
        if (OooOOO()) {
            return;
        }
        if (y2.OooO0O0(AppContext.OooO00o(), "common_shared_file", e3.OooO0o, 0) != 0) {
            ii.OooOO0O(false, 0, 0, 0, 0);
            return;
        }
        int iOooO0O0 = y2.OooO0O0(AppContext.OooO00o(), e3.OooO0oo, e3.OooOO0, 0);
        int iOooO0O02 = y2.OooO0O0(AppContext.OooO00o(), e3.OooO0oo, e3.OooO, 0);
        ii.OooOO0O(true, y2.OooO0O0(AppContext.OooO00o(), e3.OooO0oo, e3.OooOO0o, 0), y2.OooO0O0(AppContext.OooO00o(), e3.OooO0oo, e3.OooOO0O, 0), iOooO0O0, iOooO0O02);
    }
}

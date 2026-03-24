package z2;

import android.app.Application;
import com.cyjh.mobileanjian.ipc.interfaces.OnEngineStartCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener;
import com.cyjh.mq.sdk.MqBridge;
import com.cyjh.mq.sdk.inf.OnElfCallback;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class hi {
    private static final hi OooOOO = new hi();
    private gi OooO0O0;
    private int OooO0OO;
    private boolean OooO0Oo;
    private li OooO0o;
    private ki OooO0o0;
    private ji OooO0oO;
    private boolean OooO00o = false;
    private OnKeyEventListener OooO0oo = new OooO00o();
    private RootProgressListener OooO = new OooO0O0();
    private OnEngineStartCallback OooOO0 = new OooO0OO();
    private OnScriptListener OooOO0O = new OooO0o();
    private OnElfCallback OooOO0o = new OooO();
    private OnSpecialMqCmdCallback OooOOO0 = new OooOO0();

    public class OooO implements OnElfCallback {
        public OooO() {
        }

        @Override // com.cyjh.mq.sdk.inf.OnElfCallback
        public void callback(int i, String str) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.callback(i, str);
            }
        }
    }

    public class OooO00o implements OnKeyEventListener {
        public OooO00o() {
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener
        public void onKeyEvent(int i) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.onKeyEvent(i);
            }
        }
    }

    public class OooO0O0 implements RootProgressListener {
        public OooO0O0() {
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener
        public void onRootProgress(String str, int i) {
            ji unused = hi.this.OooO0oO;
        }
    }

    public class OooO0OO implements OnEngineStartCallback {
        public OooO0OO() {
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnEngineStartCallback
        public void onEngineStart(int i) {
            hi.this.OooO00o = true;
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.onEngineStart(i);
            }
            ii.OooOOO0(ii.OooO00o.getFilesDir() + File.separator + k3.o000000);
            wi.OooO0O0(ii.OooO00o.getApplicationInfo().nativeLibraryDir + wi.OooO0OO(new byte[]{49, 110, 107, 100, 111, 115, 111, 48, 117, 113}, 2));
        }
    }

    public class OooO0o implements OnScriptListener {
        public OooO0o() {
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public void onPause() {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.onPause();
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public void onResume() {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.onResume();
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public void onScriptIsRunning() {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.onScriptIsRunning();
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener
        public void onSetControlBarVisiable(int i) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.onSetControlBarVisiable(i);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public void onStartScript() {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.onStartScript();
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public void onStopScript(int i, String str) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.onStopScript(i, str);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener
        public void onUpdateControlBarPos(float f, int i, int i2) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.onUpdateControlBarPos(f, i, i2);
            }
        }
    }

    public class OooOO0 implements OnSpecialMqCmdCallback {
        public OooOO0() {
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public void doSpecialFuction(int i, String str) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.doSpecialFuction(i, str);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public String getForegroundPackage() {
            if (hi.this.OooO0oO != null) {
                return hi.this.OooO0oO.getForegroundPackage();
            }
            return null;
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public String getRunningPackages() {
            if (hi.this.OooO0oO != null) {
                return hi.this.OooO0oO.getRunningPackages();
            }
            return null;
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public void inputText(String str) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.inputText(str);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public void keyPress(int i) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.keyPress(i);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public void killApp(String str) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.killApp(str);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public void launchApp(String str) {
            if (hi.this.OooO0oO != null) {
                hi.this.OooO0oO.launchApp(str);
            }
        }
    }

    public class OooOO0O implements RootProgressListener {
        public OooOO0O() {
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener
        public void onRootProgress(String str, int i) {
        }
    }

    public static hi OooO0OO() {
        return OooOOO;
    }

    public void OooO() {
        gi giVar = this.OooO0O0;
        if (giVar != null) {
            giVar.OooO0Oo();
        }
    }

    public void OooO0Oo(Application application) {
        ki kiVar = new ki();
        this.OooO0o0 = kiVar;
        this.OooO0O0 = kiVar;
    }

    public void OooO0o(String str, String str2, String str3) {
        this.OooO0O0.OooO0O0(str, str2, str3, this.OooOO0o);
    }

    public void OooO0o0(Application application, String str, String str2, String str3, ji jiVar) {
        this.OooO0oO = jiVar;
        MqBridge.init(application, str, str2, str3, this.OooO0oo, new OooOO0O(), this.OooOO0);
        this.OooO0O0.OooO0oo(this.OooOOO0);
        this.OooO0O0.OooO0oO(this.OooOO0O);
    }

    public boolean OooO0oO() {
        return this.OooO00o;
    }

    public boolean OooO0oo() {
        gi giVar = this.OooO0O0;
        if (giVar != null) {
            return giVar.OooO0OO();
        }
        return false;
    }

    public void OooOO0() {
        gi giVar = this.OooO0O0;
        if (giVar != null) {
            giVar.OooO0o0();
        }
    }

    public void OooOO0O(boolean z, int i, int i2, int i3, int i4) {
        gi giVar = this.OooO0O0;
        if (giVar != null) {
            giVar.OooO0o(z, i, i2, i3, i4);
        }
    }

    public void OooOO0o(boolean z) {
        this.OooO00o = z;
    }

    public void OooOOO(int i) {
        gi giVar;
        this.OooO0OO = i;
        if (i == 0) {
            if (this.OooO0o0 == null) {
                this.OooO0o0 = new ki();
            }
            giVar = this.OooO0o0;
        } else {
            if (this.OooO0o == null) {
                this.OooO0o = new li();
            }
            giVar = this.OooO0o;
        }
        this.OooO0O0 = giVar;
    }

    public void OooOOO0(String str) {
        gi giVar = this.OooO0O0;
        if (giVar != null) {
            giVar.OooO(str);
        }
    }

    public void OooOOOO(String str, String str2, String str3, int i, long j, String str4, String str5, String str6, String str7) {
        pg pgVar = new pg();
        pgVar.OooOo0O(str);
        pgVar.OooOo(str2);
        pgVar.OooOOOo(str3);
        pgVar.OooO0oO(str4);
        pgVar.OooO0o0(str5);
        pgVar.OooooOO = i;
        pgVar.Oooooo = j;
        pgVar.Ooooo0o = str6;
        pgVar.OooooO0 = str7;
        pgVar.OoooooO = true;
        gi giVar = this.OooO0O0;
        if (giVar != null) {
            giVar.OooOO0(pgVar);
        }
    }

    public void OooOOOo(String str, String str2, String str3, String str4, String str5) {
        pg pgVar = new pg();
        pgVar.OooOo0O(str);
        pgVar.OooOo(str2);
        pgVar.OooOOOo(str3);
        pgVar.OooO0oO(str4);
        pgVar.OooO0o0(str5);
        gi giVar = this.OooO0O0;
        if (giVar != null) {
            giVar.OooOO0(pgVar);
        }
    }

    public void OooOOo() {
        gi giVar = this.OooO0O0;
        if (giVar != null) {
            giVar.OooOO0o();
        }
    }

    public void OooOOo0() {
        gi giVar = this.OooO0O0;
        if (giVar != null) {
            giVar.OooO0oo(this.OooOOO0);
            this.OooO0O0.OooOO0O();
        }
    }
}

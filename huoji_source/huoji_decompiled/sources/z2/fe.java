package z2;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.WindowManager;
import android.widget.Toast;
import com.cyjh.event.Injector;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.log.NativeLog;
import com.cyjh.mqm.MQLanguageStub;
import com.cyjh.mqm.MQLanguageStub.MQAuxiliary;
import com.cyjh.mqsdk.R;
import java.io.File;
import java.util.Objects;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class fe implements ee {
    private static final int OooOO0O = 1;
    private static final int OooOO0o = 2;
    private static final int OooOOO = 25;
    private static final int OooOOO0 = 3;
    public OooO0o OooO0Oo;
    private MQLanguageStub OooO0o;
    public pg OooO0o0;
    public OnScriptListener OooO0oO;
    public volatile boolean OooO00o = false;
    public boolean OooO0O0 = false;
    public boolean OooO0OO = false;
    public ArrayBlockingQueue<OooO0O0> OooO0oo = new ArrayBlockingQueue<>(4);
    private Handler OooO = new OooO00o(Looper.getMainLooper());
    private MQLanguageStub.MQAuxiliary OooOO0 = null;

    public class OooO00o extends Handler {
        public OooO00o(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                OnScriptListener onScriptListener = fe.this.OooO0oO;
                if (onScriptListener != null) {
                    onScriptListener.onStartScript();
                    return;
                }
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                Toast.makeText(ag.OooO0o0(), (String) message.obj, 1).show();
            } else {
                OnScriptListener onScriptListener2 = fe.this.OooO0oO;
                if (onScriptListener2 != null) {
                    onScriptListener2.onStopScript(message.arg1, (String) message.obj);
                }
            }
        }
    }

    public class OooO0O0 {
        public static final int OooOO0 = 0;
        public static final int OooOO0O = 1;
        public static final int OooOO0o = 2;
        public static final int OooOOO = 4;
        public static final int OooOOO0 = 3;
        public static final int OooOOOO = 16;
        public int OooO00o;
        public String OooO0O0;
        public String OooO0OO;
        public String OooO0Oo;
        public int OooO0o;
        public String OooO0o0;
        public int OooO0oO;
        public String OooO0oo;

        public OooO0O0(int i, String str, String str2, String str3, String str4, int i2, int i3, String str5) {
            this.OooO00o = i;
            this.OooO0O0 = str;
            this.OooO0OO = str2;
            this.OooO0Oo = str3;
            this.OooO0o0 = str4;
            this.OooO0o = i2;
            this.OooO0oO = i3;
            this.OooO0oo = str5;
        }

        public final String toString() {
            return "";
        }
    }

    public class OooO0OO extends Thread {
        private OooO0OO() {
        }

        public /* synthetic */ OooO0OO(fe feVar, byte b) {
            this();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            if (fe.this.OooO0o0 == null) {
                return;
            }
            Looper.prepare();
            fe.OooO0O0(fe.this);
            Looper.myLooper().quit();
            Looper.loop();
        }
    }

    public class OooO0o extends Thread {
        public OooO0o(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Looper.prepare();
            fe.this.OooO0OO = true;
            while (ag.OooO0Oo() != null) {
                try {
                    OooO0O0 oooO0O0Take = fe.this.OooO0oo.take();
                    new StringBuilder("Take Request:\n").append(oooO0O0Take);
                    int i = oooO0O0Take.OooO00o;
                    if (i == 0) {
                        fe.OooO0O0(fe.this);
                    } else if (i == 1) {
                        fe.this.OooOOO();
                        MQLanguageStub.InitHost(oooO0O0Take.OooO0O0);
                        fe.this.OooO0O0 = true;
                    } else if (i == 2) {
                        fe.this.OooOOO();
                        MQLanguageStub.InitElf(ag.OooO0Oo(), oooO0O0Take.OooO0OO, oooO0O0Take.OooO0Oo, oooO0O0Take.OooO0o0);
                    } else if (i == 3) {
                        fe.this.OooOOO();
                        MQLanguageStub.SetHeartBeatTime(oooO0O0Take.OooO0o, oooO0O0Take.OooO0oO);
                    } else if (i == 4) {
                        fe.this.OooOOO();
                        MQLanguageStub.SetRegCode(oooO0O0Take.OooO0oo);
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            Looper.myLooper().quit();
            Looper.loop();
            fe.this.OooO0OO = false;
        }
    }

    private void OooO00o(int i, int i2) {
        try {
            this.OooO0oo.put(new OooO0O0(3, "", "", "", "", i, i2, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static /* synthetic */ void OooO0O0(fe feVar) {
        if (feVar.OooO0o0 != null) {
            feVar.OooO00o = true;
            feVar.OooO.obtainMessage(1).sendToTarget();
            feVar.OooOOo0();
            int iRun = feVar.OooOOO().Run(feVar.OooO0o0.OooO00o(), feVar.OooO0o0.OooOo00(), feVar.OooO0o0.OooO0Oo(), feVar.OooO0o0.getAppId(), feVar.OooO0o0.OooOO0O(), feVar.OooO0o0.OooOOO0(), feVar.OooO0o0.OooO0OO(), feVar.OooO0o0.OooOoOO());
            if (iRun == 102) {
                feVar.OooOO0o(String.format(ag.OooO0o0().getString(R.string.toast_run_failed), Integer.valueOf(iRun)));
            }
            Handler handler = feVar.OooO;
            if (handler != null) {
                Message messageObtainMessage = handler.obtainMessage();
                messageObtainMessage.what = 2;
                messageObtainMessage.arg1 = iRun;
                messageObtainMessage.obj = NativeLog.getExtraLog();
                feVar.OooO.sendMessage(messageObtainMessage);
            }
            feVar.OooOO0o(ag.OooO0o0().getString(R.string.toast_on_stop_script));
            eb.OooO0o0();
            Injector.release();
            NativeLog.reset();
            feVar.OooO00o = false;
        }
    }

    private void OooO0OO(OnScriptListener onScriptListener) {
        if (onScriptListener != null) {
            this.OooO0oO = onScriptListener;
        }
    }

    private void OooO0Oo(pg pgVar) {
        if (pgVar != null) {
            this.OooO0o0 = pgVar;
        }
    }

    private void OooO0o(String str, String str2, String str3) {
        try {
            this.OooO0oo.put(new OooO0O0(2, "", str, str2, str3, 0, 0, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private void OooO0o0(String str) {
        try {
            if (!this.OooO0OO) {
                OooO0o oooO0o = new OooO0o("ScriptRunnerLite_Request");
                this.OooO0Oo = oooO0o;
                oooO0o.start();
            }
            this.OooO0oo.put(new OooO0O0(1, str, "", "", "", 0, 0, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private void OooO0oO(boolean z, int i, int i2, int i3, int i4) {
        OooOOOo().SetImageCrop(z, i, i2, i3, i4);
    }

    private void OooOO0(String str) {
        try {
            this.OooO0oo.put(new OooO0O0(4, "", "", "", "", 0, 0, str));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private void OooOO0o(String str) {
        this.OooO.obtainMessage(3, str).sendToTarget();
    }

    private static /* synthetic */ boolean OooOOOO(fe feVar) {
        feVar.OooO0O0 = true;
        return true;
    }

    private void OooOOoo() {
        if (this.OooO0o0 == null) {
            return;
        }
        this.OooO00o = true;
        this.OooO.obtainMessage(1).sendToTarget();
        OooOOo0();
        int iRun = OooOOO().Run(this.OooO0o0.OooO00o(), this.OooO0o0.OooOo00(), this.OooO0o0.OooO0Oo(), this.OooO0o0.getAppId(), this.OooO0o0.OooOO0O(), this.OooO0o0.OooOOO0(), this.OooO0o0.OooO0OO(), this.OooO0o0.OooOoOO());
        if (iRun == 102) {
            OooOO0o(String.format(ag.OooO0o0().getString(R.string.toast_run_failed), Integer.valueOf(iRun)));
        }
        Handler handler = this.OooO;
        if (handler != null) {
            Message messageObtainMessage = handler.obtainMessage();
            messageObtainMessage.what = 2;
            messageObtainMessage.arg1 = iRun;
            messageObtainMessage.obj = NativeLog.getExtraLog();
            this.OooO.sendMessage(messageObtainMessage);
        }
        OooOO0o(ag.OooO0o0().getString(R.string.toast_on_stop_script));
        eb.OooO0o0();
        Injector.release();
        NativeLog.reset();
        this.OooO00o = false;
    }

    public final MQLanguageStub OooOOO() {
        if (this.OooO0o == null) {
            this.OooO0o = new MQLanguageStub();
            new StringBuilder("Application: ").append(ag.OooO0Oo());
            File file = new File(Environment.getExternalStorageDirectory(), ag.OooO0Oo().getPackageName());
            if (!file.exists()) {
                file.mkdir();
            }
            this.OooO0o.SetLocalDir(Environment.getExternalStorageDirectory().getAbsolutePath(), file.getAbsolutePath(), ag.OooO0o0().getApplicationInfo().nativeLibraryDir + "/", new File(ag.OooO0o0().getFilesDir().getParent(), "lib").getAbsolutePath());
            this.OooO0o.SetWriteLog2File(true);
        }
        return this.OooO0o;
    }

    public final MQLanguageStub.MQAuxiliary OooOOOo() {
        if (this.OooOO0 == null) {
            MQLanguageStub mQLanguageStubOooOOO = OooOOO();
            Objects.requireNonNull(mQLanguageStubOooOOO);
            this.OooOO0 = mQLanguageStubOooOOO.new MQAuxiliary();
        }
        return this.OooOO0;
    }

    public final synchronized boolean OooOOo() {
        return this.OooO00o;
    }

    public final void OooOOo0() {
        OooOOOo().SetScreenRotation(((WindowManager) ag.OooO0Oo().getSystemService("window")).getDefaultDisplay().getRotation());
    }

    @Override // z2.ee
    public final void a() {
        if (!this.OooO00o) {
            new OooO0OO(this, (byte) 0).start();
            return;
        }
        OnScriptListener onScriptListener = this.OooO0oO;
        if (onScriptListener != null) {
            onScriptListener.onScriptIsRunning();
        }
    }

    @Override // z2.ee
    public final void b() {
        OooOOO().Resume();
    }

    @Override // z2.ee
    public final void c() {
        OooOOO().Pause();
    }

    @Override // z2.ee
    public final void d() {
        new StringBuilder("stop: ").append(fe.class.getSimpleName());
        OooOOO().Stop();
    }
}

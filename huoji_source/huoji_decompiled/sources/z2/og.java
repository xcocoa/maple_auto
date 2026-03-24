package z2;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;
import com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver;
import com.cyjh.mobileanjian.ipc.interfaces.OnRootApplyCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import com.cyjh.mobileanjian.ipc.utils.RootUtil;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mqsdk.R;
import com.google.protobuf.ByteString;
import java.io.File;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class og implements EngineStateObserver, OnRootApplyCallback, IRunner {
    public static final int OooO0oo = 256;
    public pg OooO0O0;
    private OnScriptListener OooO0Oo;
    public dg OooO00o = null;
    public boolean OooO0o0 = false;
    private boolean OooO0o = false;
    public boolean OooO0oO = false;
    public Handler OooO0OO = new OooO00o(Looper.getMainLooper());

    public class OooO00o extends Handler {
        public OooO00o(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 256 || ag.OooO0oo() == null) {
                return;
            }
            if (message.what == 4) {
                Toast.makeText(ag.OooO0o0(), ag.OooO0Oo().getString(R.string.toast_failed_got_root, new Object[]{lg.OooO00o(ag.OooO0o0())}), 1).show();
            }
            ag.OooO0oo().onRootProgress((String) message.obj, message.what);
        }
    }

    public class OooO0O0 extends AsyncTask<pg, Void, pg> {
        private OooO0O0() {
        }

        public /* synthetic */ OooO0O0(og ogVar, byte b) {
            this();
        }

        private static pg OooO00o(pg... pgVarArr) throws Throwable {
            pg pgVar = pgVarArr[0];
            try {
                File file = new File(ag.OooO0o0().getFilesDir(), "script");
                if (file.exists()) {
                    FileUtils.deleteDirectory(file);
                } else {
                    file.mkdirs();
                    file.setReadable(true, false);
                    file.setExecutable(true, false);
                }
                File[] fileArr = {new File(pgVar.OooO00o()), new File(pgVar.OooOo00()), new File(pgVar.OooO0Oo())};
                File file2 = new File(file, FilenameUtils.getName(pgVar.OooO00o()));
                File file3 = new File(file, FilenameUtils.getName(pgVar.OooOo00()));
                File file4 = new File(file, FilenameUtils.getName(pgVar.OooO0Oo()));
                File[] fileArr2 = new File[3];
                fileArr2[0] = file2;
                fileArr2[1] = file3;
                fileArr2[2] = file4;
                for (int i = 0; i < 3; i++) {
                    if (fileArr[i].exists()) {
                        FileUtils.copyFile(fileArr[i], fileArr2[i]);
                        fileArr2[i].setReadable(true, false);
                    } else {
                        fileArr2[i] = fileArr[i];
                    }
                }
                pg pgVarClone = pgVar.clone();
                pgVarClone.OooOo0O(file2.getAbsolutePath()).OooOo(file3.getAbsolutePath()).OooOOOo(file4.getAbsolutePath());
                return pgVarClone;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        private void OooO0O0(pg pgVar) {
            if (pgVar != null) {
                og.this.OooOO0o(pgVar.OooOOOO(7));
                og.this.OooOO0o(pgVar.OooOOOO(1));
            }
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ pg doInBackground(pg[] pgVarArr) {
            return OooO00o(pgVarArr);
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(pg pgVar) {
            pg pgVar2 = pgVar;
            if (pgVar2 != null) {
                og.this.OooOO0o(pgVar2.OooOOOO(7));
                og.this.OooOO0o(pgVar2.OooOOOO(1));
            }
        }
    }

    private void OooOOO0(pg pgVar) {
        new OooO0O0(this, (byte) 0).execute(pgVar);
    }

    @Override // z2.sg
    public final void OooO(ByteString byteString) {
        OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(64).setFileData(byteString).build());
    }

    @Override // z2.sg
    public final void OooO0O0(ByteString byteString) {
        OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(me.o00000o0).setFileData(byteString).build());
    }

    @Override // z2.sg
    public final void OooO0Oo(ByteString byteString) {
        OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(65).setFileData(byteString).build());
    }

    public final void OooOO0O() {
        if (this.OooO0o) {
            return;
        }
        this.OooO0o = true;
        File fileOooO0o = ag.OooO0o();
        je.OooO00o().OooO0oo("setenforce 0");
        je.OooO00o().OooO0oo("chmod 677 /dev/input/*");
        je.OooO00o().OooO0oo(fileOooO0o.getAbsolutePath());
        this.OooO0OO.sendEmptyMessageDelayed(256, 20000L);
    }

    public final void OooOO0o(Ipc.IpcMessage ipcMessage) {
        if (this.OooO0o0) {
            this.OooO00o.OooOOOo(ipcMessage);
        }
    }

    @Override // z2.sg
    public final void a(String str) {
        OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(me.o0000Ooo).addArg2(str).build());
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public boolean isScriptStarted() {
        dg dgVar = this.OooO00o;
        if (dgVar == null) {
            return false;
        }
        return dgVar.OooOO0;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void notifyRotationStatus() {
        OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(15).addArg1(((WindowManager) ag.OooO0Oo().getSystemService("window")).getDefaultDisplay().getRotation()).build());
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver
    public void onConnected(dg dgVar) {
        this.OooO0OO.removeMessages(256);
        this.OooO0o0 = true;
        this.OooO00o = dgVar;
        this.OooO0o = false;
        setOnScriptListener(this.OooO0Oo);
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.OnRootApplyCallback
    public void onObtained() {
        Log.d("JAVA_RUNNER", "onObtained()1");
        if (RootUtil.isRoot()) {
            this.OooO0OO.obtainMessage(6, "ROOT SUCCESS").sendToTarget();
        }
        OooOO0O();
        this.OooO0oO = false;
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.OnRootApplyCallback
    public void onRefused() {
        if (RootUtil.isRoot()) {
            this.OooO0OO.obtainMessage(4, "User refused root.").sendToTarget();
        }
        this.OooO0oO = false;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void pause() {
        OooOO0o(ne.OooO0OO(2));
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void resume() {
        OooOO0o(ne.OooO0OO(9));
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public IRunner setOnScriptListener(OnScriptListener onScriptListener) {
        this.OooO0Oo = onScriptListener;
        dg dgVar = this.OooO00o;
        if (dgVar != null) {
            dgVar.OooOOo = onScriptListener;
        }
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public IRunner setScript(pg pgVar) {
        this.OooO0O0 = pgVar;
        OooOO0o(pgVar.OooOOOO(7));
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void stop() {
        Log.d("JAVA_RUNNER", "GeneralMqRunner stop");
        OooOO0o(ne.OooO0OO(3));
    }
}

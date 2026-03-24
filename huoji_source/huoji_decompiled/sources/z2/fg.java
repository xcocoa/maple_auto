package z2;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.MediaStore;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;
import com.cyjh.event.Injector;
import com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnMqScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnRecordScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnRequestCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptMessageCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnUiElementCallback;
import com.cyjh.mobileanjian.ipc.rpc.Invocator;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mq.sdk.inf.OnElfCallback;
import com.cyjh.mqsdk.R;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UninitializedMessageException;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.googlecode.tesseract.android.TessBaseAPI;
import com.ime.input.InputKb;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.UUID;
import z2.bg;
import z2.dg.OooO0O0;
import z2.o00O0O0;
import z2.se;
import z2.te;

/* JADX INFO: loaded from: classes2.dex */
public final class fg {
    private static final int OooO = 2;
    private static final int OooO0oo = 1;
    private static final int OooOO0 = 3;
    private static final int OooOO0O = 4;
    private static final int OooOO0o = 5;
    private static final int OooOOO = 6;
    private static final int OooOOO0 = 10;
    private static final int OooOOOO = 7;
    private static final int OooOOOo = 8;
    private static final int OooOOo = 16;
    private static final int OooOOo0 = 9;
    private static final int OooOOoo = 17;
    private static final int OooOo = 22;
    private static final int OooOo0 = 19;
    private static final int OooOo00 = 18;
    private static final int OooOo0O = 20;
    private static final int OooOo0o = 21;
    private static final int OooOoO = 24;
    private static final int OooOoO0 = 23;
    public Context OooO00o;
    public ge OooO0O0;
    public dg OooO0OO;
    public ye OooO0Oo;
    private TessBaseAPI OooO0o0 = null;
    private boolean OooO0o = false;
    public Handler OooO0oO = new OooO00o(Looper.getMainLooper());

    public class OooO00o extends Handler {
        private ExToast OooO00o;

        /* JADX INFO: renamed from: z2.fg$OooO00o$OooO00o, reason: collision with other inner class name */
        public class C0250OooO00o implements se.OooO0o {
            public C0250OooO00o() {
            }

            @Override // z2.se.OooO0o
            public final void a(int i) {
                fg.this.OooO0OO.OooOOOo(Ipc.IpcMessage.newBuilder().setCmd(66).addArg1(i).build());
            }
        }

        public class OooO0O0 implements te.OooO0O0 {
            public OooO0O0() {
            }

            @Override // z2.te.OooO0O0
            public final void a(String str) {
                fg.this.OooO0OO.OooOOOo(Ipc.IpcMessage.newBuilder().setCmd(67).addArg2(str).build());
            }
        }

        public OooO00o(Looper looper) {
            super(looper);
            this.OooO00o = null;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            switch (i) {
                case 1:
                    if (this.OooO00o == null) {
                        this.OooO00o = new ExToast(fg.this.OooO00o);
                    }
                    Ipc.IpcMessage ipcMessage = (Ipc.IpcMessage) message.obj;
                    this.OooO00o.show(ipcMessage.getArg2(0), ipcMessage.getArg1(0), ipcMessage.getArg1(1), ipcMessage.getArg1(2));
                    break;
                case 2:
                    BasicScriptListener basicScriptListener = fg.this.OooO0OO.OooOOo0;
                    if (basicScriptListener != null) {
                        basicScriptListener.onStartScript();
                    }
                    OnScriptListener onScriptListener = fg.this.OooO0OO.OooOOo;
                    if (onScriptListener != null) {
                        onScriptListener.onStartScript();
                    }
                    break;
                case 3:
                    Log.d("JAVA_RUNNER", "ScriptRunnerLite WHAT_STOP SCRIPT_STOPPED");
                    ye yeVar = fg.this.OooO0Oo;
                    yeVar.Oooooo.clear();
                    yeVar.OoooooO.clear();
                    yeVar.Ooooooo.clear();
                    yeVar.OooO00o();
                    yeVar.OoooOoo = 0;
                    yeVar.ooOO = 1;
                    for (int i2 = 0; i2 < 32; i2++) {
                        yeVar.OoooOoO[i2] = null;
                        HashMap[] mapArr = yeVar.OooooOO;
                        if (mapArr[i2] != null) {
                            mapArr[i2].clear();
                        }
                    }
                    yeVar.OooooOo = new com.cyjh.mobileanjian.ipc.ui.j[32];
                    yeVar.Oooooo0 = 0;
                    ExToast exToast = this.OooO00o;
                    if (exToast != null) {
                        exToast.hide();
                    }
                    if (fg.this.OooO0OO.OooOOo0 != null) {
                        Log.d("JAVA_RUNNER", "ScriptRunnerLite WHAT_STOP mConnection.getBasicScriptListener()");
                        fg.this.OooO0OO.OooOOo0.onStopScript(message.arg1, (String) message.obj);
                    }
                    if (fg.this.OooO0OO.OooOOo != null) {
                        Log.d("JAVA_RUNNER", "ScriptRunnerLite WHAT_STOP mConnection.getOnScriptListener() != null");
                        fg.this.OooO0OO.OooOOo.onStopScript(message.arg1, (String) message.obj);
                    }
                    break;
                case 4:
                    BasicScriptListener basicScriptListener2 = fg.this.OooO0OO.OooOOo0;
                    if (basicScriptListener2 != null) {
                        basicScriptListener2.onScriptIsRunning();
                    }
                    OnScriptListener onScriptListener2 = fg.this.OooO0OO.OooOOo;
                    if (onScriptListener2 != null) {
                        onScriptListener2.onScriptIsRunning();
                    }
                    break;
                case 5:
                    Object obj = message.obj;
                    if (obj == null) {
                        Toast.makeText(fg.this.OooO00o, message.arg1, 0).show();
                    } else {
                        Toast.makeText(fg.this.OooO00o, (CharSequence) obj, 0).show();
                    }
                    break;
                case 6:
                    Ipc.IpcMessage ipcMessage2 = (Ipc.IpcMessage) message.obj;
                    String arg2 = ipcMessage2.getArg2(0);
                    int arg1 = ipcMessage2.getArg1(0);
                    ipcMessage2.getArg1(0);
                    ipcMessage2.getArg1(0);
                    new se(fg.this.OooO00o, arg2, arg1, new C0250OooO00o()).OooO00o();
                    break;
                case 7:
                    Ipc.IpcMessage ipcMessage3 = (Ipc.IpcMessage) message.obj;
                    String arg22 = ipcMessage3.getArg2(0);
                    ipcMessage3.getArg1(0);
                    ipcMessage3.getArg1(0);
                    new te(fg.this.OooO00o, arg22, new OooO0O0()).OooO0O0();
                    break;
                case 8:
                    BasicScriptListener basicScriptListener3 = fg.this.OooO0OO.OooOOo0;
                    if (basicScriptListener3 != null) {
                        basicScriptListener3.onPause();
                    }
                    OnScriptListener onScriptListener3 = fg.this.OooO0OO.OooOOo;
                    if (onScriptListener3 != null) {
                        onScriptListener3.onPause();
                    }
                    break;
                case 9:
                    BasicScriptListener basicScriptListener4 = fg.this.OooO0OO.OooOOo0;
                    if (basicScriptListener4 != null) {
                        basicScriptListener4.onResume();
                    }
                    OnScriptListener onScriptListener4 = fg.this.OooO0OO.OooOOo;
                    if (onScriptListener4 != null) {
                        onScriptListener4.onResume();
                    }
                    break;
                case 10:
                    ExToast exToast2 = this.OooO00o;
                    if (exToast2 != null) {
                        exToast2.hide();
                    }
                    break;
                default:
                    switch (i) {
                        case 16:
                            OnScriptListener onScriptListener5 = fg.this.OooO0OO.OooOOo;
                            if (onScriptListener5 != null) {
                                onScriptListener5.onUpdateControlBarPos(message.arg1 / 100.0f, message.arg2, ((Integer) message.obj).intValue());
                            }
                            break;
                        case 17:
                            OnKeyEventListener onKeyEventListenerOooO0oO = ag.OooO0oO();
                            if (onKeyEventListenerOooO0oO != null) {
                                onKeyEventListenerOooO0oO.onKeyEvent(message.arg1);
                            }
                            break;
                        case 18:
                            try {
                                UiMessage.CommandToUi from = UiMessage.CommandToUi.parseFrom((ByteString) message.obj);
                                if (from != null) {
                                    fg.this.OooO0Oo.OooO0OO(from);
                                }
                            } catch (InvalidProtocolBufferException e) {
                                e.printStackTrace();
                                return;
                            }
                            break;
                        case 19:
                            OnRequestCallback onRequestCallback = fg.this.OooO0OO.OooOOoo;
                            if (onRequestCallback != null) {
                                onRequestCallback.onCallback(message.arg1, (String) message.obj);
                            }
                            break;
                        case 20:
                            OnMqScriptCallback onMqScriptCallback = fg.this.OooO0OO.OooOo00;
                            if (onMqScriptCallback != null) {
                                onMqScriptCallback.callback((String) message.obj);
                            }
                            break;
                        case 21:
                            OnElfCallback onElfCallback = fg.this.OooO0OO.OooOo0;
                            if (onElfCallback != null) {
                                onElfCallback.callback(message.arg1, (String) message.obj);
                            }
                            break;
                        case 22:
                            OnSpecialMqCmdCallback onSpecialMqCmdCallback = fg.this.OooO0OO.OooOo0o;
                            if (onSpecialMqCmdCallback != null) {
                                onSpecialMqCmdCallback.doSpecialFuction(message.arg1, (String) message.obj);
                            }
                            break;
                        case 23:
                            xf xfVar = new xf(fg.this.OooO00o);
                            Ipc.IpcMessage ipcMessage4 = (Ipc.IpcMessage) message.obj;
                            xfVar.OooO0O0(ipcMessage4.getArg1(0), ipcMessage4.getArg1(1), ipcMessage4.getArg2(0));
                            break;
                        case 24:
                            OnScriptListener onScriptListener6 = fg.this.OooO0OO.OooOOo;
                            if (onScriptListener6 != null) {
                                onScriptListener6.onSetControlBarVisiable(message.arg1);
                            }
                            break;
                    }
                    break;
            }
        }
    }

    public static /* synthetic */ class OooO0O0 {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[Ipc.FundType.values().length];
            OooO00o = iArr;
            try {
                iArr[Ipc.FundType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[Ipc.FundType.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[Ipc.FundType.LONG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[Ipc.FundType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[Ipc.FundType.DOUBLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO00o[Ipc.FundType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public fg(Context context, dg dgVar) {
        this.OooO0OO = null;
        this.OooO00o = context;
        this.OooO0Oo = new ye(context);
        this.OooO0O0 = new ge(this.OooO00o);
        this.OooO0OO = dgVar;
        WindowManager windowManager = (WindowManager) this.OooO00o.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        int i = displayMetrics.densityDpi;
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        String strOooOO0o = this.OooO0O0.OooOO0o();
        String strOooO = this.OooO0O0.OooO();
        String strOooO0o0 = this.OooO0O0.OooO0o0();
        String str = this.OooO00o.getPackageName() + "/" + InputKb.class.getName();
        com.ime.input.a.a().b = strOooO0o0;
        com.ime.input.a.a().c = str;
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        String str2 = UUID.randomUUID().toString() + ".tmp";
        strOooOO0o = strOooOO0o == null ? "UNKNOW" : strOooOO0o;
        strOooO = strOooO == null ? "UNKNOW" : strOooO;
        File file = new File(absolutePath, str2);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Ipc.IpcMessage.Builder cmd = Ipc.IpcMessage.newBuilder().setCmd(14);
        cmd.addArg1(i).addArg1(i2).addArg1(i3).addArg2(strOooOO0o).addArg2(strOooO).addArg2(strOooO0o0).addArg2(str).addArg2(str2).addArg2(absolutePath).addArg2(this.OooO00o.getPackageName());
        this.OooO0OO.OooOOOo(cmd.build());
    }

    private boolean OooO() {
        File file = new File(this.OooO00o.getFilesDir().getAbsolutePath() + "/tessdata/", k3.o00000o0);
        File file2 = new File(this.OooO00o.getFilesDir().getAbsolutePath() + "/tessdata/", k3.o00000Oo);
        boolean z = false;
        if (!file.exists() || !file2.exists()) {
            File file3 = new File(ag.OooOO0O + "/tessdata/", k3.o00000o0);
            File file4 = new File(ag.OooOO0O + "/tessdata/", k3.o00000Oo);
            if (!file3.exists() || !file4.exists()) {
                return false;
            }
            z = true;
        }
        this.OooO0o0 = new TessBaseAPI();
        boolean zOooOOO = this.OooO0o0.OooOOO(z ? ag.OooOO0O : this.OooO00o.getFilesDir().getAbsolutePath(), "chi_sim+eng");
        Log.d("MqmHandler", "initTessBass: init ret=".concat(String.valueOf(zOooOOO)));
        return zOooOOO;
    }

    private void OooO0OO(int i) {
        Message messageObtainMessage = this.OooO0oO.obtainMessage(5);
        messageObtainMessage.arg1 = i;
        messageObtainMessage.sendToTarget();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    private void OooO0Oo(Ipc.IpcMessage ipcMessage) throws Throwable {
        int i = Build.VERSION.SDK_INT;
        if (ipcMessage == null) {
        }
        new StringBuilder("handMessage msg.getCmd() -> ").append(ipcMessage.getCmd());
        OnRecordScriptCallback onRecordScriptCallback = this.OooO0OO.OooOOO;
        int cmd = ipcMessage.getCmd();
        if (cmd == 4) {
            this.OooO0OO.OooOO0 = true;
            this.OooO0oO.sendEmptyMessage(2);
            return;
        }
        if (cmd == 5) {
            this.OooO0oO.sendEmptyMessage(4);
            return;
        }
        if (cmd == 6) {
            this.OooO0O0.OooO00o();
            ge.OooOOo();
            int arg1 = ipcMessage.getArg1(0);
            this.OooO0OO.OooOO0 = false;
            if (arg1 == 105 || arg1 == 0) {
                int i2 = R.string.toast_on_stop_script;
                Message messageObtainMessage = this.OooO0oO.obtainMessage(5);
                messageObtainMessage.arg1 = i2;
                messageObtainMessage.sendToTarget();
            }
            this.OooO0oO.obtainMessage(3, arg1, 0, ipcMessage.getArg2(0)).sendToTarget();
            return;
        }
        if (cmd == 27) {
            OnUiElementCallback onUiElementCallback = this.OooO0OO.OooOo0O;
            if (onUiElementCallback != null) {
                onUiElementCallback.onUiElementback(ipcMessage.getArg2(0));
                return;
            }
            return;
        }
        if (cmd == 28) {
            String strValueOf = String.valueOf((ipcMessage.getArg1(0) << 16) | ipcMessage.getArg1(1));
            OnUiElementCallback onUiElementCallback2 = this.OooO0OO.OooOo0O;
            if (onUiElementCallback2 != null) {
                onUiElementCallback2.onScreenShotDone(strValueOf, ipcMessage.getFileData());
                return;
            }
            return;
        }
        if (cmd == 66) {
            this.OooO0oO.obtainMessage(6, ipcMessage).sendToTarget();
            return;
        }
        if (cmd == 67) {
            this.OooO0oO.obtainMessage(7, ipcMessage).sendToTarget();
            return;
        }
        switch (cmd) {
            case 14:
                bg.OooO0O0 oooO0O0 = new bg.OooO0O0();
                oooO0O0.OooO00o = ipcMessage.getArg1(0);
                oooO0O0.OooO0O0 = ipcMessage.getArg1(1);
                oooO0O0.OooO0OO = ipcMessage.getArg1(2) != 0;
                bg bgVar = new bg(oooO0O0, (byte) 0);
                dg dgVar = this.OooO0OO;
                dgVar.OooOO0O = bgVar;
                dgVar.new OooO0O0().start();
                break;
            case 19:
                if (onRecordScriptCallback != null) {
                    onRecordScriptCallback.onOpenRecord();
                }
                break;
            case 21:
                int arg12 = ipcMessage.getArg1(0);
                if (onRecordScriptCallback != null) {
                    onRecordScriptCallback.onStartRecord(arg12);
                }
                break;
            case 23:
                String arg2 = ipcMessage.getArg2(0);
                if (onRecordScriptCallback != null) {
                    onRecordScriptCallback.onFinishRecord(arg2);
                }
                break;
            case 25:
                int arg13 = ipcMessage.getArg1(0);
                int arg14 = ipcMessage.getArg1(1);
                int arg15 = ipcMessage.getArg1(2);
                String strValueOf2 = String.valueOf((arg13 << 16) | arg14);
                dg dgVar2 = this.OooO0OO;
                OnScreenShotCallback onScreenShotCallback = dgVar2.OooOOOO;
                if (arg15 == 0) {
                    dgVar2.OooO = false;
                }
                if (onScreenShotCallback != null) {
                    onScreenShotCallback.onScreenShotDone(strValueOf2, ipcMessage.getFileData());
                }
                break;
            case 48:
                StringBuilder sb = new StringBuilder("RPC_UPWARD  msg.getPkgName() = ");
                sb.append(ipcMessage.getPkgName());
                sb.append(" msg.getMethodName() = ");
                sb.append(ipcMessage.getMethodName());
                sb.append(" msg.getTypesList() = ");
                sb.append(ipcMessage.getTypesList());
                sb.append(" msg.getParamsList() = ");
                sb.append(ipcMessage.getParamsList());
                Object objInvoke = Invocator.invoke(ipcMessage.getPkgName(), ipcMessage.getClassName(), ipcMessage.getMethodName(), ipcMessage.getTypesList(), ipcMessage.getParamsList(), 0);
                new StringBuilder("retObj = ").append(objInvoke);
                if (ipcMessage.getIsSyncCall()) {
                    Ipc.FundType type = ipcMessage.getRetValue().getType();
                    Ipc.ReturnValue.Builder type2 = Ipc.ReturnValue.newBuilder().setType(type);
                    Ipc.IpcMessage.Builder waitId = Ipc.IpcMessage.newBuilder().setCmd(ipcMessage.getCmd()).setIsSyncCall(true).setWaitId(ipcMessage.getWaitId());
                    try {
                        switch (OooO0O0.OooO00o[type.ordinal()]) {
                            case 1:
                                type2.setValBoolean(((Boolean) objInvoke).booleanValue());
                                break;
                            case 2:
                                type2.setValInt(((Integer) objInvoke).intValue());
                                break;
                            case 3:
                                type2.setValLong(((Long) objInvoke).longValue());
                                break;
                            case 4:
                                type2.setValFloat(((Float) objInvoke).floatValue());
                                break;
                            case 5:
                                type2.setValDouble(((Double) objInvoke).doubleValue());
                                break;
                            case 6:
                                type2.setValString(objInvoke == null ? "" : (String) objInvoke);
                                break;
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    if (type != Ipc.FundType.VOID) {
                        waitId.setRetValue(type2.build());
                    }
                    Ipc.IpcMessage ipcMessageBuild = null;
                    try {
                        ipcMessageBuild = waitId.build();
                    } catch (UninitializedMessageException e) {
                        e.printStackTrace();
                    }
                    if (ipcMessageBuild != null) {
                        this.OooO0OO.OooOOOo(ipcMessageBuild);
                    }
                }
                break;
            case 64:
                this.OooO0oO.obtainMessage(18, ipcMessage.getFileData()).sendToTarget();
                break;
            case 81:
                this.OooO0oO.obtainMessage(21, ipcMessage.getArg1(0), 0, ipcMessage.getArg2(0)).sendToTarget();
                break;
            case 96:
                this.OooO0oO.obtainMessage(19, ipcMessage.getArg1(0), 0, ipcMessage.getArg2(0)).sendToTarget();
                break;
            case 129:
                this.OooO0oO.obtainMessage(17, ipcMessage.getArg1(0), 0).sendToTarget();
                break;
            case 257:
                OnScriptMessageCallback onScriptMessageCallback = this.OooO0OO.OooOOOo;
                if (onScriptMessageCallback != null) {
                    onScriptMessageCallback.onDebugMessage(ipcMessage.getFileData());
                }
                break;
            case 288:
                o00O0O0 o00o0o0 = o00O0O0.OooO0O0.OooO00o;
                if (o00o0o0.OooO0OO == null) {
                    o00o0o0.OooO0OO = new o00O0OO0();
                }
                o00O0OO0 o00o0oo0 = o00o0o0.OooO0OO;
                Context applicationContext = ag.OooO0Oo().getApplicationContext();
                o00O0OOO o00o0ooo = o00o0oo0.OooO00o;
                if (o00o0ooo != null) {
                    o00O0O0.OooO0O0.OooO00o.OooO00o().OooO00o(Ipc.IpcMessage.newBuilder().setCmd(288).addArg2(o00OO.OooO00o(o00o0ooo.a(applicationContext))).build());
                }
                break;
            case 65535:
                this.OooO0OO.OooOoO();
                break;
            default:
                switch (cmd) {
                    case 32:
                        OnScriptMessageCallback onScriptMessageCallback2 = this.OooO0OO.OooOOOo;
                        if (onScriptMessageCallback2 != null) {
                            onScriptMessageCallback2.onTracePrint(ipcMessage.getArg2(0));
                        }
                        break;
                    case 33:
                        this.OooO0oO.obtainMessage(1, ipcMessage).sendToTarget();
                        break;
                    case 34:
                        this.OooO0O0.OooO0O0(ipcMessage.getArg1(0));
                        break;
                    case 35:
                        ge.OooOOO(ipcMessage.getArg2(0));
                        break;
                    case 36:
                        this.OooO0O0.OooO0Oo(ipcMessage.getArg2(0));
                        break;
                    case 37:
                        this.OooO0O0.OooO0o(ipcMessage.getArg1(0));
                        break;
                    case 38:
                        this.OooO0O0.OooOO0O(ipcMessage.getArg2(0));
                        this.OooO0OO.OooOOOo(ne.OooO0OO(38));
                        break;
                    case 39:
                        this.OooO0O0.OooO0oo(ipcMessage.getArg2(0));
                        break;
                    case 40:
                        this.OooO0oO.obtainMessage(16, (int) (ipcMessage.getArg3(0) * 100.0f), ipcMessage.getArg1(0), Integer.valueOf(ipcMessage.getArg1(1))).sendToTarget();
                        break;
                    case 41:
                        this.OooO0O0.OooOOOo();
                        break;
                    case 42:
                        this.OooO0oO.sendEmptyMessage(8);
                        break;
                    case 43:
                        this.OooO0oO.sendEmptyMessage(9);
                        break;
                    case 44:
                        this.OooO0oO.obtainMessage(24, Integer.valueOf(ipcMessage.getArg1(0))).sendToTarget();
                        break;
                    default:
                        switch (cmd) {
                            case 50:
                                this.OooO0OO.OooOoO.onRpcReturn(ipcMessage.getArg2(0));
                                break;
                            case 51:
                                ge.OooOOo();
                                break;
                            case 52:
                                jf.OooO0o0(this.OooO00o, ipcMessage.getArg2(0), ipcMessage.getArg2(1), ipcMessage.getArg2(2));
                                break;
                            case 53:
                                jf.OooO0O0(this.OooO00o, ipcMessage.getArg2(0));
                                break;
                            case 54:
                                jf.OooO00o(this.OooO00o);
                                break;
                            case 55:
                                this.OooO0O0.OooOo00();
                                break;
                            case 56:
                                this.OooO0O0.OooOo0();
                                break;
                            case 57:
                                this.OooO0O0.OooOO0(ipcMessage.getArg1(0));
                                break;
                            case 58:
                                this.OooO0O0.OooOOO0(ipcMessage.getArg1(0));
                                break;
                            case 59:
                                this.OooO0O0.OooOOo0(ipcMessage.getArg1(0));
                                break;
                            default:
                                switch (cmd) {
                                    case 98:
                                        this.OooO0oO.obtainMessage(20, ipcMessage.getArg2(0)).sendToTarget();
                                        break;
                                    case 99:
                                        this.OooO0oO.obtainMessage(22, ipcMessage.getArg1(0), 0, ipcMessage.getArg2(0)).sendToTarget();
                                        break;
                                    case 100:
                                        OooO0o(ipcMessage.getArg2(0), ipcMessage.getArg2(1));
                                        break;
                                    case 101:
                                        String arg22 = ipcMessage.getArg2(0);
                                        ipcMessage.getArg2(1);
                                        File file = new File(arg22);
                                        ContentResolver contentResolver = this.OooO00o.getContentResolver();
                                        ContentValues contentValues = new ContentValues();
                                        contentValues.put("title", file.getName());
                                        contentValues.put("_display_name", file.getName());
                                        contentValues.put("mime_type", "video/3gp");
                                        contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
                                        contentValues.put("date_modified", Long.valueOf(System.currentTimeMillis()));
                                        contentValues.put("date_added", Long.valueOf(System.currentTimeMillis()));
                                        contentValues.put("_data", file.getAbsolutePath());
                                        contentValues.put("_size", Long.valueOf(file.length()));
                                        this.OooO00o.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues)));
                                        break;
                                    case 102:
                                        OooO0o0(ipcMessage.getArg2(0));
                                        break;
                                    case 103:
                                        ((WifiManager) this.OooO00o.getSystemService("wifi")).setWifiEnabled(ipcMessage.getArg1(0) == 1);
                                        break;
                                    case 104:
                                        Settings.System.putInt(this.OooO0O0.OooO00o.getContentResolver(), "accelerometer_rotation", (ipcMessage.getArg1(0) == 1 ? 1 : 0) ^ 1);
                                        break;
                                    case 105:
                                        ?? r5 = ipcMessage.getArg1(0) != 1 ? 0 : 1;
                                        ge geVar = this.OooO0O0;
                                        Settings.System.putInt(geVar.OooO00o.getContentResolver(), "airplane_mode_on", r5);
                                        Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
                                        intent.putExtra("state", (boolean) r5);
                                        geVar.OooO00o.sendBroadcast(intent);
                                        break;
                                    case 106:
                                        this.OooO0OO.OooOOOo(Ipc.IpcMessage.newBuilder().setCmd(106).addArg2(this.OooO0O0.OooOo0O()).build());
                                        break;
                                    case 107:
                                        this.OooO0OO.OooOOOo(Ipc.IpcMessage.newBuilder().setCmd(107).addArg2(this.OooO0O0.OooOOOO(ipcMessage.getArg2(0))).build());
                                        break;
                                    case 108:
                                        this.OooO0OO.OooOOOo(Ipc.IpcMessage.newBuilder().setCmd(108).addArg2(this.OooO0O0.OooOo0o()).build());
                                        break;
                                    case 109:
                                        String strOooO0O0 = OooO0O0(ipcMessage.getArg2Bytes(0), ipcMessage.getArg1(0), ipcMessage.getArg1(1), ipcMessage.getArg1(2));
                                        Log.e("GET_OCR_TEXT", "strOrcText:".concat(String.valueOf(strOooO0O0)));
                                        this.OooO0OO.OooOOOo(Ipc.IpcMessage.newBuilder().setCmd(109).addArg2(strOooO0O0).build());
                                        break;
                                    case 110:
                                        this.OooO0oO.obtainMessage(23, ipcMessage).sendToTarget();
                                        break;
                                    case 111:
                                        ipcMessage.getArg1(0);
                                        this.OooO0O0.OooOo();
                                        break;
                                    case 112:
                                        OooO0oO(ipcMessage.getArg2(0), ipcMessage.getArg2(1), ipcMessage.getArg1(0));
                                        break;
                                    case 113:
                                        if (ipcMessage.getArg1(0) == 1) {
                                            jg.OooO0O0(this.OooO00o);
                                        }
                                        break;
                                    default:
                                        switch (cmd) {
                                            case me.o00000oo /* 272 */:
                                                Injector.KeyPressAB(ipcMessage.getArg1(0));
                                                break;
                                            case 273:
                                                Injector.dispatchGestureMoveAB(ipcMessage.getArg2(0));
                                                break;
                                            case me.o0000oo /* 275 */:
                                                if (i >= 24) {
                                                    Injector.SwipeAB(ipcMessage.getArg3(0), ipcMessage.getArg3(1), ipcMessage.getArg3(2), ipcMessage.getArg3(3), ipcMessage.getArg1(0));
                                                }
                                                break;
                                            case me.o0000oO /* 276 */:
                                                if (i >= 24) {
                                                    Injector.TapAB(ipcMessage.getArg3(0), ipcMessage.getArg3(1), ipcMessage.getArg1(0));
                                                }
                                                break;
                                        }
                                        Injector.sendTextAB(ipcMessage.getArg2(0));
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public static void OooO0oO(String str, String str2, int i) {
        eo eoVarOooO0O0;
        zs zsVar = new zs();
        HashMap map = new HashMap();
        map.put(EncodeHintType.CHARACTER_SET, "utf-8");
        map.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
        map.put(EncodeHintType.MARGIN, 2);
        try {
            eoVarOooO0O0 = zsVar.OooO0O0(str2, BarcodeFormat.QR_CODE, i, i, map);
        } catch (WriterException e) {
            e.printStackTrace();
            eoVarOooO0O0 = null;
        }
        int[] iArr = new int[i * i];
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (eoVarOooO0O0.OooO0o0(i2, i3)) {
                    iArr[(i2 * i) + i3] = -16777216;
                } else {
                    iArr[(i2 * i) + i3] = -1;
                }
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i, i, Bitmap.Config.RGB_565);
        if (bitmapCreateBitmap == null) {
            return;
        }
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmapCreateBitmap.compress(str.endsWith(".png") ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e2) {
            Log.e("RootIpcDex", "ImageQREnCode IOException" + e2.toString());
        }
    }

    private void OooO0oo(boolean z) {
        ((WifiManager) this.OooO00o.getSystemService("wifi")).setWifiEnabled(z);
    }

    private void OooOO0O() {
        this.OooO0OO.OooOO0 = true;
        this.OooO0oO.sendEmptyMessage(2);
    }

    private void OooOO0o(int i) {
        if (i == 1) {
            jg.OooO0O0(this.OooO00o);
        }
    }

    private void OooOOO(String str) {
        this.OooO0oO.obtainMessage(5, str).sendToTarget();
    }

    private void OooOOO0(Ipc.IpcMessage ipcMessage) {
        bg.OooO0O0 oooO0O0 = new bg.OooO0O0();
        oooO0O0.OooO00o = ipcMessage.getArg1(0);
        oooO0O0.OooO0O0 = ipcMessage.getArg1(1);
        oooO0O0.OooO0OO = ipcMessage.getArg1(2) != 0;
        this.OooO0OO.OooOO0O = new bg(oooO0O0, (byte) 0);
    }

    private void OooOOOo() {
        this.OooO0oO.sendEmptyMessage(8);
    }

    private void OooOOo(String str) {
        File file = new File(str);
        ContentResolver contentResolver = this.OooO00o.getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", file.getName());
        contentValues.put("_display_name", file.getName());
        contentValues.put("mime_type", "video/3gp");
        contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("date_modified", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("date_added", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("_data", file.getAbsolutePath());
        contentValues.put("_size", Long.valueOf(file.length()));
        this.OooO00o.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues)));
    }

    private void OooOOo0(Ipc.IpcMessage ipcMessage) {
        this.OooO0O0.OooO00o();
        ge.OooOOo();
        int arg1 = ipcMessage.getArg1(0);
        this.OooO0OO.OooOO0 = false;
        if (arg1 == 105 || arg1 == 0) {
            int i = R.string.toast_on_stop_script;
            Message messageObtainMessage = this.OooO0oO.obtainMessage(5);
            messageObtainMessage.arg1 = i;
            messageObtainMessage.sendToTarget();
        }
        this.OooO0oO.obtainMessage(3, arg1, 0, ipcMessage.getArg2(0)).sendToTarget();
    }

    private void OooOOoo() {
        this.OooO0oO.sendEmptyMessage(9);
    }

    private void OooOo(Ipc.IpcMessage ipcMessage) {
        int arg1 = ipcMessage.getArg1(0);
        int arg12 = ipcMessage.getArg1(1);
        int arg13 = ipcMessage.getArg1(2);
        String strValueOf = String.valueOf((arg1 << 16) | arg12);
        dg dgVar = this.OooO0OO;
        OnScreenShotCallback onScreenShotCallback = dgVar.OooOOOO;
        if (arg13 == 0) {
            dgVar.OooO = false;
        }
        if (onScreenShotCallback != null) {
            onScreenShotCallback.onScreenShotDone(strValueOf, ipcMessage.getFileData());
        }
    }

    private void OooOo0() {
        WindowManager windowManager = (WindowManager) this.OooO00o.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        int i = displayMetrics.densityDpi;
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        String strOooOO0o = this.OooO0O0.OooOO0o();
        String strOooO = this.OooO0O0.OooO();
        String strOooO0o0 = this.OooO0O0.OooO0o0();
        String str = this.OooO00o.getPackageName() + "/" + InputKb.class.getName();
        com.ime.input.a.a().b = strOooO0o0;
        com.ime.input.a.a().c = str;
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        String str2 = UUID.randomUUID().toString() + ".tmp";
        if (strOooOO0o == null) {
            strOooOO0o = "UNKNOW";
        }
        if (strOooO == null) {
            strOooO = "UNKNOW";
        }
        File file = new File(absolutePath, str2);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Ipc.IpcMessage.Builder cmd = Ipc.IpcMessage.newBuilder().setCmd(14);
        cmd.addArg1(i).addArg1(i2).addArg1(i3).addArg2(strOooOO0o).addArg2(strOooO).addArg2(strOooO0o0).addArg2(str).addArg2(str2).addArg2(absolutePath).addArg2(this.OooO00o.getPackageName());
        this.OooO0OO.OooOOOo(cmd.build());
    }

    private void OooOo00(Ipc.IpcMessage ipcMessage) {
        OnScriptMessageCallback onScriptMessageCallback = this.OooO0OO.OooOOOo;
        if (onScriptMessageCallback != null) {
            onScriptMessageCallback.onTracePrint(ipcMessage.getArg2(0));
        }
    }

    private void OooOo0O(Ipc.IpcMessage ipcMessage) {
        OnScriptMessageCallback onScriptMessageCallback = this.OooO0OO.OooOOOo;
        if (onScriptMessageCallback != null) {
            onScriptMessageCallback.onDebugMessage(ipcMessage.getFileData());
        }
    }

    private void OooOo0o() {
        this.OooO0oO.sendEmptyMessage(10);
    }

    private void OooOoO(Ipc.IpcMessage ipcMessage) {
        OnUiElementCallback onUiElementCallback = this.OooO0OO.OooOo0O;
        if (onUiElementCallback != null) {
            onUiElementCallback.onUiElementback(ipcMessage.getArg2(0));
        }
    }

    private void OooOoO0(Ipc.IpcMessage ipcMessage) {
        String strValueOf = String.valueOf((ipcMessage.getArg1(0) << 16) | ipcMessage.getArg1(1));
        OnUiElementCallback onUiElementCallback = this.OooO0OO.OooOo0O;
        if (onUiElementCallback != null) {
            onUiElementCallback.onScreenShotDone(strValueOf, ipcMessage.getFileData());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String OooO0O0(ByteString byteString, int i, int i2, int i3) {
        Log.e("TAG", "GetOrcText: width=" + i + " hight=" + i2 + " size=" + i3);
        byte[] byteArray = byteString.toByteArray();
        int i4 = i3 / 4;
        int[] iArr = new int[i4];
        boolean zOooOOO = false;
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < 4; i6++) {
                iArr[i5] = iArr[i5] + ((byteArray[(i5 * 4) + i6] & 255) << ((3 - i6) * 8));
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888);
        if (!this.OooO0o) {
            File file = new File(this.OooO00o.getFilesDir().getAbsolutePath() + "/tessdata/", k3.o00000o0);
            File file2 = new File(this.OooO00o.getFilesDir().getAbsolutePath() + "/tessdata/", k3.o00000Oo);
            if (file.exists() && file2.exists()) {
                this.OooO0o0 = new TessBaseAPI();
                zOooOOO = this.OooO0o0.OooOOO(!zOooOOO ? ag.OooOO0O : this.OooO00o.getFilesDir().getAbsolutePath(), "chi_sim+eng");
                Log.d("MqmHandler", "initTessBass: init ret=".concat(String.valueOf(zOooOOO)));
                this.OooO0o = zOooOOO;
            } else {
                File file3 = new File(ag.OooOO0O + "/tessdata/", k3.o00000o0);
                File file4 = new File(ag.OooOO0O + "/tessdata/", k3.o00000Oo);
                if (file3.exists() && file4.exists()) {
                    zOooOOO = true;
                    this.OooO0o0 = new TessBaseAPI();
                    zOooOOO = this.OooO0o0.OooOOO(!zOooOOO ? ag.OooOO0O : this.OooO00o.getFilesDir().getAbsolutePath(), "chi_sim+eng");
                    Log.d("MqmHandler", "initTessBass: init ret=".concat(String.valueOf(zOooOOO)));
                }
                this.OooO0o = zOooOOO;
            }
        }
        if (!this.OooO0o) {
            return "";
        }
        this.OooO0o0.OooO0Oo(bitmapCreateBitmap);
        String strOooO00o = this.OooO0o0.OooO00o();
        bitmapCreateBitmap.recycle();
        return strOooO00o;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x008d A[Catch: Exception -> 0x00ec, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ec, blocks: (B:4:0x0027, B:25:0x00c8, B:27:0x00d8, B:5:0x003a, B:9:0x0050, B:15:0x0067, B:17:0x008d, B:19:0x00a5, B:22:0x00c1, B:10:0x0054, B:12:0x005c), top: B:32:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void OooO0o(String str, String str2) {
        Uri uriInsert;
        String str3;
        int i = Build.VERSION.SDK_INT;
        Log.e("InsertImageToGallery", "InsertImageToGallery:" + str + com.anythink.expressad.foundation.g.a.bQ + str2);
        File file = new File(str);
        try {
            if (i < 29) {
                MediaStore.Images.Media.insertImage(this.OooO00o.getContentResolver(), file.getAbsolutePath(), file.getName(), (String) null);
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", str2);
                if (!str2.endsWith(".png")) {
                    str3 = (str2.endsWith(".jpg") || str2.endsWith(".jpeg")) ? "image/jpeg" : "image/png";
                    contentValues.put("relative_path", Environment.DIRECTORY_DCIM + "/anjian");
                    ContentResolver contentResolver = this.OooO00o.getContentResolver();
                    uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                    if (uriInsert != null) {
                        Log.e("InsertImageToGallery", "图片保存失败:" + str + com.anythink.expressad.foundation.g.a.bQ + str2);
                        return;
                    }
                    try {
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                        FileUtils.copy(bufferedInputStream, outputStreamOpenOutputStream);
                        bufferedInputStream.close();
                        outputStreamOpenOutputStream.close();
                        file.delete();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                contentValues.put("mime_type", str3);
                contentValues.put("relative_path", Environment.DIRECTORY_DCIM + "/anjian");
                ContentResolver contentResolver2 = this.OooO00o.getContentResolver();
                uriInsert = contentResolver2.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                if (uriInsert != null) {
                }
            }
            if (i >= 19) {
                MediaScannerConnection.scanFile(this.OooO00o, new String[]{file.getAbsolutePath()}, null, null);
                return;
            }
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(Uri.fromFile(file));
            this.OooO00o.sendBroadcast(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void OooO0o0(String str) {
        String[] strArr = {str + "%"};
        try {
            this.OooO00o.getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_data LIKE ?", strArr);
            this.OooO00o.getContentResolver().delete(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "_data LIKE ?", strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

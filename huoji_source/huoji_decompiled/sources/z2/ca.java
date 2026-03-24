package z2;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ac.R;
import com.cyjh.elfin.receiver.NetStateReceiver;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import java.io.File;
import java.util.concurrent.Executors;
import z2.ce;

/* JADX INFO: loaded from: classes.dex */
public class ca extends w9 implements View.OnClickListener {
    private static final int o000OOo = 1002;
    private static final int o0O0O00 = 1001;
    private static final int o0OO00O = 500;
    private static String o0Oo0oo = ca.class.getSimpleName();
    private static final int oo0o0Oo = 1000;
    private TextView Ooooo0o;
    private TextView OooooO0;
    private TextView OooooOO;
    private Button OooooOo;
    private Button Oooooo;
    private Button Oooooo0;
    private Button OoooooO;
    private ProgressBar Ooooooo;
    private VersionUpdateInfo o00O0O;
    private boolean o00Oo0;
    private String o00Ooo;
    private String o00o0O;
    private boolean o00oO0O;
    public NetStateReceiver.OooO00o o00oO0o;
    private boolean o00ooo;
    public ce.OooO0OO o0OOO0o;
    private LinearLayout o0OoOo0;
    private boolean o0ooOO0;
    private boolean o0ooOOo;
    private Handler o0ooOoO;
    private Context oo000o;
    private LinearLayout ooOO;

    public class OooO00o implements NetStateReceiver.OooO00o {
        public OooO00o() {
        }

        @Override // com.cyjh.elfin.receiver.NetStateReceiver.OooO00o
        public void OooO00o() {
            String unused = ca.o0Oo0oo;
            ca.this.o0ooOO0 = true;
            ca.this.o0ooOOo = true;
        }

        @Override // com.cyjh.elfin.receiver.NetStateReceiver.OooO00o
        public void OooO0O0(int i) {
            String unused = ca.o0Oo0oo;
            if (ca.this.o00oO0O && ca.this.o0ooOO0) {
                ca.this.OooOOOo();
            }
        }
    }

    public class OooO0O0 implements ce.OooO0OO {
        public OooO0O0() {
        }

        @Override // z2.ce.OooO0OO
        public void OooO00o(long j, long j2, int i) {
            String unused = ca.o0Oo0oo;
            String str = "onDownloading --> progress=" + i;
            Message messageObtain = Message.obtain();
            messageObtain.obj = Integer.valueOf(i);
            messageObtain.what = 1001;
            ca.this.o0ooOoO.sendMessage(messageObtain);
        }

        @Override // z2.ce.OooO0OO
        public void OooO0O0(Exception exc) {
            String unused = ca.o0Oo0oo;
            String str = "onDownloadFailed --> exception=" + exc.getMessage();
            ca.this.o0ooOoO.sendEmptyMessage(1002);
        }

        @Override // z2.ce.OooO0OO
        public void OooO0OO(File file) {
            String unused = ca.o0Oo0oo;
            String str = "onDownloadSuccess --> file=" + file.getName();
            Message messageObtain = Message.obtain();
            messageObtain.obj = file;
            messageObtain.what = 1000;
            ca.this.o0ooOoO.sendMessage(messageObtain);
        }
    }

    public class OooO0OO extends AsyncTask<String, Void, Void> {
        private OooO0OO() {
        }

        public /* synthetic */ OooO0OO(ca caVar, OooO00o oooO00o) {
            this();
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            try {
                ca.this.o00oO0O = true;
                File file = new File(strArr[0]);
                ce.OooO0oo().OooO0o(ca.this.o00O0O.UpdateUrl, file.getParentFile().getAbsolutePath(), file.getName(), ca.this.o00O0O.PackageSize, ca.this.o0OOO0o);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
        }
    }

    public ca(Context context, VersionUpdateInfo versionUpdateInfo, boolean z) {
        Window window;
        int i;
        super(context, R.style.Theme_Dialog);
        this.o0ooOOo = true;
        this.o0ooOoO = new Handler(new Handler.Callback() { // from class: z2.t9
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.OoooOoO.OooOoO0(message);
            }
        });
        this.o0OOO0o = new OooO0O0();
        this.o00Oo0 = z;
        this.oo000o = context;
        if (z) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 26) {
                window = getWindow();
                i = 2038;
            } else if (i2 < 19 || i2 >= 24) {
                window = getWindow();
                i = 2002;
            } else {
                window = getWindow();
                i = 2005;
            }
            window.setType(i);
        }
        this.o00O0O = versionUpdateInfo;
    }

    private void OooOOO(final File file) {
        if (this.o00ooo) {
            return;
        }
        OooOOoo(file);
        this.OoooooO.setText("安装");
        this.OoooooO.setOnClickListener(new View.OnClickListener() { // from class: z2.v9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.OoooOoO.OooOo0(file, view);
            }
        });
    }

    private void OooOOOO() {
        this.ooOO.setVisibility(8);
        if (this.o00O0O.UpdateType != 1) {
            this.o0OoOo0.setVisibility(0);
            this.OooooOo.setVisibility(8);
            setCancelable(true);
            setCanceledOnTouchOutside(true);
            return;
        }
        this.o0OoOo0.setVisibility(8);
        this.OoooooO.setVisibility(8);
        this.OooooOo.setVisibility(0);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOOOo() {
        if (this.o0ooOOo) {
            this.o0ooOOo = false;
            setCanceledOnTouchOutside(false);
            setCancelable(false);
            this.ooOO.setVisibility(0);
            this.o0OoOo0.setVisibility(8);
            this.OooooOo.setVisibility(8);
            new OooO0OO(this, null).executeOnExecutor(Executors.newCachedThreadPool(), Environment.getExternalStorageDirectory() + File.separator + getContext().getPackageName() + com.anythink.china.common.a.a.g);
        }
    }

    private void OooOOo() {
        this.Ooooo0o = (TextView) findViewById(R.id.update_dialog_textview_size);
        this.OooooO0 = (TextView) findViewById(R.id.update_dialog_textview_updatecontent);
        this.OooooOO = (TextView) findViewById(R.id.update_dialog_textview_downloadprogress);
        this.OooooOo = (Button) findViewById(R.id.update_dialog_button_forceupdate);
        this.Oooooo0 = (Button) findViewById(R.id.update_dialog_button_updatenow);
        this.Oooooo = (Button) findViewById(R.id.update_dialog_button_nexttime);
        this.OoooooO = (Button) findViewById(R.id.update_dialog_button_cancel);
        this.Ooooooo = (ProgressBar) findViewById(R.id.update_dialog_progressBar);
        this.o0OoOo0 = (LinearLayout) findViewById(R.id.update_dialog_linearlayout_update);
        this.ooOO = (LinearLayout) findViewById(R.id.update_dialog_linearlayout_download);
        this.OooooOo.setOnClickListener(this);
        this.Oooooo0.setOnClickListener(this);
        this.Oooooo.setOnClickListener(this);
        this.OoooooO.setOnClickListener(this);
        OooOOOO();
        this.Ooooo0o.setText(k4.OooO0Oo(this.o00O0O.PackageSize));
        this.Ooooo0o.setVisibility(0);
        this.OooooO0.setText(this.o00O0O.UpdateContent);
    }

    private void OooOOo0() {
        this.o00oO0o = new OooO00o();
        NetStateReceiver.OooO0o(this.oo000o);
        NetStateReceiver.OooO0oO(this.o00oO0o);
    }

    private void OooOOoo(final File file) {
        new Handler().postDelayed(new Runnable() { // from class: z2.u9
            @Override // java.lang.Runnable
            public final void run() {
                this.OoooOoO.OooOo0o(file);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooOo, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ boolean OooOoO0(Message message) {
        switch (message.what) {
            case 1000:
                OooOOO((File) message.obj);
                break;
            case 1001:
                int iIntValue = ((Integer) message.obj).intValue();
                this.OooooOO.setText(iIntValue + "%");
                this.Ooooooo.setProgress(iIntValue);
                break;
            case 1002:
                this.o0ooOOo = true;
                OooOOOO();
                break;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooOo00, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooOo0(File file, View view) {
        OooOOoo(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooOo0O, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooOo0o(File file) {
        try {
            dismiss();
            w3.Oooo00o(this.oo000o, file, R.string.pay_appid);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        NetStateReceiver.OooO(this.oo000o);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.update_dialog_button_cancel /* 2131297419 */:
                this.o00ooo = true;
                NetStateReceiver.OooO(this.oo000o);
                ce.OooO0oo().OooO0o0();
                break;
            case R.id.update_dialog_button_forceupdate /* 2131297420 */:
            case R.id.update_dialog_button_updatenow /* 2131297422 */:
                OooOOOo();
                return;
            case R.id.update_dialog_button_nexttime /* 2131297421 */:
                break;
            default:
                return;
        }
        dismiss();
    }

    @Override // z2.w9, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.update_dialog);
        OooO0Oo(0.9f, 0.6f);
        OooOOo();
        OooOOo0();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }
}

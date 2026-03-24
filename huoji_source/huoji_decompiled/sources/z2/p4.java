package z2;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class p4 {
    private static p4 OooO0o = null;
    private static final int OooO0oO = 1;
    private static final int OooO0oo = 0;
    private Context OooO00o;
    private OooO0OO OooO0O0;
    private volatile boolean OooO0OO;
    private String OooO0Oo;
    private Handler OooO0o0 = new OooO00o(Looper.getMainLooper());

    public class OooO00o extends Handler {
        public OooO00o(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (p4.this.OooO0O0 != null) {
                if (message.what == 1) {
                    p4.this.OooO0O0.onSuccess();
                }
                if (message.what == 0) {
                    p4.this.OooO0O0.onFailed(message.obj.toString());
                }
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ String OoooOoo;

        public OooO0O0(String str, String str2) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p4 p4Var = p4.this;
            p4Var.OooO0oO(p4Var.OooO00o, this.OoooOoO, this.OoooOoo);
            (p4.this.OooO0OO ? p4.this.OooO0o0.obtainMessage(1) : p4.this.OooO0o0.obtainMessage(0, p4.this.OooO0Oo)).sendToTarget();
        }
    }

    public interface OooO0OO {
        void onFailed(String str);

        void onSuccess();
    }

    private p4(Context context) {
        this.OooO00o = context;
    }

    public static p4 OooO(Context context) {
        if (OooO0o == null) {
            OooO0o = new p4(context);
        }
        return OooO0o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0oO(Context context, String str, String str2) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length > 0) {
                File file = new File(Environment.getExternalStorageDirectory(), str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                for (String str3 : list) {
                    if (str.equals("")) {
                        OooO0oO(context, str3, str2 + File.separator + str3);
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        String str4 = File.separator;
                        sb.append(str4);
                        sb.append(str3);
                        OooO0oO(context, sb.toString(), str2 + str4 + str3);
                    }
                }
            } else {
                File file2 = new File(Environment.getExternalStorageDirectory(), str2);
                InputStream inputStreamOpen = context.getAssets().open(str);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = inputStreamOpen.read(bArr);
                    if (i == -1) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, i);
                    }
                }
                fileOutputStream.flush();
                inputStreamOpen.close();
                fileOutputStream.close();
            }
            this.OooO0OO = true;
        } catch (Exception e) {
            e.printStackTrace();
            this.OooO0Oo = e.getMessage();
            this.OooO0OO = false;
        }
    }

    public p4 OooO0oo(String str, String str2) {
        new Thread(new OooO0O0(str, str2)).start();
        return this;
    }

    public void OooOO0(OooO0OO oooO0OO) {
        this.OooO0O0 = oooO0OO;
    }
}

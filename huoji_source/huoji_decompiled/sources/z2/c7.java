package z2;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.http.bean.response.ProjectNumberInfo;
import com.cyjh.mq.sdk.MqRunner;
import java.io.File;
import java.util.concurrent.Executors;
import z2.ce;
import z2.h7;
import z2.rc;

/* JADX INFO: loaded from: classes.dex */
public class c7 {
    public static int OooO = 1003;
    public static int OooO0o = 1000;
    private static String OooO0o0 = "c7";
    public static int OooO0oO = 1001;
    public static int OooO0oo = 1002;
    public static int OooOO0 = 1004;
    private static c7 OooOO0O;
    private Context OooO00o;
    private String OooO0O0;
    private int OooO0OO = OooO0oo;
    private Handler OooO0Oo;

    public class OooO extends AsyncTask<String, Integer, Void> {

        public class OooO00o implements ce.OooO0OO {
            private long OooO00o = 0;

            public OooO00o() {
            }

            @Override // z2.ce.OooO0OO
            public void OooO00o(long j, long j2, int i) {
                long j3 = i;
                if (this.OooO00o != j3) {
                    this.OooO00o = j3;
                    OooO.this.publishProgress(Integer.valueOf(i));
                }
            }

            @Override // z2.ce.OooO0OO
            public void OooO0O0(Exception exc) {
                c7.this.OooO0o0();
            }

            @Override // z2.ce.OooO0OO
            public void OooO0OO(File file) {
                this.OooO00o = 0L;
                c7.this.OooO0o(file);
            }
        }

        private OooO() {
        }

        public /* synthetic */ OooO(c7 c7Var, OooO00o oooO00o) {
            this();
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            try {
                String str = strArr[0];
                File fileOooOO0o = j4.OooOO0o(strArr[1], str.substring(str.lastIndexOf("/")));
                ce.OooO0oo().OooO0o(str, fileOooOO0o.getParentFile().getAbsolutePath(), fileOooOO0o.getName(), -1, new OooO00o());
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
        public void onProgressUpdate(Integer... numArr) {
            super.onProgressUpdate(numArr);
            t5.OoooO0("正在更新脚本(" + numArr[0] + "%)");
        }
    }

    public class OooO00o implements h7.OooOO0 {
        public final /* synthetic */ File OooO00o;

        /* JADX INFO: renamed from: z2.c7$OooO00o$OooO00o, reason: collision with other inner class name */
        public class RunnableC0246OooO00o implements Runnable {
            public RunnableC0246OooO00o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                t5.o000oOoO("脚本更新完成，但是key信息加载错误，请重启app");
            }
        }

        public class OooO0O0 implements Runnable {
            public OooO0O0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                t5.o000oOoO("脚本更新完成");
            }
        }

        public OooO00o(File file) {
            this.OooO00o = file;
        }

        @Override // z2.h7.OooOO0
        public void OooO00o(Object obj) {
            String str = "afterDownloadSuccess --> 2 initScript --- onCallbackSuc --> " + Thread.currentThread().getName();
            c7.this.OooO0Oo.post(new OooO0O0());
            j4.OooO(this.OooO00o);
            String unused = c7.OooO0o0;
            String str2 = "afterDownloadSuccess --> 3 initScript:" + i7.OooO().OooOOO();
            if (AppContext.OooO00o().Oooooo) {
                if (i7.OooO().OooOOO()) {
                    i7.OooO().OooO0oO();
                } else {
                    c7.this.OooOO0();
                }
                z6.OooO0Oo().OooO0OO().Oooo0o();
                y8.OooOO0();
            } else {
                c7.this.OooOO0();
                l10.OooO0o().OooOOOO(new MsgItem(1008));
            }
            if (z6.OooO0Oo().OooO0OO() != null) {
                z6.OooO0Oo().OooO0OO().setIsPreventRepeatedClick(false);
            }
        }

        @Override // z2.h7.OooOO0
        public void OooO0O0() {
            String str = "afterDownloadSuccess --> 3 initScript --- onCallbackFail ---> " + Thread.currentThread().getName();
            c7.this.OooO0Oo.post(new RunnableC0246OooO00o());
            j4.OooO(this.OooO00o);
            if (z6.OooO0Oo().OooO0OO() != null) {
                z6.OooO0Oo().OooO0OO().setIsPreventRepeatedClick(false);
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public OooO0O0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t5.o000oOoO("脚本更新失败，请重启小精灵进行更新");
        }
    }

    public class OooO0OO implements Runnable {
        public OooO0OO() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t5.o000oOoO("脚本更新失败，请重启小精灵进行更新");
        }
    }

    public class OooO0o implements rc.OooO00o {
        public final /* synthetic */ String OooO00o;

        public class OooO00o implements rc.OooO00o {
            public final /* synthetic */ String OooO00o;
            public final /* synthetic */ String OooO0O0;

            public OooO00o(String str, String str2) {
                this.OooO00o = str;
                this.OooO0O0 = str2;
            }

            @Override // z2.rc.OooO00o
            public void OooO00o(int i, String str) {
                rc.OooO0oO().OooOO0(null);
            }

            @Override // z2.rc.OooO00o
            public void OooO0O0(ProjectNumberInfo projectNumberInfo) {
                String unused = c7.OooO0o0;
                AppContext.OooO00o().OoooOoO = this.OooO00o;
                rc.OooO0oO().OooOO0(null);
                x4.OooO0O0().OooO0oo(f6.OooOoo0, q4.OooO00o(this.OooO0O0));
                l10.OooO0o().OooOOOO(new fh(10001, projectNumberInfo.IMToken));
            }
        }

        public OooO0o(String str) {
            this.OooO00o = str;
        }

        @Override // z2.rc.OooO00o
        public void OooO00o(int i, String str) {
        }

        @Override // z2.rc.OooO00o
        public void OooO0O0(ProjectNumberInfo projectNumberInfo) {
            String str = this.OooO00o;
            String str2 = AppContext.OooO00o().OoooOoO;
            String strOooO0o = c9.OooO0o(AppContext.OooO00o(), b7.OooO0Oo().OooO0O0);
            String strOooO0oO = c9.OooO0oO(AppContext.OooO00o(), b7.OooO0Oo().OooO0O0);
            String strOooO0Oo = c9.OooO0Oo(AppContext.OooO00o());
            rc.OooO0oO().OooO0OO(AppContext.OooO00o(), str2, str, strOooO0o, strOooO0oO, strOooO0Oo, new OooO00o(str2, strOooO0Oo));
        }
    }

    private c7() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0o(File file) {
        boolean zOooO0OO = g5.OooO0OO(file, j4.OooO0o0(this.OooO00o, g6.o0Oo0oo));
        String str = "afterDownloadSuccess --> 2 解压是否成功：" + zOooO0OO;
        if (zOooO0OO) {
            h7.OooO0Oo(new OooO00o(file), true);
            return;
        }
        this.OooO0Oo.post(new OooO0O0());
        if (this.OooO0OO == OooO0o) {
            dh.OooO0oO(-1, "脚本解压失败！", this.OooO0O0);
        } else {
            b5.OooO0OO().OooO0oO(b5.OooO0OO().OooO0Oo());
        }
        if (z6.OooO0Oo().OooO0OO() != null) {
            z6.OooO0Oo().OooO0OO().setIsPreventRepeatedClick(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0o0() {
        this.OooO0Oo.post(new OooO0OO());
        if (this.OooO0OO == OooO0o) {
            dh.OooO0o(-1, "脚本下载失败!");
        } else {
            b5.OooO0OO().OooO0oO(b5.OooO0OO().OooO0Oo());
        }
        if (z6.OooO0Oo().OooO0OO() != null) {
            z6.OooO0Oo().OooO0OO().setIsPreventRepeatedClick(false);
        }
    }

    public static c7 OooO0oo() {
        if (OooOO0O == null) {
            synchronized (c7.class) {
                if (OooOO0O == null) {
                    OooOO0O = new c7();
                }
            }
        }
        return OooOO0O;
    }

    private void OooOO0O(String str) {
        String str2 = this.OooO00o.getPackageName() + File.separator + g6.o0ooOoO;
        t5.o000oOoO("脚本开始热更新");
        new OooO(this, null).executeOnExecutor(Executors.newCachedThreadPool(), str, str2);
    }

    public c7 OooO(Context context, String str, int i) {
        this.OooO00o = context;
        if (this.OooO0Oo == null) {
            this.OooO0Oo = new Handler(this.OooO00o.getMainLooper());
        }
        this.OooO0O0 = str;
        this.OooO0OO = i;
        return this;
    }

    public void OooO0oO(String str) {
        String str2 = "downloadScriptOperate --> scriptFileUrl=" + str;
        if (this.OooO0OO == OooO0o && MqRunner.getInstance().isScriptStarted()) {
            dh.OooO0o(-1, "脚本更新失败！");
        } else {
            OooOO0O(str);
        }
    }

    public void OooOO0() {
        String id = b7.OooO0Oo().OooO0oO().getId();
        String str = "afterDownloadSuccess --> 3 initScript script beforeUpdateScriptId :" + id;
        b7.OooO0Oo().OooOOO();
        y8.OooOO0o(1);
        b5.OooO0OO().OooO0oo(b5.OooO0OO().OooO0O0());
        String str2 = "afterDownloadSuccess --> 3 initScript mCurrentType:" + this.OooO0OO;
        String id2 = b7.OooO0Oo().OooO0oO().getId();
        String str3 = "afterDownloadSuccess --> 3 initScript script afterUpdateScriptId :" + id2;
        if (!id.equals(id2) && !TextUtils.isEmpty(AppContext.OooO00o().OoooOoO)) {
            rc.OooO0oO().OooOO0O(AppContext.OooO00o(), id, new OooO0o(id2));
        }
        int i = this.OooO0OO;
        if (i == OooO0o) {
            dh.OooO0o(0, "脚本更新成功！");
        } else if (i == OooO) {
            if (MqRunner.getInstance().isScriptStarted()) {
                MqRunner.getInstance().stop();
                String str4 = "stop --> 3 initScript mCurrentType:" + this.OooO0OO;
            }
            l10.OooO0o().OooOOOO(new MsgItem(MsgItem.SCRIPT_NEED_START));
        }
        if (OooOO0 == this.OooO0OO) {
            l10.OooO0o().OooOOOO(new MsgItem(MsgItem.SCRIPT_NEED_START));
        }
        l10.OooO0o().OooOOOO(new q3(this.OooO0OO));
        l10.OooO0o().OooOOOO(new p3());
    }
}

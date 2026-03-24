package z2;

import android.content.Context;
import android.os.AsyncTask;
import java.io.File;
import java.util.concurrent.Executors;
import z2.ce;

/* JADX INFO: loaded from: classes.dex */
public class ec {
    private static String OooO0Oo = "ec";
    private static ec OooO0o0;
    private Context OooO00o;
    private OooO0o OooO0O0;
    public ce.OooO0OO OooO0OO = new OooO00o();

    public class OooO00o implements ce.OooO0OO {
        public OooO00o() {
        }

        @Override // z2.ce.OooO0OO
        public void OooO00o(long j, long j2, int i) {
        }

        @Override // z2.ce.OooO0OO
        public void OooO0O0(Exception exc) {
            String unused = ec.OooO0Oo;
            String str = "onDownloadFailed --> exception=" + exc.getMessage();
            if (ec.this.OooO0O0 != null) {
                ec.this.OooO0O0.OooO0O0("下载语音识别库失败！");
            }
        }

        @Override // z2.ce.OooO0OO
        public void OooO0OO(File file) {
            String unused = ec.OooO0Oo;
            String str = "onDownloadSuccess --> file=" + file.getName();
            ec.this.new OooO0O0(file).executeOnExecutor(Executors.newCachedThreadPool(), new Void[0]);
        }
    }

    public class OooO0O0 extends AsyncTask<Void, Void, Boolean> {
        private File OooO00o;

        public OooO0O0(File file) {
            this.OooO00o = file;
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground(Void... voidArr) {
            boolean zOooO0OO = g5.OooO0OO(this.OooO00o, j4.OooO0o(k3.o0O0O00 + File.separator + k3.o00000OO));
            j4.OooO(this.OooO00o);
            String unused = ec.OooO0Oo;
            String str = "DeleteZipTask doInBackground --> result=" + zOooO0OO;
            return Boolean.valueOf(zOooO0OO);
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            if (ec.this.OooO0O0 != null) {
                if (bool.booleanValue()) {
                    ec.this.OooO0O0.OooO0OO();
                } else {
                    ec.this.OooO0O0.OooO0O0("下载语音识别库失败！");
                }
            }
        }
    }

    public class OooO0OO extends AsyncTask<String, Void, Void> {
        private Context OooO00o;

        public OooO0OO(Context context) {
            this.OooO00o = context;
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            try {
                File fileOooO0o = j4.OooO0o(k3.o0O0O00 + File.separator + k3.o00000OO);
                File file = new File(fileOooO0o, k3.o00000Oo);
                File file2 = new File(fileOooO0o, k3.o00000Oo);
                j4.OooO(file);
                j4.OooO(file2);
                String strSubstring = strArr[0].substring(strArr[0].lastIndexOf("/"));
                File fileOooOO0o = j4.OooOO0o(strArr[1], strSubstring);
                String unused = ec.OooO0Oo;
                String str = "LibraryDownloadTask doInBackground --> zipName=" + strSubstring + ", file path = " + fileOooOO0o.getAbsolutePath();
                ce.OooO0oo().OooO0o(strArr[0], fileOooOO0o.getParentFile().getAbsolutePath(), fileOooOO0o.getName(), -1, ec.this.OooO0OO);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public interface OooO0o {
        void OooO00o();

        void OooO0O0(String str);

        void OooO0OO();
    }

    private ec() {
    }

    public static ec OooO0Oo() {
        if (OooO0o0 == null) {
            synchronized (ec.class) {
                if (OooO0o0 == null) {
                    OooO0o0 = new ec();
                }
            }
        }
        return OooO0o0;
    }

    private void OooO0oO(String str) {
        if (OooO0o()) {
            OooO0o oooO0o = this.OooO0O0;
            if (oooO0o != null) {
                oooO0o.OooO00o();
                return;
            }
            return;
        }
        String str2 = this.OooO00o.getPackageName() + File.separator + k3.o00000OO;
        String str3 = "libraryDownloadTask --> path=" + str2;
        new OooO0OO(this.OooO00o).executeOnExecutor(Executors.newCachedThreadPool(), str, str2);
    }

    public void OooO0OO(String str, OooO0o oooO0o) {
        String str2 = "download --> url=" + str;
        this.OooO0O0 = oooO0o;
        OooO0oO(str);
    }

    public boolean OooO0o() {
        String str = k3.o000OOo + k3.o00000OO;
        File file = new File(str, k3.o00000Oo);
        File file2 = new File(str, k3.o00000o0);
        return file.exists() && file.length() > 0 && file2.exists() && file2.length() > 0;
    }

    public ec OooO0o0(Context context) {
        this.OooO00o = context;
        return this;
    }
}

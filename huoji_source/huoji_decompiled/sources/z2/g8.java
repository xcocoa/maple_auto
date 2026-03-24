package z2;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.ac.R;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.http.oss.MyOSSUtils;
import java.io.File;
import z2.zc;

/* JADX INFO: loaded from: classes.dex */
public class g8 extends AsyncTask<String, Void, String> {
    private static final String OooO00o = "MyAsyncTask";

    public class OooO00o implements MyOSSUtils.UploadFileCallBack {
        public final /* synthetic */ String OooO00o;

        public OooO00o(String str) {
            this.OooO00o = str;
        }

        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
        public void uploadFail(String str) {
            String str2 = "uploadFail -- > 上传图片失败 fileName=" + str;
            dh.OooO0O0(-1, "阿里云上传图片失败！");
        }

        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
        public void uploadProgress(long j, long j2) {
        }

        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
        public void uploadSuc(String str, String str2) {
            String str3 = "uploadSuc -- > 上传图片成功 serverUrl=" + str;
            g8.this.OooO0Oo(b7.OooO0Oo().OooO0oO().getId(), this.OooO00o);
        }
    }

    public class OooO0O0 implements zc.OooO00o {
        public OooO0O0() {
        }

        @Override // z2.zc.OooO00o
        public void OooO00o(int i, String str) {
            dh.OooO0O0(-1, "上传文件失败！");
        }

        @Override // z2.zc.OooO00o
        public void OooO0O0(String str) {
            dh.OooO0O0(0, "截屏成功！");
        }
    }

    public interface OooO0OO {
        void OooO00o(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0Oo(String str, String str2) {
        zc.OooO0o().OooOO0(AppContext.OooO00o(), str, str2, new OooO0O0());
    }

    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
    public String doInBackground(String... strArr) {
        String str;
        String str2 = strArr[0];
        if (TextUtils.isEmpty(str2)) {
            dh.OooO0O0(-1, "截图文件生成失败！");
        }
        File file = new File(strArr[0]);
        if (!file.exists() || file.length() <= 0) {
            dh.OooO0O0(-1, "截图文件生成失败！");
        } else {
            if (gc.OooO0OO().OooO0OO == null) {
                new uc().OooO0OO(AppContext.OooO00o());
                str = "阿里云存储初始化中……";
            } else if (TextUtils.isEmpty(gc.OooO0OO().OooO0OO.OssStudioScreenshotPathF)) {
                str = "OssStudioScreenshotPathF参数出错！";
            } else {
                String str3 = gc.OooO0OO().OooO0OO.OssStudioScreenshotPathF.replace("{AppId}", AppContext.OooO00o().getString(R.string.elfin_appid)).replace("{ScriptId}", b7.OooO0Oo().OooO0oO().getId()).replace("{DeviceId}", ae.OooO00o(AppContext.OooO00o()).DeviceId) + File.separator + System.currentTimeMillis() + ".png";
                String str4 = "objectKey=" + str3;
                MyOSSUtils myOSSUtilsBuild = new MyOSSUtils.Builder(AppContext.OooO00o(), gc.OooO0OO().OooO0OO).build();
                if (myOSSUtilsBuild.isTokenExpireTime()) {
                    dh.OooO0O0(-1, "阿里云Token过期，稍后再试！");
                    new uc().OooO0OO(AppContext.OooO00o());
                } else {
                    myOSSUtilsBuild.uploadFile(str2, str3, new OooO00o(str3));
                }
            }
            dh.OooO0O0(-1, str);
        }
        return str2;
    }

    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
    }
}

package z2;

import android.content.Context;
import com.cyjh.http.bean.request.UploadDeviceScreenshotRequestInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class zc extends hc {
    private static final String OooO0OO = "zc";
    private static final long OooO0Oo = 1;
    private static zc OooO0o0;
    private OooO00o OooO0O0;

    public interface OooO00o {
        void OooO00o(int i, String str);

        void OooO0O0(String str);
    }

    private zc() {
    }

    public static zc OooO0o() {
        if (OooO0o0 == null) {
            synchronized (zc.class) {
                if (OooO0o0 == null) {
                    OooO0o0 = new zc();
                }
            }
        }
        return OooO0o0;
    }

    private void OooO0oo(int i, String str) {
        OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooO00o(i, str);
        }
    }

    public zc OooO(OooO00o oooO00o) {
        this.OooO0O0 = oooO00o;
        return this;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        String message;
        if (obj != null) {
            try {
                JSONObject jSONObject = new JSONObject((String) obj);
                int i = jSONObject.getInt("Code");
                String string = jSONObject.getString(g6.OooO0Oo);
                if (i == 200) {
                    OooO00o oooO00o = this.OooO0O0;
                    if (oooO00o != null) {
                        oooO00o.OooO0O0(string);
                    }
                } else {
                    OooO0oo(i, string);
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                message = e.getMessage();
            }
        } else {
            message = "后台返回数据为空！";
        }
        OooO0oo(-1, message);
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        OooO0oo(-1, str);
    }

    public void OooO0OO() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
            this.OooO00o.OooOOO(getClass().getSimpleName());
            this.OooO00o.OooOOO(getClass().getName());
        }
    }

    public void OooO0oO() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
        }
    }

    public void OooOO0(Context context, String str, String str2, OooO00o oooO00o) {
        try {
            this.OooO0O0 = oooO00o;
            UploadDeviceScreenshotRequestInfo uploadDeviceScreenshotRequestInfo = new UploadDeviceScreenshotRequestInfo(gc.OooO0OO().OooO00o(context));
            uploadDeviceScreenshotRequestInfo.ScriptId = str;
            uploadDeviceScreenshotRequestInfo.ImageOssPath = str2;
            String string = j3.OooO(j3.OooOOOo, k3.o000000O, k3.o0000oO).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, uploadDeviceScreenshotRequestInfo));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

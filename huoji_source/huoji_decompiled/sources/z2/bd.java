package z2;

import android.content.Context;
import com.cyjh.http.bean.request.UploadScriptSettingRequestInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class bd extends hc {
    private static final String OooO0OO = "bd";
    private static bd OooO0Oo;
    private OooO00o OooO0O0;

    public interface OooO00o {
        void OooO00o(int i, String str);

        void OooO0O0(String str);
    }

    private bd() {
    }

    public static bd OooO0o() {
        if (OooO0Oo == null) {
            synchronized (bd.class) {
                if (OooO0Oo == null) {
                    OooO0Oo = new bd();
                }
            }
        }
        return OooO0Oo;
    }

    private void OooO0oo(int i, String str) {
        OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooO00o(i, str);
        }
    }

    public bd OooO(OooO00o oooO00o) {
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

    public void OooOO0(Context context, String str, String str2, String str3, OooO00o oooO00o) {
        try {
            this.OooO0O0 = oooO00o;
            UploadScriptSettingRequestInfo uploadScriptSettingRequestInfo = new UploadScriptSettingRequestInfo(gc.OooO0OO().OooO00o(context));
            uploadScriptSettingRequestInfo.ScriptId = str;
            uploadScriptSettingRequestInfo.ScriptUI = str2;
            uploadScriptSettingRequestInfo.ScriptSettings = str3;
            String string = j3.OooO(j3.OooOOOo, k3.o000000O, k3.o0000O0O).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, uploadScriptSettingRequestInfo));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

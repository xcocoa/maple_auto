package z2;

import android.content.Context;
import com.cyjh.http.bean.request.EditProjectNumberRequestInfo;
import com.cyjh.http.bean.response.ProjectNumberInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class rc extends hc {
    private static final String OooO0OO = "rc";
    private static rc OooO0Oo;
    private OooO00o OooO0O0;

    public interface OooO00o {
        void OooO00o(int i, String str);

        void OooO0O0(ProjectNumberInfo projectNumberInfo);
    }

    private rc() {
    }

    private void OooO(int i, String str) {
        OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooO00o(i, str);
        }
    }

    public static rc OooO0oO() {
        if (OooO0Oo == null) {
            synchronized (rc.class) {
                if (OooO0Oo == null) {
                    OooO0Oo = new rc();
                }
            }
        }
        return OooO0Oo;
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
                    ProjectNumberInfo projectNumberInfo = (ProjectNumberInfo) n4.OooO0o0(jSONObject.getString("Data"), ProjectNumberInfo.class);
                    OooO00o oooO00o = this.OooO0O0;
                    if (oooO00o != null) {
                        oooO00o.OooO0O0(projectNumberInfo);
                    }
                } else {
                    OooO(i, string);
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                message = e.getMessage();
            }
        } else {
            message = "后台返回数据为空！";
        }
        OooO(-1, message);
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        OooO(-1, str);
    }

    public void OooO0OO(Context context, String str, String str2, String str3, String str4, String str5, OooO00o oooO00o) {
        try {
            this.OooO0O0 = oooO00o;
            EditProjectNumberRequestInfo editProjectNumberRequestInfo = new EditProjectNumberRequestInfo(gc.OooO0OO().OooO00o(context));
            editProjectNumberRequestInfo.StudioProjectKey = str;
            editProjectNumberRequestInfo.ScriptId = str2;
            editProjectNumberRequestInfo.ScriptVersion = str3;
            editProjectNumberRequestInfo.ScriptUI = str4;
            editProjectNumberRequestInfo.ScriptSettings = str5;
            String string = j3.OooO(j3.OooOOOo, k3.o000000O, k3.o000000o).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, editProjectNumberRequestInfo));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO0o() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
            this.OooO00o.OooOOO(getClass().getSimpleName());
            this.OooO00o.OooOOO(getClass().getName());
        }
    }

    public void OooO0oo() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
        }
    }

    public rc OooOO0(OooO00o oooO00o) {
        this.OooO0O0 = oooO00o;
        return this;
    }

    public void OooOO0O(Context context, String str, OooO00o oooO00o) {
        try {
            this.OooO0O0 = oooO00o;
            EditProjectNumberRequestInfo editProjectNumberRequestInfo = new EditProjectNumberRequestInfo(gc.OooO0OO().OooO00o(context));
            editProjectNumberRequestInfo.ScriptId = str;
            String string = j3.OooO(j3.OooOOOo, k3.o000000O, k3.o00000).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, editProjectNumberRequestInfo));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

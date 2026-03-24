package z2;

import android.content.Context;
import android.util.Log;
import com.elf.studio.enity.IMRequestInfo;
import com.elf.studio.enity.IMResultInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class hh extends hc {
    public static final String OooO0OO = "hh";
    private static hh OooO0Oo;
    private OooO00o OooO0O0;

    public interface OooO00o {
        void OooO00o(int i, String str);

        void OooO0O0(IMResultInfo iMResultInfo);
    }

    private hh() {
    }

    public static hh OooO0o() {
        if (OooO0Oo == null) {
            synchronized (hh.class) {
                if (OooO0Oo == null) {
                    OooO0Oo = new hh();
                }
            }
        }
        return OooO0Oo;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject((String) obj);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            int i = jSONObject.getInt("Code");
            String string = jSONObject.getString(g6.OooO0Oo);
            if (i == 200) {
                IMResultInfo iMResultInfo = (IMResultInfo) n4.OooO0o0(jSONObject2.toString(), IMResultInfo.class);
                OooO00o oooO00o = this.OooO0O0;
                if (oooO00o != null) {
                    oooO00o.OooO0O0(iMResultInfo);
                }
            } else {
                OooO00o oooO00o2 = this.OooO0O0;
                if (oooO00o2 != null) {
                    oooO00o2.OooO00o(i, string);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        Log.e(OooO0OO, "onErrorResponse --> exception message=" + str);
        OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooO00o(-1, str);
        }
    }

    public void OooO0OO(Context context, IMRequestInfo iMRequestInfo, OooO00o oooO00o) {
        try {
            this.OooO0O0 = oooO00o;
            IMRequestInfo iMRequestInfo2 = new IMRequestInfo(gc.OooO0OO().OooO00o(context));
            if (iMRequestInfo != null) {
                iMRequestInfo2.ScriptId = iMRequestInfo.ScriptId;
            }
            String string = j3.OooO(j3.OooOOOo, k3.o000000O, k3.o0000oo).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, iMRequestInfo2));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO0oO() {
        this.OooO00o.OooOOO(getClass().getCanonicalName());
    }
}

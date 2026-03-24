package z2;

import android.content.Context;
import android.util.Log;
import com.cyjh.http.R;
import com.cyjh.http.bean.request.ScriptStartRunParams;
import com.cyjh.http.bean.request.ScriptStopRunParams;
import com.cyjh.http.bean.request.StatisticsRequestParamsInfo;
import com.cyjh.http.bean.response.ScriptStartRunResponse;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class mc extends hc {
    private static mc OooO0Oo;
    private OooO00o OooO0O0;
    private OooO0O0 OooO0OO;

    public interface OooO00o {
        void OooO00o(Object obj);
    }

    public interface OooO0O0 {
        void OooO00o(Object obj);

        void OooO0O0();
    }

    private mc() {
    }

    private void OooO0OO() {
        OooO0O0 oooO0O0 = this.OooO0OO;
        if (oooO0O0 != null) {
            oooO0O0.OooO0O0();
        }
    }

    public static mc OooO0oo() {
        if (OooO0Oo == null) {
            synchronized (mc.class) {
                if (OooO0Oo == null) {
                    OooO0Oo = new mc();
                }
            }
        }
        return OooO0Oo;
    }

    public void OooO(Context context, int i, int i2, long j) {
        try {
            StatisticsRequestParamsInfo statisticsRequestParamsInfo = new StatisticsRequestParamsInfo(gc.OooO0OO().OooO00o(context));
            statisticsRequestParamsInfo.Action = i2;
            statisticsRequestParamsInfo.BussinessId = i;
            statisticsRequestParamsInfo.RelationId = j;
            statisticsRequestParamsInfo.CloudPhoneType = dc.OooO00o().OooO0O0();
            String string = j3.OooO0oO(k3.OooO0o).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, statisticsRequestParamsInfo));
        } catch (Exception unused) {
        }
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        try {
            OooO00o oooO00o = this.OooO0O0;
            if (oooO00o != null) {
                oooO00o.OooO00o(obj);
            }
            if (this.OooO0OO != null) {
                ScriptStartRunResponse scriptStartRunResponse = (ScriptStartRunResponse) n4.OooO0o0((String) obj, ScriptStartRunResponse.class);
                long j = ScriptStartRunResponse.sClientTime;
                if (j != 0 && j != scriptStartRunResponse.Data.ClientTimestamp) {
                    scriptStartRunResponse.Code = 602;
                    scriptStartRunResponse.Message = gc.OooO0OO().OooO0O0().getResources().getString(R.string.check_sign_fail);
                    obj = n4.OooO0O0(scriptStartRunResponse);
                    ScriptStartRunResponse.sClientTime = 0L;
                }
                this.OooO0OO.OooO00o(obj);
            }
        } catch (Exception e) {
            e.printStackTrace();
            OooO0OO();
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        OooO0OO();
    }

    public void OooO0o() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
            this.OooO00o.OooOOO(getClass().getSimpleName());
            this.OooO00o.OooOOO(getClass().getName());
        }
    }

    public void OooO0oO() {
        this.OooO0O0 = null;
        this.OooO0OO = null;
    }

    public void OooOO0(Context context, String str, String str2, String str3) {
        try {
            ScriptStartRunParams scriptStartRunParams = new ScriptStartRunParams(gc.OooO0OO().OooO00o(context));
            scriptStartRunParams.RegCode = str;
            scriptStartRunParams.ScriptId = str2;
            ScriptStartRunResponse.sClientTime = scriptStartRunParams.ClientTimestamp;
            String string = j3.OooO0oo(k3.Oooo0OO, str3).build().toString();
            String str4 = "scriptStartRunParams:" + scriptStartRunParams.toString();
            String str5 = "url1:" + string;
            Map<String, String> mapOooO = gc.OooO0OO().OooO(string, scriptStartRunParams);
            String str6 = "url222:" + string;
            if (!string.contains(be.OooO0Oo(be.OooO00o(be.OooO0O0, -14))) && !string.contains(be.OooO0Oo(be.OooO00o(be.OooO0OO, -7)))) {
                mapOooO.put("V", be.OooO0O0(17));
            }
            this.OooO00o.OooOO0(context, getClass().getSimpleName(), string, mapOooO);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooOO0O(Context context, String str) {
        try {
            ScriptStopRunParams scriptStopRunParams = new ScriptStopRunParams(gc.OooO0OO().OooO00o(context));
            scriptStopRunParams.RunGuid = str;
            String string = j3.OooO0oo(k3.Oooo0OO, k3.Oooo0oO).build().toString();
            this.OooO00o.OooOO0(context, getClass().getName(), string, gc.OooO0OO().OooO(string, scriptStopRunParams));
        } catch (Exception e) {
            Log.e("zzz", "AppStatisticsPresenter--loadScriptStopRunStatistics:" + e.getMessage());
            OooO0OO();
        }
    }

    public void OooOO0o() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
        }
    }

    public mc OooOOO(OooO0O0 oooO0O0) {
        this.OooO0OO = oooO0O0;
        return this;
    }

    public mc OooOOO0(OooO00o oooO00o) {
        this.OooO0O0 = oooO00o;
        return this;
    }
}

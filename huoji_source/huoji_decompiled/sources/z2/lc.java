package z2;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.http.R;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.response.AppStartupResponse;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class lc extends hc {
    private long OooO0O0;
    private cd OooO0OO;

    public lc(cd cdVar) {
        this.OooO0OO = cdVar;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        cd cdVar;
        String string;
        try {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                cdVar = this.OooO0OO;
                string = gc.OooO0OO().OooO0O0().getResources().getString(R.string.json_data_null);
            } else {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
                int i = jSONObject.getInt("Code");
                string = jSONObject.getString(g6.OooO0Oo);
                if (i == 200) {
                    AppStartupResponse appStartupResponse = (AppStartupResponse) n4.OooO0o0(jSONObject2.toString(), AppStartupResponse.class);
                    if (appStartupResponse != null && this.OooO0O0 == appStartupResponse.ClientTimestamp) {
                        this.OooO0OO.OooOOo(appStartupResponse);
                        return;
                    } else {
                        cdVar = this.OooO0OO;
                        string = gc.OooO0OO().OooO0O0().getResources().getString(R.string.timestamp_diff_except);
                    }
                } else {
                    cdVar = this.OooO0OO;
                }
            }
            cdVar.OooOOo0(string);
        } catch (Exception e) {
            this.OooO0OO.OooOOo0(e.getMessage());
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        Log.e("zzz", "com.cyjh.share.AppStartupPresenter--onErrorResponse:" + str);
        this.OooO0OO.OooOOo0(str);
    }

    public void OooO0OO(Context context) {
        try {
            BaseRequestValueInfo baseRequestValueInfoOooO00o = gc.OooO0OO().OooO00o(context);
            this.OooO0O0 = gc.OooO0o;
            String string = j3.OooO0oO(k3.OooOo0O).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, baseRequestValueInfoOooO00o));
        } catch (Exception unused) {
        }
    }

    public void OooO0o() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
        }
    }
}

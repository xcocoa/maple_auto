package z2;

import android.content.Context;
import android.util.Log;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.response.AliCloudServerResponse;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class uc extends hc {
    private long OooO0O0;

    @Override // z2.nd
    public void OooO00o(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject((String) obj);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            if (jSONObject.getInt("Code") == 200 && gc.OooO0o == this.OooO0O0) {
                gc.OooO0OO().OooO0OO = (AliCloudServerResponse) n4.OooO0o0(jSONObject2.toString(), AliCloudServerResponse.class);
            }
        } catch (Exception e) {
            Log.e("zzz", "GetTokenAliCloudPresenter--uiDataSuccess exception-" + e.getMessage());
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        Log.e("zzz", "GetTokenAliCloudPresenter--onErrorResponse--" + str);
    }

    public void OooO0OO(Context context) {
        try {
            BaseRequestValueInfo baseRequestValueInfoOooO00o = gc.OooO0OO().OooO00o(context);
            this.OooO0O0 = gc.OooO0o;
            String string = j3.OooO0oo(k3.OoooO, k3.OoooOO0).build().toString();
            this.OooO00o.OooOO0(context, uc.class.getCanonicalName(), string, gc.OooO0OO().OooO(string, baseRequestValueInfoOooO00o));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO0o() {
        this.OooO00o.OooOOO(uc.class.getCanonicalName());
    }
}

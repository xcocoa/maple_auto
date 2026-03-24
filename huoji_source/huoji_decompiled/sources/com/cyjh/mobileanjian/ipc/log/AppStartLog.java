package com.cyjh.mobileanjian.ipc.log;

import android.content.Context;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
import z2.ke;
import z2.le;

/* JADX INFO: loaded from: classes.dex */
public class AppStartLog extends ke {
    private static final String OooO0Oo = "SetOperationLog";
    private static final int OooO0o0 = 3;

    public AppStartLog(Context context) {
        super(context);
    }

    @Override // z2.ke
    public final void OooO00o() {
        this.OooO0O0 = ke.OooO0OO + File.separator + OooO0Oo;
    }

    @Override // z2.ke
    public final String OooO0O0() {
        le leVarOooO00o = le.OooO00o();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("PhoneModel", leVarOooO00o.OooO00o);
            jSONObject2.put("MACMD5", leVarOooO00o.OooO0OO);
            jSONObject2.put("AndroidVersion", leVarOooO00o.OooO0O0);
            jSONObject2.put("ROM", leVarOooO00o.OooO0Oo);
            jSONObject2.put("PackageName", leVarOooO00o.OooO0o);
            String str = "1";
            jSONObject2.put("IsNew", leVarOooO00o.OooOO0o ? "1" : "0");
            jSONObject2.put("AppID", leVarOooO00o.OooO0oo);
            jSONObject2.put("AppVersion", leVarOooO00o.OooOO0);
            jSONObject2.put("Version", leVarOooO00o.OooOO0O);
            if (!leVarOooO00o.OooO) {
                str = "0";
            }
            jSONObject2.put("IsFree", str);
            jSONObject2.put("UsedTime", "0");
            jSONObject.put("LogType", "3");
            jSONObject.put("Data", jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}

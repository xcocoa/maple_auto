package com.cyjh.mobileanjian.ipc.log;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.cyjh.mobileanjian.ipc.stuff.MqmCode;
import com.sun.mail.pop3.POP3Message;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
import z2.ke;
import z2.le;

/* JADX INFO: loaded from: classes.dex */
public class ScriptUnexpectedStopLog extends ke {
    private static final String OooO0o = "SetErrorLog";
    private int OooO0Oo;
    private String OooO0o0;

    public ScriptUnexpectedStopLog(Context context) {
        super(context);
    }

    private static String OooO0OO(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "No Network";
        }
        int type = activeNetworkInfo.getType();
        return type != 0 ? type != 1 ? POP3Message.UNKNOWN : "WIFI" : "MOBILE";
    }

    @Override // z2.ke
    public final void OooO00o() {
        this.OooO0O0 = ke.OooO0OO + File.separator + OooO0o;
    }

    @Override // z2.ke
    public final String OooO0O0() {
        String str;
        le leVarOooO00o = le.OooO00o();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("PhoneModel", leVarOooO00o.OooO00o);
            jSONObject2.put("MACMD5", leVarOooO00o.OooO0OO);
            jSONObject2.put("AndroidVersion", leVarOooO00o.OooO0O0);
            jSONObject2.put("ROM", leVarOooO00o.OooO0Oo);
            jSONObject2.put("PackageName", leVarOooO00o.OooO0o);
            jSONObject2.put("AppID", leVarOooO00o.OooO0oo);
            jSONObject2.put("AppVersion", leVarOooO00o.OooOO0);
            jSONObject2.put("Version", leVarOooO00o.OooOO0O);
            jSONObject2.put("IsFree", leVarOooO00o.OooO ? "1" : "0");
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.OooO00o.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                str = "No Network";
            } else {
                int type = activeNetworkInfo.getType();
                str = type != 0 ? type != 1 ? POP3Message.UNKNOWN : "WIFI" : "MOBILE";
            }
            jSONObject2.put("NetworkType", str);
            jSONObject2.put("MqmCode", String.valueOf(this.OooO0Oo));
            jSONObject2.put("MqmMessage", MqmCode.getMessageFromCode(this.OooO0Oo));
            jSONObject2.put("ExtraMessage", this.OooO0o0);
            jSONObject.put("Data", jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public ScriptUnexpectedStopLog setExtraLog(String str) {
        this.OooO0o0 = str;
        return this;
    }

    public ScriptUnexpectedStopLog setMqmCode(int i) {
        this.OooO0Oo = i;
        return this;
    }
}

package mobi.oneway.export.g;

import android.os.Build;
import org.json.JSONObject;
import z2.g6;

/* JADX INFO: loaded from: classes2.dex */
public class o {
    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("publishId", mobi.oneway.export.a.b.b());
            jSONObject.put("bundleId", f.b());
            jSONObject.put("bundleVersion", f.c());
            jSONObject.put("sdkVersion", mobi.oneway.export.a.f);
            jSONObject.put("platform", g6.OooO0O0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("apiLevel", Build.VERSION.SDK_INT);
            jSONObject.put("imei", f.a());
            jSONObject.put("androidId", f.e());
            jSONObject.put("deviceMake", Build.BRAND);
            jSONObject.put("deviceModel", Build.MODEL);
            jSONObject.put("osVersion", Build.VERSION.RELEASE);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}

package z2;

import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class o00OO {
    public static String OooO00o(List<o00OOO00> list) {
        try {
            JSONArray jSONArray = new JSONArray();
            for (o00OOO00 o00ooo00 : list) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("displayName", o00ooo00.OooO0OO());
                jSONObject.put("version", o00ooo00.OooO0Oo());
                jSONObject.put("bundleId", o00ooo00.OooO0O0());
                jSONObject.put("appType", o00ooo00.OooO00o());
                jSONArray.put(jSONObject);
            }
            return jSONArray.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return kx.OooOOO;
        }
    }
}

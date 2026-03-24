package com.iflytek.voiceads.d;

import android.content.Context;
import com.anythink.core.common.c.k;
import com.anythink.expressad.foundation.d.d;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.utils.c;
import com.iflytek.voiceads.utils.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class b {
    public int a;
    public String b;
    public String c;
    public String d;
    public String e;
    public a f;
    public boolean g;
    public JSONObject h;
    public Context i;

    public b(Context context) {
        this.i = context;
    }

    public void a() {
        this.a = -1;
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = "";
        this.f = null;
        this.g = false;
        this.h = null;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.iflytek.voiceads.config.AdError */
    public void a(String str) throws AdError {
        try {
            JSONObject jSONObject = new JSONObject(str);
            g.a("IFLY_AD_SDK", "response:" + jSONObject.toString());
            a();
            this.a = jSONObject.optInt("rc");
            this.b = jSONObject.optString("id");
            this.c = jSONObject.optString(k.a.c);
            this.d = jSONObject.optString("info");
            this.e = jSONObject.optString("cur");
            if (this.a == 70200) {
                this.f = new a();
                this.f.a(jSONObject.optJSONArray(d.h).getJSONObject(0));
            }
            if (jSONObject.has("extra_data_toggle")) {
                this.g = jSONObject.optBoolean("extra_data_toggle");
                c.a(this.i, "dataToggle", this.g);
            }
            if (jSONObject.has("ext")) {
                this.h = jSONObject.optJSONObject("ext");
            }
            c.a(this.i, "sessionID", this.c);
        } catch (JSONException e) {
            g.b("IFLY_AD_SDK", "Invalid response data!");
            throw new AdError(70500);
        }
    }
}

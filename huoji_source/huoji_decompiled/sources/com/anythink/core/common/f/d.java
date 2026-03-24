package com.anythink.core.common.f;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public int a;
    public long b;

    public final void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.a = jSONObject.optInt("number");
            this.b = jSONObject.optLong("loadTime");
        } catch (Exception unused) {
        }
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("number", this.a);
            jSONObject.put("loadTime", this.b);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }
}

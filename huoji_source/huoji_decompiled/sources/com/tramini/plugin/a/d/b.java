package com.tramini.plugin.a.d;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static final int a = 1;
    public static final int b = 2;
    public String c;
    public int d;
    public String e;

    public final JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("att_pl", this.d);
            jSONObject.put("att_ver", this.c);
            jSONObject.put("att_inf", this.e);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }
}

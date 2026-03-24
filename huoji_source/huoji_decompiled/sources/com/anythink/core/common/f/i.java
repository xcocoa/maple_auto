package com.anythink.core.common.f;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class i extends x {
    public int a;
    public au b;
    public long c;

    @Override // com.anythink.core.common.f.x
    public final JSONObject a() {
        JSONObject jSONObjectF = this.b.F(this.a);
        if (jSONObjectF != null) {
            try {
                jSONObjectF.put("sdk_time", this.c);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return jSONObjectF;
    }
}

package com.anythink.core.d;

import org.json.JSONObject;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    private int a = 1;
    private int b = 0;
    private int c = 3;
    private int d = 1;
    private double e = 2.0d;
    private int f = 3;

    public static d a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            d dVar = new d();
            dVar.a = jSONObject.optInt("limit_sw", 1);
            dVar.b = jSONObject.optInt("latest_day", 0);
            dVar.c = jSONObject.optInt("max_n", 3);
            dVar.d = jSONObject.optInt("min_m", 1);
            dVar.e = jSONObject.optDouble("premium_rate", 2.0d);
            dVar.f = jSONObject.optInt("premium_level", 3);
            return dVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final int a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.c;
    }

    public final int d() {
        return this.d;
    }

    public final double e() {
        return this.e;
    }

    public final int f() {
        return this.f;
    }

    public final String toString() {
        return "DynamicWaterfallStrategy{limitSegmentSwitch=" + this.a + ", latestDay=" + this.b + ", maxCollectCount=" + this.c + ", minCollectCount=" + this.d + ", premiumRate=" + this.e + ", premiumLevel=" + this.f + MessageFormatter.DELIM_STOP;
    }
}

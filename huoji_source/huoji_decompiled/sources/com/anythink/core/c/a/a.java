package com.anythink.core.c.a;

import android.text.TextUtils;
import com.anythink.core.common.j;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final int a = 10;
    public static final int b = 4;
    private int c;
    private String d;
    private String e;
    private int f;
    private String g;
    private String h;
    private double i;
    private long j;
    private String k;
    private int l;

    private static void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj == null || TextUtils.isEmpty(str)) {
            return;
        }
        if ((obj instanceof String) && ((String) obj).isEmpty()) {
            return;
        }
        if ((obj instanceof Integer) && ((Integer) obj).intValue() == 0) {
            return;
        }
        if ((obj instanceof Long) && ((Long) obj).longValue() == 0) {
            return;
        }
        if ((obj instanceof Double) && ((Double) obj).doubleValue() == 0.0d) {
            return;
        }
        if (str.equals(j.F)) {
            jSONObject.put(str, String.valueOf(obj));
        } else {
            jSONObject.put(str, obj);
        }
    }

    public final int a() {
        return this.l;
    }

    public final void a(double d) {
        this.i = d;
    }

    public final void a(int i) {
        this.l = i;
    }

    public final void a(long j) {
        this.j = j;
    }

    public final void a(String str) {
        this.e = str;
    }

    public final String b() {
        return this.e;
    }

    public final void b(int i) {
        this.f = i;
    }

    public final void b(String str) {
        this.g = str;
    }

    public final int c() {
        return this.f;
    }

    public final void c(int i) {
        this.c = i;
    }

    public final void c(String str) {
        this.h = str;
    }

    public final String d() {
        return this.g;
    }

    public final void d(String str) {
        this.k = str;
    }

    public final String e() {
        return this.h;
    }

    public final void e(String str) {
        this.d = str;
    }

    public final double f() {
        return this.i;
    }

    public final long g() {
        return this.j;
    }

    public final String h() {
        return this.k;
    }

    public final JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject, "req_id", this.e);
            a(jSONObject, "unit_id", this.g);
            a(jSONObject, "dsp_id", this.h);
            a(jSONObject, j.F, Double.valueOf(this.i));
            a(jSONObject, "ts", Long.valueOf(this.j));
            a(jSONObject, "lc_id", this.k);
            a(jSONObject, "nw_firm_id", Integer.valueOf(this.f));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public final String j() {
        return this.d;
    }

    public final int k() {
        return this.c;
    }

    public final String toString() {
        return "PlacementStatisticsBean{requestId='" + this.e + "', networkFirmId=" + this.f + ", adSourceId='" + this.g + "', dspId='" + this.h + "', price=" + this.i + ", recordTime=" + this.j + ", psId='" + this.k + "', placementId='" + this.d + "', type= " + this.c + "', segmentId= " + this.l + MessageFormatter.DELIM_STOP;
    }
}

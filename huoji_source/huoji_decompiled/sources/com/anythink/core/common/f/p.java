package com.anythink.core.common.f;

import android.text.TextUtils;
import org.json.JSONObject;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class p {
    public static final String a = "reqId";
    public static final String b = "hasShow";
    public static final String c = "hasClick";
    public static final String d = "price";
    public static final String e = "networkFirmId";
    public static final String f = "isHB";
    public static final String g = "adsListType";
    public static final String h = "tpBidId";
    private static String i = "p";
    private boolean j;
    private String k;
    private boolean l;
    private boolean m;
    private av n;
    private int o;
    private double p;
    private boolean q;
    private int r;
    private String s;

    public p(String str) {
        this.k = str;
    }

    private static int a(int i2) {
        if (i2 != 2) {
            if (i2 != 3) {
                if (i2 == 4 || i2 == 5) {
                    return 4;
                }
                if (i2 != 7) {
                    if (i2 != 8 && i2 != 11) {
                        return 1;
                    }
                }
            }
            return 2;
        }
        return 3;
    }

    public static p a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            p pVar = new p(jSONObject.getString("reqId"));
            pVar.j = true;
            pVar.l = jSONObject.optBoolean(b);
            pVar.m = jSONObject.optBoolean(c);
            pVar.p = jSONObject.optDouble("price", -1.0d);
            pVar.o = jSONObject.optInt("networkFirmId");
            pVar.q = jSONObject.optBoolean(f);
            pVar.r = jSONObject.optInt(g);
            pVar.s = jSONObject.optString(h);
            return pVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private boolean k() {
        return this.j;
    }

    public final synchronized av a() {
        return this.n;
    }

    public final synchronized void a(av avVar) {
        new StringBuilder("refresh: ").append(avVar);
        this.n = avVar;
    }

    public final String b() {
        return this.k;
    }

    public final void c() {
        this.l = true;
    }

    public final void d() {
        this.m = true;
    }

    public final boolean e() {
        return this.l;
    }

    public final String f() {
        double dA;
        int iD;
        int iA;
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            int i2 = 1;
            int i3 = this.l ? 1 : 0;
            if (!this.m) {
                i2 = 0;
            }
            if (this.j) {
                dA = this.p;
                iD = this.o;
                iA = a(this.r);
                str = this.s;
            } else {
                dA = com.anythink.core.common.o.h.a(this.n);
                iD = this.n.d();
                q qVarM = this.n.M();
                int iA2 = a(this.n.a());
                if (qVarM == null || TextUtils.isEmpty(qVarM.g)) {
                    iA = iA2;
                    str = "";
                } else {
                    str = qVarM.g;
                    iA = iA2;
                }
            }
            jSONObject.put("price", dA);
            jSONObject.put("networkFirmId", iD);
            jSONObject.put(az.l, iA);
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(az.m, str);
            }
            jSONObject.put("imp", i3);
            jSONObject.put(com.anythink.expressad.foundation.d.c.ca, i2);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public final synchronized JSONObject g() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("reqId", this.k);
            jSONObject.put(b, this.l);
            jSONObject.put(c, this.m);
            av avVar = this.n;
            if (avVar != null) {
                jSONObject.put("price", com.anythink.core.common.o.h.a(avVar));
                jSONObject.put("networkFirmId", this.n.d());
                jSONObject.put(f, this.n.k());
                jSONObject.put(g, this.n.a());
                q qVarM = this.n.M();
                if (qVarM != null && !TextUtils.isEmpty(qVarM.g)) {
                    jSONObject.put(h, qVarM.g);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    public final double h() {
        if (this.j) {
            return this.p;
        }
        av avVar = this.n;
        if (avVar != null) {
            return com.anythink.core.common.o.h.a(avVar);
        }
        return -1.0d;
    }

    public final int i() {
        if (this.j) {
            return this.o;
        }
        av avVar = this.n;
        if (avVar != null) {
            return avVar.d();
        }
        return 0;
    }

    public final boolean j() {
        if (this.j) {
            return this.q;
        }
        av avVar = this.n;
        if (avVar != null) {
            return avVar.k();
        }
        return false;
    }

    public String toString() {
        String str;
        if (this.j) {
            str = ", priceInDisk=" + this.p + ", networkFirmIdInDisk=" + this.o + ", winnerIsHBInDisk=" + this.q + ", adsListTypeInDisk=" + this.r + ", tpBidIdInDisk=" + this.s;
        } else {
            str = null;
        }
        StringBuilder sb = new StringBuilder("BiddingRecorder{fromLocalDisk=");
        sb.append(this.j);
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append(", requestId=");
        sb.append(this.k);
        sb.append(", hasShow=");
        sb.append(this.l);
        sb.append(", hasClick=");
        sb.append(this.m);
        sb.append(", loadedMaxPriceUgInMemory=");
        sb.append(this.n);
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }
}

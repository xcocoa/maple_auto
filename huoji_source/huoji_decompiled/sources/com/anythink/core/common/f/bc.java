package com.anythink.core.common.f;

import com.anythink.core.api.ATAdConst;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class bc {
    public int a;
    private h b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private double h;
    private double i;
    private double j;
    private double k;
    private int l;
    private double m;
    private String n = null;

    private static String a(Map<String, Object> map, String str) {
        if (map == null) {
            return "";
        }
        Object obj = map.get(str);
        return (!(obj instanceof String) && obj == null) ? "" : obj.toString();
    }

    public final double a() {
        return this.m;
    }

    public final void a(double d) {
        this.h = d;
    }

    public final void a(double d, String str) {
        this.m = d;
        this.n = str;
    }

    public final void a(av avVar) {
        this.g = "0";
        if (avVar == null) {
            return;
        }
        int iM = avVar.m();
        this.g = iM != 2 ? (iM == 5 || iM == 6) ? "3" : "1" : "2";
        this.l = avVar.az();
    }

    public final void a(h hVar) {
        this.b = hVar;
    }

    public final void a(String str) {
        this.e = str;
    }

    public final void a(Map<String, Object> map) {
        this.c = a(map, "offer_id");
        this.d = a(map, "dsp_id");
        if (map != null) {
            Object obj = map.get(ATAdConst.NETWORK_CUSTOM_KEY.WS_IMP_SWITCH);
            if (obj instanceof Integer) {
                Integer num = (Integer) obj;
                if (num.intValue() != 0) {
                    this.a = num.intValue();
                }
            }
        }
    }

    public final String b() {
        return this.n;
    }

    public final void b(double d) {
        this.i = d;
    }

    public final void b(String str) {
        this.f = str;
    }

    public final int c() {
        return this.a;
    }

    public final void c(double d) {
        this.j = d;
    }

    public final String d() {
        return this.c;
    }

    public final void d(double d) {
        this.k = d;
    }

    public final String e() {
        return this.d;
    }

    public final String f() {
        return this.e;
    }

    public final String g() {
        return this.f;
    }

    public final String h() {
        h hVar = this.b;
        return hVar != null ? hVar.m() : "";
    }

    public final String i() {
        return this.g;
    }

    public final String j() {
        h hVar = this.b;
        return hVar != null ? hVar.ai() : "";
    }

    public final String k() {
        h hVar = this.b;
        return hVar != null ? String.valueOf(hVar.Q()) : "";
    }

    public final String l() {
        h hVar = this.b;
        return hVar != null ? String.valueOf(hVar.af()) : "";
    }

    public final String m() {
        h hVar = this.b;
        return hVar != null ? hVar.ah() : "";
    }

    public final int n() {
        h hVar = this.b;
        if (hVar != null) {
            return hVar.P();
        }
        return 0;
    }

    public final String o() {
        h hVar = this.b;
        return hVar != null ? hVar.F() : "";
    }

    public final String p() {
        h hVar = this.b;
        return hVar != null ? hVar.ag() : "";
    }

    public final String q() {
        h hVar = this.b;
        if (hVar != null) {
            return hVar.aj();
        }
        return null;
    }

    public final double r() {
        return this.h;
    }

    public final double s() {
        return this.i;
    }

    public final double t() {
        return this.j;
    }

    public final double u() {
        return this.k;
    }

    public final int v() {
        return this.l;
    }

    public final boolean w() {
        return this.l == 1;
    }
}

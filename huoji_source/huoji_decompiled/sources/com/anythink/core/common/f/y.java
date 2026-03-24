package com.anythink.core.common.f;

/* JADX INFO: loaded from: classes.dex */
public final class y {
    public double a;
    private int b;
    private h c;
    private boolean d;
    private double e;
    private String f;
    private int g;
    private double h;
    private String i;
    private String j;

    public y(int i, av avVar, h hVar) {
        this.b = i;
        this.d = avVar.Z();
        this.e = com.anythink.core.b.d.a.b(avVar);
        if (hVar != null) {
            h hVarV = hVar.V();
            this.c = hVarV;
            com.anythink.core.common.o.v.a(hVarV, avVar, 0, false);
        }
        this.f = "0";
        if (avVar != null) {
            int iM = avVar.m();
            this.f = iM != 2 ? (iM == 5 || iM == 6) ? "3" : "1" : "2";
            this.g = avVar.aA();
        }
    }

    public y(int i, av avVar, h hVar, double d) {
        this(i, avVar, hVar);
        this.a = d;
    }

    private void a(av avVar) {
        this.f = "0";
        if (avVar == null) {
            return;
        }
        int iM = avVar.m();
        this.f = iM != 2 ? (iM == 5 || iM == 6) ? "3" : "1" : "2";
        this.g = avVar.aA();
    }

    private int u() {
        h hVar = this.c;
        if (hVar != null) {
            return hVar.i();
        }
        return 0;
    }

    public final double a() {
        return this.h;
    }

    public final void a(double d, String str, String str2) {
        this.h = d;
        this.i = str;
        this.j = str2;
    }

    public final String b() {
        return this.i;
    }

    public final String c() {
        return this.j;
    }

    public final boolean d() {
        return this.d;
    }

    public final double e() {
        return this.a;
    }

    public final int f() {
        return this.b;
    }

    public final String g() {
        h hVar = this.c;
        return hVar != null ? hVar.ai() : "";
    }

    public final String h() {
        h hVar = this.c;
        return hVar != null ? String.valueOf(hVar.Q()) : "";
    }

    public final String i() {
        h hVar = this.c;
        return hVar != null ? String.valueOf(hVar.af()) : "";
    }

    public final String j() {
        h hVar = this.c;
        return hVar != null ? hVar.ah() : "";
    }

    public final int k() {
        h hVar = this.c;
        if (hVar != null) {
            return hVar.P();
        }
        return 0;
    }

    public final String l() {
        h hVar = this.c;
        return hVar != null ? hVar.F() : "";
    }

    public final String m() {
        h hVar = this.c;
        return hVar != null ? hVar.ag() : "";
    }

    public final String n() {
        h hVar = this.c;
        if (hVar != null) {
            return hVar.aj();
        }
        return null;
    }

    public final String o() {
        h hVar = this.c;
        return hVar != null ? hVar.aa() : "";
    }

    public final String p() {
        h hVar = this.c;
        return hVar != null ? hVar.ab() : "";
    }

    public final double q() {
        return this.e;
    }

    public final String r() {
        return this.f;
    }

    public final int s() {
        return this.g;
    }

    public final boolean t() {
        return this.g == 1;
    }
}

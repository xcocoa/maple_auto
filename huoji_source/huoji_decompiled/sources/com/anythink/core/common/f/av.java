package com.anythink.core.common.f;

import com.anythink.core.api.ATAdConst;
import org.json.JSONArray;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class av implements Comparable<av> {
    private String A;
    private String B;
    private long C;
    private String D;
    private int E;
    private int F;
    private double G;
    private int H;
    private String I;
    private String J;
    private int K;
    private long L;
    private long M;
    private long N;
    private long O;
    private int P;
    private String Q;
    private long R;
    private long S;
    private long T;
    private long U;
    private int V;
    private int W;
    private int X;
    private int Y;
    private String Z;
    public int a;
    private JSONArray aA;
    private int aB;
    private long aa;
    private long ab;
    private double ac;
    private int ad;
    private int ae;
    private int af;
    private int ag;
    private int ah;
    private int ai;
    private q aj;
    private int ak;
    private int al;
    private String am;
    private int an;
    private int ao;
    private long ap;
    private int aq;
    private double at;
    private double au;
    private double av;
    private double aw;
    private int[] ax;
    public int c;
    public int d;
    public String e;
    public int f;
    public int g;
    public double h;
    public int i;
    public double j;
    public String k;
    public boolean l;
    public int m;
    public int n;
    public int o;
    public int p;
    public String t;
    public long u;
    private int v;
    private String w;
    private int x;
    private int y;
    private String z;
    public int b = 0;
    private int ar = -1;
    private ATAdConst.CURRENCY as = ATAdConst.CURRENCY.USD;
    public int q = 2;
    public boolean r = false;
    public double s = -1.0d;
    private int ay = 1;
    private int az = 1;
    private int aC = 1;

    public av(int i) {
        this.ao = i;
    }

    private void J(int i) {
        this.X = i;
    }

    private void K(int i) {
        this.ak = i;
    }

    private int a(av avVar) {
        if (com.anythink.core.common.o.h.a(this) > com.anythink.core.common.o.h.a(avVar)) {
            return -1;
        }
        return com.anythink.core.common.o.h.a(this) == com.anythink.core.common.o.h.a(avVar) ? 0 : 1;
    }

    private void a(q qVar) {
        this.aj = qVar;
    }

    private long aF() {
        return this.R;
    }

    private int aG() {
        return this.X;
    }

    private int aH() {
        return this.ad;
    }

    private int aI() {
        return this.aq;
    }

    private boolean aJ() {
        return this.az == 1;
    }

    private void m(String str) {
        this.am = str;
    }

    public final String A() {
        return this.J;
    }

    public final void A(int i) {
        this.m = i;
    }

    public final long B() {
        return this.S;
    }

    public final void B(int i) {
        this.n = i;
    }

    public final long C() {
        return this.T;
    }

    public final void C(int i) {
        this.o = i;
    }

    public final int D() {
        return this.V;
    }

    public final void D(int i) {
        this.p = i;
    }

    public final int E() {
        return this.W;
    }

    public final void E(int i) {
        this.q = i;
    }

    public final int F() {
        return this.Y;
    }

    public final void F(int i) {
        this.ay = i;
    }

    public final String G() {
        return this.Z;
    }

    public final void G(int i) {
        this.az = i;
    }

    public final long H() {
        return this.aa;
    }

    public final void H(int i) {
        this.aB = i;
    }

    public final long I() {
        return this.ab;
    }

    public final void I(int i) {
        this.aC = i;
    }

    public final double J() {
        return this.ac;
    }

    public final int K() {
        return this.ae;
    }

    public final boolean L() {
        return this.af == 2;
    }

    public final q M() {
        return this.aj;
    }

    public final int N() {
        return this.ak;
    }

    public final int O() {
        return this.al;
    }

    public final void P() {
        this.al = 1;
    }

    public final String Q() {
        return this.am;
    }

    public final long R() {
        return this.ap;
    }

    public final int S() {
        int i = this.b;
        if (i <= 0) {
            return 1;
        }
        return i;
    }

    public final int T() {
        return this.c;
    }

    public final int U() {
        return this.d;
    }

    public final String V() {
        return this.e;
    }

    public final int W() {
        return this.a;
    }

    public final int X() {
        return this.ar;
    }

    public final int Y() {
        int i;
        q qVar = this.aj;
        return (qVar == null || (i = qVar.n) == 0) ? this.f : i;
    }

    public final boolean Z() {
        int i = this.v;
        return i == 66 || i == 67;
    }

    public final int a() {
        return this.ao;
    }

    public final void a(double d) {
        this.G = d;
    }

    public final void a(int i) {
        this.v = i;
    }

    public final void a(long j) {
        this.M = j;
    }

    public final void a(ATAdConst.CURRENCY currency) {
        this.as = currency;
    }

    public final synchronized void a(av avVar, int i, int i2, int i3) {
        if (avVar.Q.equals(this.Q)) {
            this.G = avVar.G;
            this.j = avVar.j;
            this.K = i2;
            this.I = avVar.I;
            this.am = avVar.am;
            this.ah = 0;
            if (i == 0) {
                i = avVar.ak;
            }
            this.ak = i;
            this.J = avVar.J;
            this.aj = avVar.aj;
            this.al = i3;
        }
    }

    public final void a(q qVar, int i, int i2, int i3) {
        this.K = i2;
        this.G = qVar.getPrice();
        this.j = qVar.getSortPrice();
        this.I = qVar.token;
        this.am = qVar.m;
        this.ah = 0;
        this.ak = i;
        this.aj = qVar;
        this.al = i3;
        if (i3 == 1) {
            this.J = "";
        }
    }

    public final void a(String str) {
        this.w = str;
    }

    public final void a(JSONArray jSONArray) {
        this.aA = jSONArray;
    }

    public final void a(int[] iArr) {
        this.ax = iArr;
    }

    public final int aA() {
        return this.az;
    }

    public final boolean aB() {
        int i = this.v;
        return i == 28 || i == 8 || i == 29 || i == 15 || i == 3;
    }

    public final JSONArray aC() {
        return this.aA;
    }

    public final int aD() {
        return this.aB;
    }

    public final int aE() {
        return this.aC;
    }

    public final boolean aa() {
        return this.v == 1 && this.ai == 1;
    }

    public final int ab() {
        return this.an;
    }

    public final ATAdConst.CURRENCY ac() {
        return this.as;
    }

    public final int ad() {
        return this.g;
    }

    public final double ae() {
        return this.h;
    }

    public final int af() {
        return this.i;
    }

    public final double ag() {
        return this.j;
    }

    public final String ah() {
        return this.k;
    }

    public final boolean ai() {
        return this.l;
    }

    public final void aj() {
        this.l = true;
    }

    public final int ak() {
        return this.m;
    }

    public final int al() {
        return this.n;
    }

    public final int am() {
        return this.o;
    }

    public final int an() {
        int i = this.p;
        if (i <= 0) {
            return 1;
        }
        return i;
    }

    public final int ao() {
        return this.q;
    }

    public final boolean ap() {
        return this.r;
    }

    public final void aq() {
        this.r = true;
    }

    public final double ar() {
        return this.s;
    }

    public final String as() {
        return this.t;
    }

    public final long at() {
        return this.u;
    }

    public final double au() {
        return this.at;
    }

    public final double av() {
        return this.au;
    }

    public final double aw() {
        return this.av;
    }

    public final double ax() {
        return this.aw;
    }

    public final int[] ay() {
        return this.ax;
    }

    public final int az() {
        return this.ay;
    }

    public final int b() {
        return this.ah;
    }

    public final void b(double d) {
        this.ac = d;
    }

    public final void b(int i) {
        this.x = i;
    }

    public final void b(long j) {
        this.U = j;
    }

    public final void b(String str) {
        this.z = str;
    }

    public final void c() {
        this.ah = -1;
    }

    public final void c(double d) {
        this.h = d;
    }

    public final void c(int i) {
        this.y = i;
    }

    public final void c(long j) {
        this.N = j;
    }

    public final void c(String str) {
        this.A = str;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(av avVar) {
        av avVar2 = avVar;
        if (com.anythink.core.common.o.h.a(this) > com.anythink.core.common.o.h.a(avVar2)) {
            return -1;
        }
        return com.anythink.core.common.o.h.a(this) == com.anythink.core.common.o.h.a(avVar2) ? 0 : 1;
    }

    public final int d() {
        return this.v;
    }

    public final void d(double d) {
        this.j = d;
    }

    public final void d(int i) {
        this.H = i;
    }

    public final void d(long j) {
        this.O = j;
    }

    public final void d(String str) {
        this.B = str;
    }

    public final String e() {
        return this.w;
    }

    public final void e(double d) {
        this.s = d;
    }

    public final void e(int i) {
        this.ai = i;
    }

    public final void e(long j) {
        this.C = j;
    }

    public final void e(String str) {
        this.Q = str;
    }

    public final int f() {
        return this.x;
    }

    public final void f(double d) {
        this.at = d;
    }

    public final void f(int i) {
        this.ag = i;
    }

    public final void f(long j) {
        this.R = j;
    }

    public final void f(String str) {
        this.D = str;
    }

    public final int g() {
        return this.y;
    }

    public final void g(double d) {
        this.au = d;
    }

    public final void g(int i) {
        this.K = i;
    }

    public final void g(long j) {
        this.S = j;
    }

    public final void g(String str) {
        this.I = str;
    }

    public final String h() {
        return this.z;
    }

    public final void h(double d) {
        this.av = d;
    }

    public final void h(int i) {
        this.P = i;
    }

    public final void h(long j) {
        this.T = j;
    }

    public final void h(String str) {
        this.J = str;
    }

    public final String i() {
        return this.A;
    }

    public final void i(double d) {
        this.aw = d;
    }

    public final void i(int i) {
        this.E = i;
    }

    public final void i(long j) {
        this.aa = j;
    }

    public final void i(String str) {
        this.Z = str;
    }

    public final int j() {
        return this.H;
    }

    public final void j(int i) {
        this.F = i;
    }

    public final void j(long j) {
        this.ab = j;
    }

    public final void j(String str) {
        this.e = str;
    }

    public final void k(int i) {
        this.V = i;
    }

    public final void k(long j) {
        this.ap = j;
    }

    public final void k(String str) {
        this.k = str;
    }

    public final boolean k() {
        return this.H == 1;
    }

    public final long l() {
        return this.M;
    }

    public final void l(int i) {
        this.W = i;
    }

    public final void l(long j) {
        this.u = j;
    }

    public final void l(String str) {
        this.t = str;
    }

    public final int m() {
        return this.ai;
    }

    public final void m(int i) {
        this.Y = i;
    }

    public final int n() {
        return this.ag;
    }

    public final void n(int i) {
        this.ad = i;
    }

    public final long o() {
        return this.U;
    }

    public final void o(int i) {
        this.ae = i;
    }

    public final int p() {
        return this.K;
    }

    public final void p(int i) {
        this.af = i;
    }

    public final long q() {
        return this.N;
    }

    public final void q(int i) {
        this.aq = i;
    }

    public final long r() {
        return this.O;
    }

    public final void r(int i) {
        this.b = i;
    }

    public final int s() {
        return this.P;
    }

    public final void s(int i) {
        this.c = i;
    }

    public final long t() {
        return this.C;
    }

    public final void t(int i) {
        this.d = i;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("UnitGroupInfo{networkFirmId=");
        sb.append(this.v);
        sb.append(", networkName='");
        sb.append(this.w);
        sb.append('\'');
        sb.append(", adSourceId='");
        sb.append(this.Q);
        sb.append('\'');
        sb.append(", bidType=");
        int i = this.H;
        sb.append(i == 1 ? com.anythink.core.common.o.h.a(this.ao) : Integer.valueOf(i));
        if (this.aj != null) {
            str = ", bidId=" + this.aj.token;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(", sortPrice=");
        sb.append(com.anythink.core.common.o.h.a(this));
        sb.append(", maxOfferCacheSize=");
        sb.append(an());
        sb.append(", samePriceSortIndex=");
        sb.append(this.n);
        sb.append(", content=");
        sb.append(this.z);
        sb.append(", lossSendSwitch=");
        sb.append(this.az);
        sb.append(", winSendSwitch=");
        sb.append(this.ay);
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }

    public final String u() {
        return this.Q;
    }

    public final void u(int i) {
        this.a = i;
    }

    public final String v() {
        return this.D;
    }

    public final void v(int i) {
        this.ar = i;
    }

    public final int w() {
        return this.E;
    }

    public final void w(int i) {
        this.f = i;
    }

    public final int x() {
        return this.F;
    }

    public final void x(int i) {
        this.an = i;
    }

    public final double y() {
        return this.G;
    }

    public final void y(int i) {
        this.g = i;
    }

    public final String z() {
        return this.I;
    }

    public final void z(int i) {
        this.i = i;
    }
}

package com.anythink.expressad.mbbanner.b;

import com.anythink.expressad.foundation.d.d;
import com.anythink.expressad.foundation.h.y;
import com.anythink.expressad.mbbanner.a.c.b;
import com.anythink.expressad.mbbanner.a.d.c;
import com.anythink.expressad.out.TemplateBannerView;
import com.anythink.expressad.out.h;
import com.anythink.expressad.out.i;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static String b = "BannerController";
    public i a;
    private String c;
    private String d;
    private boolean e;
    private int f;
    private TemplateBannerView g;
    private int h;
    private int i;
    private int j;
    private h l;
    private d m;
    private c n;
    private com.anythink.expressad.d.c o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private int k = -1;
    private com.anythink.expressad.mbbanner.a.c.c u = new com.anythink.expressad.mbbanner.a.c.c() { // from class: com.anythink.expressad.mbbanner.b.a.1
        @Override // com.anythink.expressad.mbbanner.a.c.c
        public final void a() {
            if (a.this.l != null) {
                h unused = a.this.l;
            }
        }

        @Override // com.anythink.expressad.mbbanner.a.c.c
        public final void a(com.anythink.expressad.foundation.d.c cVar) {
            if (a.this.l != null) {
                a.this.l.a(cVar);
            }
        }

        @Override // com.anythink.expressad.mbbanner.a.c.c
        public final void a(com.anythink.expressad.foundation.d.c cVar, boolean z) {
            if (a.this.l == null || z) {
                return;
            }
            a.this.l.b();
        }

        @Override // com.anythink.expressad.mbbanner.a.c.c
        public final void a(String str) {
            a.this.a(str);
        }

        @Override // com.anythink.expressad.mbbanner.a.c.c
        public final void a(List<com.anythink.expressad.foundation.d.c> list) {
            if (a.this.l != null) {
                a.this.l.a();
            }
            String unused = a.b;
        }

        @Override // com.anythink.expressad.mbbanner.a.c.c
        public final void a(boolean z) {
            com.anythink.expressad.mbbanner.a.d.a aVarA;
            int i;
            String str;
            if (z) {
                aVarA = com.anythink.expressad.mbbanner.a.d.a.a();
                i = 2;
                String unused = a.this.d;
                str = a.this.c;
            } else {
                aVarA = com.anythink.expressad.mbbanner.a.d.a.a();
                i = 3;
                String unused2 = a.this.d;
                str = a.this.c;
                new com.anythink.expressad.mbbanner.a.b.d(a.this.i + "x" + a.this.h, a.this.j * 1000);
                b unused3 = a.this.v;
            }
            aVarA.a(i, str);
        }

        @Override // com.anythink.expressad.mbbanner.a.c.c
        public final void b() {
            if (a.this.l != null) {
                h unused = a.this.l;
                a.this.t = true;
                com.anythink.expressad.mbbanner.a.d.a aVarA = com.anythink.expressad.mbbanner.a.d.a.a();
                String unused2 = a.this.d;
                aVarA.a(2, a.this.c);
            }
        }

        @Override // com.anythink.expressad.mbbanner.a.c.c
        public final void c() {
            if (a.this.l != null) {
                h unused = a.this.l;
                a.this.t = false;
                com.anythink.expressad.mbbanner.a.d.a aVarA = com.anythink.expressad.mbbanner.a.d.a.a();
                String unused2 = a.this.d;
                String str = a.this.c;
                new com.anythink.expressad.mbbanner.a.b.d(a.this.i + "x" + a.this.h, a.this.j * 1000);
                b unused3 = a.this.v;
                aVarA.a(3, str);
            }
        }

        @Override // com.anythink.expressad.mbbanner.a.c.c
        public final void d() {
            if (a.this.l != null) {
                a.this.l.f();
            }
        }
    };
    private b v = new b() { // from class: com.anythink.expressad.mbbanner.b.a.2
        @Override // com.anythink.expressad.mbbanner.a.c.b
        public final void a() {
            d unused = a.this.m;
            if (a.this.g != null) {
                try {
                    a.this.s = true;
                    a.this.h();
                } catch (Throwable th) {
                    a.this.s = false;
                    if (a.this.l != null) {
                        a.this.l.a("startShowBanner fail:" + th.getMessage());
                    }
                    String unused2 = a.b;
                    new StringBuilder("onResourceSuccess but startShowBanner fail:").append(th.getMessage());
                }
            }
        }

        @Override // com.anythink.expressad.mbbanner.a.c.b
        public final void a(d dVar) {
            a.this.m = dVar;
        }

        @Override // com.anythink.expressad.mbbanner.a.c.b
        public final void a(String str) {
            if (a.this.l != null) {
                a.this.l.a(str);
            }
            String unused = a.b;
        }

        @Override // com.anythink.expressad.mbbanner.a.c.b
        public final void b() {
            if (a.this.l != null) {
                a.this.l.a(com.anythink.expressad.mbbanner.a.a.c);
            }
            String unused = a.b;
        }
    };

    public a(TemplateBannerView templateBannerView, i iVar, String str, String str2) {
        this.g = templateBannerView;
        if (iVar != null) {
            this.h = iVar.a();
            this.i = iVar.b();
        }
        this.a = iVar;
        this.c = str2;
        this.d = str;
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.d.c cVarC = com.anythink.expressad.d.b.c(com.anythink.expressad.foundation.b.a.c().f(), this.c);
        this.o = cVarC;
        if (cVarC == null) {
            this.o = com.anythink.expressad.d.c.c(this.c);
        }
        if (this.k == -1) {
            int iB = this.o.b();
            if (iB > 0) {
                if (iB < 10) {
                    iB = 10;
                } else if (iB > 180) {
                    iB = 180;
                }
            }
            this.j = iB;
        }
        if (this.f == 0) {
            boolean z = this.o.d() == 1;
            this.e = z;
            c cVar = this.n;
            if (cVar != null) {
                cVar.a(z);
            }
        }
    }

    private static int a(int i) {
        if (i <= 0) {
            return i;
        }
        if (i < 10) {
            return 10;
        }
        if (i > 180) {
            return 180;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        h hVar = this.l;
        if (hVar != null) {
            hVar.a(str);
        }
    }

    private void f() {
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.d.c cVarC = com.anythink.expressad.d.b.c(com.anythink.expressad.foundation.b.a.c().f(), this.c);
        this.o = cVarC;
        if (cVarC == null) {
            this.o = com.anythink.expressad.d.c.c(this.c);
        }
        if (this.k == -1) {
            int iB = this.o.b();
            if (iB > 0) {
                if (iB < 10) {
                    iB = 10;
                } else if (iB > 180) {
                    iB = 180;
                }
            }
            this.j = iB;
        }
        if (this.f == 0) {
            boolean z = this.o.d() == 1;
            this.e = z;
            c cVar = this.n;
            if (cVar != null) {
                cVar.a(z);
            }
        }
    }

    private void g() {
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.d.c cVarC = com.anythink.expressad.d.b.c(com.anythink.expressad.foundation.b.a.c().f(), this.c);
        this.o = cVarC;
        if (cVarC == null) {
            this.o = com.anythink.expressad.d.c.c(this.c);
        }
        if (this.k == -1) {
            int iB = this.o.b();
            if (iB > 0) {
                if (iB < 10) {
                    iB = 10;
                } else if (iB > 180) {
                    iB = 180;
                }
            }
            this.j = iB;
        }
        if (this.f == 0) {
            boolean z = this.o.d() == 1;
            this.e = z;
            c cVar = this.n;
            if (cVar != null) {
                cVar.a(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() throws Throwable {
        if (this.r || !this.s) {
            return;
        }
        if (this.m != null) {
            if (this.n == null) {
                this.n = new c(this.g, this.u, this.d, this.c, this.e, this.o);
            }
            this.n.a(this.a);
            this.n.b(this.p);
            this.n.c(this.q);
            this.n.a(this.e, this.f);
            this.n.a(this.m);
        } else {
            a(com.anythink.expressad.mbbanner.a.a.h);
        }
        this.s = false;
    }

    private static boolean i() {
        return true;
    }

    private static void j() {
    }

    private void k() {
        com.anythink.expressad.mbbanner.a.d.a aVarA;
        int i;
        String str;
        TemplateBannerView templateBannerView = this.g;
        if (templateBannerView != null) {
            if (!this.p || !this.q || this.t || y.a(templateBannerView)) {
                aVarA = com.anythink.expressad.mbbanner.a.d.a.a();
                i = 2;
                str = this.c;
            } else {
                aVarA = com.anythink.expressad.mbbanner.a.d.a.a();
                i = 3;
                str = this.c;
                new com.anythink.expressad.mbbanner.a.b.d(this.i + "x" + this.h, this.j * 1000);
            }
            aVarA.a(i, str);
            if (this.p) {
                return;
            }
            com.anythink.expressad.mbbanner.a.d.a.a().a(4, this.c);
            com.anythink.expressad.mbbanner.a.d.a.a().a(this.c);
        }
    }

    private void l() {
        k();
        c cVar = this.n;
        if (cVar != null) {
            cVar.b(this.p);
            this.n.c(this.q);
        }
    }

    public final String a() {
        d dVar = this.m;
        return (dVar == null || dVar.f() == null) ? "" : this.m.f();
    }

    public final void a(int i, int i2, int i3, int i4) {
        c cVar = this.n;
        if (cVar != null) {
            cVar.a(i, i2, i3, i4);
        }
    }

    public final void a(d dVar) {
        this.m = dVar;
        com.anythink.expressad.mbbanner.a.d.a.a().a(this.c, dVar, this.v);
    }

    public final void a(h hVar) {
        this.l = hVar;
    }

    public final void a(i iVar) {
        if (iVar != null) {
            this.h = iVar.a();
            this.i = iVar.b();
        }
    }

    public final void a(boolean z) {
        this.e = z;
        this.f = z ? 1 : 2;
    }

    public final void b() {
        this.r = true;
        if (this.l != null) {
            this.l = null;
        }
        if (this.v != null) {
            this.v = null;
        }
        if (this.u != null) {
            this.u = null;
        }
        if (this.g != null) {
            this.g = null;
        }
        com.anythink.expressad.mbbanner.a.d.a.a().a(4, this.c);
        com.anythink.expressad.mbbanner.a.d.a.a().a(this.c);
        com.anythink.expressad.mbbanner.a.d.a.a().b();
        c cVar = this.n;
        if (cVar != null) {
            cVar.a();
        }
    }

    public final void b(boolean z) {
        this.p = z;
        l();
        h();
    }

    public final void c() {
        com.anythink.expressad.mbbanner.a.d.a aVarA = com.anythink.expressad.mbbanner.a.d.a.a();
        String str = this.c;
        new com.anythink.expressad.mbbanner.a.b.d(this.i + "x" + this.h, this.j * 1000);
        aVarA.a(4, str);
    }

    public final void c(boolean z) {
        this.q = z;
        l();
    }

    public final void d() {
        com.anythink.expressad.mbbanner.a.d.a aVarA = com.anythink.expressad.mbbanner.a.d.a.a();
        String str = this.c;
        new com.anythink.expressad.mbbanner.a.b.d(this.i + "x" + this.h, this.j * 1000);
        aVarA.a(3, str);
    }
}

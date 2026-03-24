package com.anythink.expressad.exoplayer.b;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.anythink.expressad.exoplayer.b.g;
import com.anythink.expressad.exoplayer.b.h;
import com.anythink.expressad.exoplayer.k.ad;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.v;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class r extends com.anythink.expressad.exoplayer.a implements com.anythink.expressad.exoplayer.k.n {
    private static final int n = 0;
    private static final int o = 1;
    private static final int p = 2;
    private com.anythink.expressad.exoplayer.c.g<com.anythink.expressad.exoplayer.c.e, ? extends com.anythink.expressad.exoplayer.c.h, ? extends e> A;
    private com.anythink.expressad.exoplayer.c.e B;
    private com.anythink.expressad.exoplayer.c.h C;
    private com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> D;
    private com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> E;
    private int F;
    private boolean G;
    private boolean H;
    private long I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private final com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.i> q;
    private final boolean r;
    private final g.a s;
    private final h t;
    private final com.anythink.expressad.exoplayer.n u;
    private final com.anythink.expressad.exoplayer.c.e v;
    private com.anythink.expressad.exoplayer.c.d w;
    private com.anythink.expressad.exoplayer.m x;
    private int y;
    private int z;

    public final class a implements h.c {
        private a() {
        }

        public /* synthetic */ a(r rVar, byte b) {
            this();
        }

        @Override // com.anythink.expressad.exoplayer.b.h.c
        public final void a() {
            r.b(r.this);
        }

        @Override // com.anythink.expressad.exoplayer.b.h.c
        public final void a(int i) {
            r.this.s.a(i);
        }

        @Override // com.anythink.expressad.exoplayer.b.h.c
        public final void a(int i, long j, long j2) {
            r.this.s.a(i, j, j2);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    public r() {
        this((Handler) null, (g) null, new f[0]);
    }

    private r(Handler handler, g gVar, c cVar) {
        this(handler, gVar, cVar, null, new f[0]);
    }

    private r(Handler handler, g gVar, c cVar, com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.i> gVar2, f... fVarArr) {
        this(handler, gVar, gVar2, new l(cVar, fVarArr));
    }

    private r(Handler handler, g gVar, com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.i> gVar2, h hVar) {
        super(1);
        this.q = gVar2;
        this.r = false;
        this.s = new g.a(handler, gVar);
        this.t = hVar;
        hVar.a(new a(this, (byte) 0));
        this.u = new com.anythink.expressad.exoplayer.n();
        this.v = com.anythink.expressad.exoplayer.c.e.e();
        this.F = 0;
        this.H = true;
    }

    private r(Handler handler, g gVar, f... fVarArr) {
        this(handler, gVar, null, null, fVarArr);
    }

    private static void A() {
    }

    private com.anythink.expressad.exoplayer.m B() {
        com.anythink.expressad.exoplayer.m mVar = this.x;
        return com.anythink.expressad.exoplayer.m.a((String) null, com.anythink.expressad.exoplayer.k.o.w, (String) null, -1, mVar.u, mVar.v, 2, (List<byte[]>) null, (com.anythink.expressad.exoplayer.d.e) null, (String) null);
    }

    private boolean C() throws com.anythink.expressad.exoplayer.g {
        if (this.C == null) {
            com.anythink.expressad.exoplayer.c.h hVar = (com.anythink.expressad.exoplayer.c.h) this.A.c();
            this.C = hVar;
            if (hVar == null) {
                return false;
            }
            this.w.f += hVar.b;
        }
        if (this.C.c()) {
            if (this.F == 2) {
                H();
                G();
                this.H = true;
            } else {
                this.C.e();
                this.C = null;
                E();
            }
            return false;
        }
        if (this.H) {
            com.anythink.expressad.exoplayer.m mVar = this.x;
            com.anythink.expressad.exoplayer.m mVarA = com.anythink.expressad.exoplayer.m.a((String) null, com.anythink.expressad.exoplayer.k.o.w, (String) null, -1, mVar.u, mVar.v, 2, (List<byte[]>) null, (com.anythink.expressad.exoplayer.d.e) null, (String) null);
            this.t.a(mVarA.w, mVarA.u, mVarA.v, null, this.y, this.z);
            this.H = false;
        }
        h hVar2 = this.t;
        com.anythink.expressad.exoplayer.c.h hVar3 = this.C;
        if (!hVar2.a(hVar3.c, ((com.anythink.expressad.exoplayer.c.f) hVar3).a)) {
            return false;
        }
        this.w.e++;
        this.C.e();
        this.C = null;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean D() throws com.anythink.expressad.exoplayer.g {
        boolean z;
        com.anythink.expressad.exoplayer.c.g<com.anythink.expressad.exoplayer.c.e, ? extends com.anythink.expressad.exoplayer.c.h, ? extends e> gVar = this.A;
        if (gVar == null || this.F == 2 || this.L) {
            return false;
        }
        if (this.B == null) {
            com.anythink.expressad.exoplayer.c.e eVarB = gVar.b();
            this.B = eVarB;
            if (eVarB == null) {
                return false;
            }
        }
        if (this.F == 1) {
            this.B.a(4);
            this.A.a(this.B);
            this.B = null;
            this.F = 2;
            return false;
        }
        int iA = this.N ? -4 : a(this.u, this.B, false);
        if (iA == -3) {
            return false;
        }
        if (iA == -5) {
            b(this.u.a);
            return true;
        }
        if (this.B.c()) {
            this.L = true;
            this.A.a(this.B);
            this.B = null;
            return false;
        }
        boolean zG = this.B.g();
        com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar = this.D;
        if (fVar == null || (!zG && this.r)) {
            z = false;
        } else {
            int iE = fVar.e();
            if (iE == 1) {
                throw com.anythink.expressad.exoplayer.g.a(this.D.f(), s());
            }
            if (iE != 4) {
                z = true;
            }
        }
        this.N = z;
        if (z) {
            return false;
        }
        this.B.h();
        com.anythink.expressad.exoplayer.c.e eVar = this.B;
        if (this.J && !eVar.b()) {
            if (Math.abs(eVar.f - this.I) > 500000) {
                this.I = eVar.f;
            }
            this.J = false;
        }
        this.A.a(this.B);
        this.G = true;
        this.w.c++;
        this.B = null;
        return true;
    }

    private void E() throws com.anythink.expressad.exoplayer.g {
        this.M = true;
        try {
            this.t.c();
        } catch (h.d e) {
            throw com.anythink.expressad.exoplayer.g.a(e, s());
        }
    }

    private void F() throws com.anythink.expressad.exoplayer.g {
        this.N = false;
        if (this.F != 0) {
            H();
            G();
            return;
        }
        this.B = null;
        com.anythink.expressad.exoplayer.c.h hVar = this.C;
        if (hVar != null) {
            hVar.e();
            this.C = null;
        }
        this.A.d();
        this.G = false;
    }

    private void G() throws com.anythink.expressad.exoplayer.g {
        if (this.A != null) {
            return;
        }
        com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar = this.E;
        this.D = fVar;
        if (fVar != null && fVar.g() == null && this.D.f() == null) {
            return;
        }
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ad.a("createAudioDecoder");
            this.A = x();
            ad.a();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.s.a(this.A.a(), jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
            this.w.a++;
        } catch (e e) {
            throw com.anythink.expressad.exoplayer.g.a(e, s());
        }
    }

    private void H() {
        com.anythink.expressad.exoplayer.c.g<com.anythink.expressad.exoplayer.c.e, ? extends com.anythink.expressad.exoplayer.c.h, ? extends e> gVar = this.A;
        if (gVar == null) {
            return;
        }
        this.B = null;
        this.C = null;
        gVar.e();
        this.A = null;
        this.w.b++;
        this.F = 0;
        this.G = false;
    }

    private void I() {
        long jA = this.t.a(v());
        if (jA != Long.MIN_VALUE) {
            if (!this.K) {
                jA = Math.max(this.I, jA);
            }
            this.I = jA;
            this.K = false;
        }
    }

    private void a(com.anythink.expressad.exoplayer.c.e eVar) {
        if (!this.J || eVar.b()) {
            return;
        }
        if (Math.abs(eVar.f - this.I) > 500000) {
            this.I = eVar.f;
        }
        this.J = false;
    }

    private void b(com.anythink.expressad.exoplayer.m mVar) throws com.anythink.expressad.exoplayer.g {
        com.anythink.expressad.exoplayer.m mVar2 = this.x;
        this.x = mVar;
        if (!af.a(mVar.k, mVar2 == null ? null : mVar2.k)) {
            if (this.x.k != null) {
                com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.i> gVar = this.q;
                if (gVar == null) {
                    throw com.anythink.expressad.exoplayer.g.a(new IllegalStateException("Media requires a DrmSessionManager"), s());
                }
                com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVarA = gVar.a(Looper.myLooper(), this.x.k);
                this.E = fVarA;
                if (fVarA == this.D) {
                    this.q.a(fVarA);
                }
            } else {
                this.E = null;
            }
        }
        if (this.G) {
            this.F = 1;
        } else {
            H();
            G();
            this.H = true;
        }
        this.y = mVar.x;
        this.z = mVar.y;
        this.s.a(mVar);
    }

    private boolean b(int i) {
        return this.t.a(i);
    }

    public static /* synthetic */ boolean b(r rVar) {
        rVar.K = true;
        return true;
    }

    private boolean b(boolean z) throws com.anythink.expressad.exoplayer.g {
        com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar = this.D;
        if (fVar == null || (!z && this.r)) {
            return false;
        }
        int iE = fVar.e();
        if (iE != 1) {
            return iE != 4;
        }
        throw com.anythink.expressad.exoplayer.g.a(this.D.f(), s());
    }

    private static void y() {
    }

    private static void z() {
    }

    @Override // com.anythink.expressad.exoplayer.z
    public final int a(com.anythink.expressad.exoplayer.m mVar) {
        int iW = w();
        if (iW <= 2) {
            return iW;
        }
        return iW | (af.a >= 21 ? 32 : 0) | 8;
    }

    @Override // com.anythink.expressad.exoplayer.k.n
    public final v a(v vVar) {
        return this.t.a(vVar);
    }

    @Override // com.anythink.expressad.exoplayer.a, com.anythink.expressad.exoplayer.x.b
    public final void a(int i, Object obj) {
        if (i == 2) {
            this.t.a(((Float) obj).floatValue());
        } else if (i != 3) {
            super.a(i, obj);
        } else {
            this.t.a((com.anythink.expressad.exoplayer.b.b) obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0075 A[Catch: d -> 0x01b1, b -> 0x01b3, e | a | b | d -> 0x01b5, e -> 0x01b7, TryCatch #3 {e | a | b | d -> 0x01b5, blocks: (B:19:0x004c, B:20:0x0051, B:22:0x0058, B:24:0x0064, B:39:0x00d9, B:41:0x00dd, B:43:0x00e1, B:46:0x00e7, B:48:0x00eb, B:51:0x00f5, B:53:0x00fa, B:54:0x010c, B:62:0x0121, B:94:0x01ad, B:64:0x012b, B:66:0x0133, B:67:0x013f, B:70:0x014b, B:73:0x0150, B:80:0x016a, B:83:0x016f, B:85:0x017a, B:87:0x0180, B:89:0x0190, B:90:0x0194, B:91:0x0196, B:77:0x015a, B:78:0x0168, B:57:0x0112, B:25:0x006d, B:27:0x0075, B:29:0x0079, B:30:0x0082, B:31:0x008d, B:33:0x0091, B:34:0x00b8, B:36:0x00c6), top: B:108:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008d A[Catch: d -> 0x01b1, b -> 0x01b3, e | a | b | d -> 0x01b5, e -> 0x01b7, TryCatch #3 {e | a | b | d -> 0x01b5, blocks: (B:19:0x004c, B:20:0x0051, B:22:0x0058, B:24:0x0064, B:39:0x00d9, B:41:0x00dd, B:43:0x00e1, B:46:0x00e7, B:48:0x00eb, B:51:0x00f5, B:53:0x00fa, B:54:0x010c, B:62:0x0121, B:94:0x01ad, B:64:0x012b, B:66:0x0133, B:67:0x013f, B:70:0x014b, B:73:0x0150, B:80:0x016a, B:83:0x016f, B:85:0x017a, B:87:0x0180, B:89:0x0190, B:90:0x0194, B:91:0x0196, B:77:0x015a, B:78:0x0168, B:57:0x0112, B:25:0x006d, B:27:0x0075, B:29:0x0079, B:30:0x0082, B:31:0x008d, B:33:0x0091, B:34:0x00b8, B:36:0x00c6), top: B:108:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f5 A[Catch: d -> 0x01b1, b -> 0x01b3, e | a | b | d -> 0x01b5, e -> 0x01b7, TryCatch #3 {e | a | b | d -> 0x01b5, blocks: (B:19:0x004c, B:20:0x0051, B:22:0x0058, B:24:0x0064, B:39:0x00d9, B:41:0x00dd, B:43:0x00e1, B:46:0x00e7, B:48:0x00eb, B:51:0x00f5, B:53:0x00fa, B:54:0x010c, B:62:0x0121, B:94:0x01ad, B:64:0x012b, B:66:0x0133, B:67:0x013f, B:70:0x014b, B:73:0x0150, B:80:0x016a, B:83:0x016f, B:85:0x017a, B:87:0x0180, B:89:0x0190, B:90:0x0194, B:91:0x0196, B:77:0x015a, B:78:0x0168, B:57:0x0112, B:25:0x006d, B:27:0x0075, B:29:0x0079, B:30:0x0082, B:31:0x008d, B:33:0x0091, B:34:0x00b8, B:36:0x00c6), top: B:108:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x016f A[Catch: d -> 0x01b1, b -> 0x01b3, e | a | b | d -> 0x01b5, e -> 0x01b7, TryCatch #3 {e | a | b | d -> 0x01b5, blocks: (B:19:0x004c, B:20:0x0051, B:22:0x0058, B:24:0x0064, B:39:0x00d9, B:41:0x00dd, B:43:0x00e1, B:46:0x00e7, B:48:0x00eb, B:51:0x00f5, B:53:0x00fa, B:54:0x010c, B:62:0x0121, B:94:0x01ad, B:64:0x012b, B:66:0x0133, B:67:0x013f, B:70:0x014b, B:73:0x0150, B:80:0x016a, B:83:0x016f, B:85:0x017a, B:87:0x0180, B:89:0x0190, B:90:0x0194, B:91:0x0196, B:77:0x015a, B:78:0x0168, B:57:0x0112, B:25:0x006d, B:27:0x0075, B:29:0x0079, B:30:0x0082, B:31:0x008d, B:33:0x0091, B:34:0x00b8, B:36:0x00c6), top: B:108:0x004c }] */
    @Override // com.anythink.expressad.exoplayer.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(long j, long j2) throws com.anythink.expressad.exoplayer.g {
        boolean z;
        boolean z3;
        boolean z4;
        if (this.M) {
            try {
                this.t.c();
                return;
            } catch (h.d e) {
                throw com.anythink.expressad.exoplayer.g.a(e, s());
            }
        }
        if (this.x == null) {
            this.v.a();
            int iA = a(this.u, this.v, true);
            if (iA != -5) {
                if (iA == -4) {
                    com.anythink.expressad.exoplayer.k.a.b(this.v.c());
                    this.L = true;
                    E();
                    return;
                }
                return;
            }
            b(this.u.a);
        }
        G();
        if (this.A != null) {
            try {
                ad.a("drainAndFeed");
                do {
                    if (this.C == null) {
                        com.anythink.expressad.exoplayer.c.h hVar = (com.anythink.expressad.exoplayer.c.h) this.A.c();
                        this.C = hVar;
                        if (hVar != null) {
                            this.w.f += hVar.b;
                            if (this.C.c()) {
                                if (this.H) {
                                    com.anythink.expressad.exoplayer.m mVar = this.x;
                                    com.anythink.expressad.exoplayer.m mVarA = com.anythink.expressad.exoplayer.m.a((String) null, com.anythink.expressad.exoplayer.k.o.w, (String) null, -1, mVar.u, mVar.v, 2, (List<byte[]>) null, (com.anythink.expressad.exoplayer.d.e) null, (String) null);
                                    this.t.a(mVarA.w, mVarA.u, mVarA.v, null, this.y, this.z);
                                    this.H = false;
                                }
                                h hVar2 = this.t;
                                com.anythink.expressad.exoplayer.c.h hVar3 = this.C;
                                if (hVar2.a(hVar3.c, ((com.anythink.expressad.exoplayer.c.f) hVar3).a)) {
                                    this.w.e++;
                                    this.C.e();
                                    this.C = null;
                                    z = true;
                                }
                            } else if (this.F == 2) {
                                H();
                                G();
                                this.H = true;
                            } else {
                                this.C.e();
                                this.C = null;
                                E();
                            }
                        }
                        z = false;
                    } else {
                        if (this.C.c()) {
                        }
                        z = false;
                    }
                } while (z);
                do {
                    com.anythink.expressad.exoplayer.c.g<com.anythink.expressad.exoplayer.c.e, ? extends com.anythink.expressad.exoplayer.c.h, ? extends e> gVar = this.A;
                    if (gVar == null || this.F == 2 || this.L) {
                        z3 = false;
                    } else if (this.B == null) {
                        com.anythink.expressad.exoplayer.c.e eVarB = gVar.b();
                        this.B = eVarB;
                        if (eVarB != null) {
                            if (this.F == 1) {
                                this.B.a(4);
                                this.A.a(this.B);
                                this.B = null;
                                this.F = 2;
                            } else {
                                int iA2 = this.N ? -4 : a(this.u, this.B, false);
                                if (iA2 != -3) {
                                    if (iA2 == -5) {
                                        b(this.u.a);
                                    } else if (this.B.c()) {
                                        this.L = true;
                                        this.A.a(this.B);
                                        this.B = null;
                                    } else {
                                        boolean zG = this.B.g();
                                        com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar = this.D;
                                        if (fVar == null || (!zG && this.r)) {
                                            z4 = false;
                                            this.N = z4;
                                            if (z4) {
                                                this.B.h();
                                                com.anythink.expressad.exoplayer.c.e eVar = this.B;
                                                if (this.J && !eVar.b()) {
                                                    if (Math.abs(eVar.f - this.I) > 500000) {
                                                        this.I = eVar.f;
                                                    }
                                                    this.J = false;
                                                }
                                                this.A.a(this.B);
                                                this.G = true;
                                                this.w.c++;
                                                this.B = null;
                                            }
                                        } else {
                                            int iE = fVar.e();
                                            if (iE == 1) {
                                                throw com.anythink.expressad.exoplayer.g.a(this.D.f(), s());
                                            }
                                            if (iE != 4) {
                                                z4 = true;
                                            }
                                            this.N = z4;
                                            if (z4) {
                                            }
                                        }
                                    }
                                    z3 = true;
                                }
                            }
                        }
                        z3 = false;
                    }
                } while (z3);
                ad.a();
            } catch (e | h.a | h.b | h.d e2) {
                throw com.anythink.expressad.exoplayer.g.a(e2, s());
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.a
    public final void a(long j, boolean z) throws com.anythink.expressad.exoplayer.g {
        this.t.i();
        this.I = j;
        this.J = true;
        this.K = true;
        this.L = false;
        this.M = false;
        if (this.A != null) {
            this.N = false;
            if (this.F != 0) {
                H();
                G();
                return;
            }
            this.B = null;
            com.anythink.expressad.exoplayer.c.h hVar = this.C;
            if (hVar != null) {
                hVar.e();
                this.C = null;
            }
            this.A.d();
            this.G = false;
        }
    }

    @Override // com.anythink.expressad.exoplayer.a
    public final void a(boolean z) {
        com.anythink.expressad.exoplayer.c.d dVar = new com.anythink.expressad.exoplayer.c.d();
        this.w = dVar;
        this.s.a(dVar);
        int i = r().b;
        if (i != 0) {
            this.t.c(i);
        } else {
            this.t.g();
        }
    }

    @Override // com.anythink.expressad.exoplayer.a, com.anythink.expressad.exoplayer.y
    public final com.anythink.expressad.exoplayer.k.n c() {
        return this;
    }

    @Override // com.anythink.expressad.exoplayer.k.n
    public final long d() {
        if (a_() == 2) {
            I();
        }
        return this.I;
    }

    @Override // com.anythink.expressad.exoplayer.k.n
    public final v e() {
        return this.t.f();
    }

    @Override // com.anythink.expressad.exoplayer.a
    public final void n() {
        this.t.a();
    }

    @Override // com.anythink.expressad.exoplayer.a
    public final void o() {
        I();
        this.t.h();
    }

    @Override // com.anythink.expressad.exoplayer.a
    public final void p() {
        this.x = null;
        this.H = true;
        this.N = false;
        try {
            H();
            this.t.j();
            try {
                com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar = this.D;
                if (fVar != null) {
                    this.q.a(fVar);
                }
                try {
                    com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar2 = this.E;
                    if (fVar2 != null && fVar2 != this.D) {
                        this.q.a(fVar2);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar3 = this.E;
                    if (fVar3 != null && fVar3 != this.D) {
                        this.q.a(fVar3);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar4 = this.D;
                if (fVar4 != null) {
                    this.q.a(fVar4);
                }
                try {
                    com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar5 = this.E;
                    if (fVar5 != null && fVar5 != this.D) {
                        this.q.a(fVar5);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    com.anythink.expressad.exoplayer.d.f<com.anythink.expressad.exoplayer.d.i> fVar6 = this.E;
                    if (fVar6 != null && fVar6 != this.D) {
                        this.q.a(fVar6);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.y
    public final boolean u() {
        if (this.t.e()) {
            return true;
        }
        if (this.x == null || this.N) {
            return false;
        }
        return t() || this.C != null;
    }

    @Override // com.anythink.expressad.exoplayer.y
    public final boolean v() {
        return this.M && this.t.d();
    }

    public abstract int w();

    public abstract com.anythink.expressad.exoplayer.c.g<com.anythink.expressad.exoplayer.c.e, ? extends com.anythink.expressad.exoplayer.c.h, ? extends e> x();
}

package com.anythink.expressad.exoplayer.h;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.ae;
import com.anythink.expressad.exoplayer.h.s;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class e extends f<Void> {
    private final s a;
    private final long b;
    private final long c;
    private final boolean d;
    private final boolean e;
    private final boolean f;
    private final ArrayList<d> g;
    private final ae.b h;

    @Nullable
    private Object i;
    private a j;
    private b k;
    private long l;
    private long m;

    public static final class a extends p {
        private final long c;
        private final long d;
        private final long e;
        private final boolean f;

        public a(com.anythink.expressad.exoplayer.ae aeVar, long j, long j2) throws b {
            super(aeVar);
            boolean z = true;
            if (aeVar.c() != 1) {
                throw new b(0);
            }
            ae.b bVarA = aeVar.a(0, new ae.b(), false);
            long jMax = Math.max(0L, j);
            long jMax2 = j2 == Long.MIN_VALUE ? bVarA.i : Math.max(0L, j2);
            long j3 = bVarA.i;
            if (j3 != com.anythink.expressad.exoplayer.b.b) {
                jMax2 = jMax2 > j3 ? j3 : jMax2;
                if (jMax != 0 && !bVarA.d) {
                    throw new b(1);
                }
                if (jMax > jMax2) {
                    throw new b(2);
                }
            }
            this.c = jMax;
            this.d = jMax2;
            this.e = jMax2 == com.anythink.expressad.exoplayer.b.b ? -9223372036854775807L : jMax2 - jMax;
            if (!bVarA.e || (jMax2 != com.anythink.expressad.exoplayer.b.b && (j3 == com.anythink.expressad.exoplayer.b.b || jMax2 != j3))) {
                z = false;
            }
            this.f = z;
        }

        @Override // com.anythink.expressad.exoplayer.h.p, com.anythink.expressad.exoplayer.ae
        public final ae.a a(int i, ae.a aVar, boolean z) {
            this.b.a(0, aVar, z);
            long jB = aVar.b() - this.c;
            long j = this.e;
            return aVar.a(aVar.a, aVar.b, j == com.anythink.expressad.exoplayer.b.b ? -9223372036854775807L : j - jB, jB);
        }

        @Override // com.anythink.expressad.exoplayer.h.p, com.anythink.expressad.exoplayer.ae
        public final ae.b a(int i, ae.b bVar, boolean z, long j) {
            this.b.a(0, bVar, z, 0L);
            long j2 = bVar.j;
            long j3 = this.c;
            bVar.j = j2 + j3;
            bVar.i = this.e;
            bVar.e = this.f;
            long j4 = bVar.h;
            if (j4 != com.anythink.expressad.exoplayer.b.b) {
                long jMax = Math.max(j4, j3);
                bVar.h = jMax;
                long j5 = this.d;
                if (j5 != com.anythink.expressad.exoplayer.b.b) {
                    jMax = Math.min(jMax, j5);
                }
                bVar.h = jMax;
                bVar.h = jMax - this.c;
            }
            long jA = com.anythink.expressad.exoplayer.b.a(this.c);
            long j6 = bVar.b;
            if (j6 != com.anythink.expressad.exoplayer.b.b) {
                bVar.b = j6 + jA;
            }
            long j7 = bVar.c;
            if (j7 != com.anythink.expressad.exoplayer.b.b) {
                bVar.c = j7 + jA;
            }
            return bVar;
        }
    }

    public static final class b extends IOException {
        public static final int a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public final int d;

        @Retention(RetentionPolicy.SOURCE)
        public @interface a {
        }

        public b(int i) {
            StringBuilder sb = new StringBuilder("Illegal clipping: ");
            sb.append(i != 0 ? i != 1 ? i != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count");
            super(sb.toString());
            this.d = i;
        }

        private static String a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count";
        }
    }

    private e(s sVar, long j) {
        this(sVar, 0L, j, true, true);
    }

    private e(s sVar, long j, long j2) {
        this(sVar, j, j2, true, false);
    }

    @Deprecated
    private e(s sVar, long j, long j2, boolean z) {
        this(sVar, j, j2, z, false);
    }

    private e(s sVar, long j, long j2, boolean z, boolean z3) {
        com.anythink.expressad.exoplayer.k.a.a(j >= 0);
        this.a = (s) com.anythink.expressad.exoplayer.k.a.a(sVar);
        this.b = j;
        this.c = j2;
        this.d = z;
        this.e = false;
        this.f = z3;
        this.g = new ArrayList<>();
        this.h = new ae.b();
    }

    private void a(com.anythink.expressad.exoplayer.ae aeVar) {
        long j;
        long j2;
        long j3;
        aeVar.a(0, this.h, false);
        long j4 = this.h.j;
        if (this.j == null || this.g.isEmpty() || this.e) {
            long j5 = this.b;
            long j6 = this.c;
            if (this.f) {
                long j7 = this.h.h;
                j5 += j7;
                j = j7 + j6;
            } else {
                j = j6;
            }
            this.l = j4 + j5;
            this.m = j6 != Long.MIN_VALUE ? j4 + j : Long.MIN_VALUE;
            int size = this.g.size();
            for (int i = 0; i < size; i++) {
                this.g.get(i).a(this.l, this.m);
            }
            j2 = j5;
            j3 = j;
        } else {
            long j8 = this.l - j4;
            j3 = this.c != Long.MIN_VALUE ? this.m - j4 : Long.MIN_VALUE;
            j2 = j8;
        }
        try {
            a aVar = new a(aeVar, j2, j3);
            this.j = aVar;
            a(aVar, this.i);
        } catch (b e) {
            this.k = e;
        }
    }

    private long b(long j) {
        if (j == com.anythink.expressad.exoplayer.b.b) {
            return com.anythink.expressad.exoplayer.b.b;
        }
        long jA = com.anythink.expressad.exoplayer.b.a(this.b);
        long jMax = Math.max(0L, j - jA);
        long j2 = this.c;
        return j2 != Long.MIN_VALUE ? Math.min(com.anythink.expressad.exoplayer.b.a(j2) - jA, jMax) : jMax;
    }

    private void b(com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj) {
        if (this.k != null) {
            return;
        }
        this.i = obj;
        a(aeVar);
    }

    @Override // com.anythink.expressad.exoplayer.h.f
    public final /* synthetic */ long a(long j) {
        if (j == com.anythink.expressad.exoplayer.b.b) {
            return com.anythink.expressad.exoplayer.b.b;
        }
        long jA = com.anythink.expressad.exoplayer.b.a(this.b);
        long jMax = Math.max(0L, j - jA);
        long j2 = this.c;
        return j2 != Long.MIN_VALUE ? Math.min(com.anythink.expressad.exoplayer.b.a(j2) - jA, jMax) : jMax;
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final r a(s.a aVar, com.anythink.expressad.exoplayer.j.b bVar) {
        d dVar = new d(this.a.a(aVar, bVar), this.d, this.l, this.m);
        this.g.add(dVar);
        return dVar;
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.c
    public final void a() {
        super.a();
        this.k = null;
        this.j = null;
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(r rVar) {
        com.anythink.expressad.exoplayer.k.a.b(this.g.remove(rVar));
        this.a.a(((d) rVar).a);
        if (!this.g.isEmpty() || this.e) {
            return;
        }
        a(this.j.b);
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.c
    public final void a(com.anythink.expressad.exoplayer.h hVar, boolean z) {
        super.a(hVar, z);
        a((Object) null, this.a);
    }

    @Override // com.anythink.expressad.exoplayer.h.f
    public final /* bridge */ /* synthetic */ void a(Void r1, s sVar, com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj) {
        if (this.k == null) {
            this.i = obj;
            a(aeVar);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.s
    public final void b() throws b {
        b bVar = this.k;
        if (bVar != null) {
            throw bVar;
        }
        super.b();
    }
}

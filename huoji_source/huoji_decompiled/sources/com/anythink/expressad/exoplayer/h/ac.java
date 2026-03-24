package com.anythink.expressad.exoplayer.h;

import com.anythink.expressad.exoplayer.h.r;
import com.anythink.expressad.exoplayer.h.t;
import com.anythink.expressad.exoplayer.j.h;
import com.anythink.expressad.exoplayer.j.t;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ac implements r, t.a<b> {
    private static final int i = 1024;
    public final com.anythink.expressad.exoplayer.m b;
    public final boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public byte[] g;
    public int h;
    private final com.anythink.expressad.exoplayer.j.k j;
    private final h.a k;
    private final int l;
    private final t.a m;
    private final af n;
    private final long p;
    private int q;
    private final ArrayList<a> o = new ArrayList<>();
    public final com.anythink.expressad.exoplayer.j.t a = new com.anythink.expressad.exoplayer.j.t("Loader:SingleSampleMediaPeriod");

    public final class a implements y {
        private static final int b = 0;
        private static final int c = 1;
        private static final int d = 2;
        private int e;
        private boolean f;

        private a() {
        }

        public /* synthetic */ a(ac acVar, byte b2) {
            this();
        }

        private void d() {
            if (this.f) {
                return;
            }
            ac.this.m.a(com.anythink.expressad.exoplayer.k.o.d(ac.this.b.h), ac.this.b, 0, (Object) null, 0L);
            this.f = true;
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final int a(long j) {
            if (j <= 0 || this.e == 2) {
                return 0;
            }
            this.e = 2;
            d();
            return 1;
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final int a(com.anythink.expressad.exoplayer.n nVar, com.anythink.expressad.exoplayer.c.e eVar, boolean z) {
            int i = this.e;
            if (i == 2) {
                eVar.b(4);
                return -4;
            }
            if (z || i == 0) {
                nVar.a = ac.this.b;
                this.e = 1;
                return -5;
            }
            ac acVar = ac.this;
            if (!acVar.e) {
                return -3;
            }
            if (acVar.f) {
                eVar.f = 0L;
                eVar.b(1);
                eVar.d(ac.this.h);
                ByteBuffer byteBuffer = eVar.e;
                ac acVar2 = ac.this;
                byteBuffer.put(acVar2.g, 0, acVar2.h);
                d();
            } else {
                eVar.b(4);
            }
            this.e = 2;
            return -4;
        }

        public final void a() {
            if (this.e == 2) {
                this.e = 1;
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final boolean b() {
            return ac.this.e;
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final void c() throws IOException {
            ac acVar = ac.this;
            if (acVar.c) {
                return;
            }
            acVar.a.c();
        }
    }

    public static final class b implements t.c {
        public final com.anythink.expressad.exoplayer.j.k a;
        private final com.anythink.expressad.exoplayer.j.h b;
        private int c;
        private byte[] d;

        public b(com.anythink.expressad.exoplayer.j.k kVar, com.anythink.expressad.exoplayer.j.h hVar) {
            this.a = kVar;
            this.b = hVar;
        }

        @Override // com.anythink.expressad.exoplayer.j.t.c
        public final void a() {
        }

        @Override // com.anythink.expressad.exoplayer.j.t.c
        public final void b() {
            int iA = 0;
            this.c = 0;
            try {
                this.b.a(this.a);
                while (iA != -1) {
                    int i = this.c + iA;
                    this.c = i;
                    byte[] bArr = this.d;
                    if (bArr == null) {
                        this.d = new byte[1024];
                    } else if (i == bArr.length) {
                        this.d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    com.anythink.expressad.exoplayer.j.h hVar = this.b;
                    byte[] bArr2 = this.d;
                    int i2 = this.c;
                    iA = hVar.a(bArr2, i2, bArr2.length - i2);
                }
            } finally {
                com.anythink.expressad.exoplayer.k.af.a(this.b);
            }
        }
    }

    public ac(com.anythink.expressad.exoplayer.j.k kVar, h.a aVar, com.anythink.expressad.exoplayer.m mVar, long j, int i2, t.a aVar2, boolean z) {
        this.j = kVar;
        this.k = aVar;
        this.b = mVar;
        this.p = j;
        this.l = i2;
        this.m = aVar2;
        this.c = z;
        this.n = new af(new ae(mVar));
        aVar2.a();
    }

    private int a(b bVar, long j, long j2, IOException iOException) {
        int i2 = this.q + 1;
        this.q = i2;
        boolean z = this.c && i2 >= this.l;
        this.m.a(bVar.a, 1, -1, this.b, 0, null, 0L, this.p, j, j2, bVar.c, iOException, z);
        if (!z) {
            return 0;
        }
        this.e = true;
        return 2;
    }

    private void a(b bVar, long j, long j2) {
        this.m.a(bVar.a, 1, -1, this.b, 0, null, 0L, this.p, j, j2, bVar.c);
        this.h = bVar.c;
        this.g = bVar.d;
        this.e = true;
        this.f = true;
    }

    private void b(b bVar, long j, long j2) {
        this.m.b(bVar.a, 1, -1, null, 0, null, 0L, this.p, j, j2, bVar.c);
    }

    @Override // com.anythink.expressad.exoplayer.j.t.a
    public final /* bridge */ /* synthetic */ int a(t.c cVar, long j, long j2, IOException iOException) {
        b bVar = (b) cVar;
        int i2 = this.q + 1;
        this.q = i2;
        boolean z = this.c && i2 >= this.l;
        this.m.a(bVar.a, 1, -1, this.b, 0, null, 0L, this.p, j, j2, bVar.c, iOException, z);
        if (!z) {
            return 0;
        }
        this.e = true;
        return 2;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long a(long j, com.anythink.expressad.exoplayer.ac acVar) {
        return j;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long a(com.anythink.expressad.exoplayer.i.f[] fVarArr, boolean[] zArr, y[] yVarArr, boolean[] zArr2, long j) {
        byte b2 = 0;
        for (int i2 = 0; i2 < fVarArr.length; i2++) {
            if (yVarArr[i2] != null && (fVarArr[i2] == null || !zArr[i2])) {
                this.o.remove(yVarArr[i2]);
                yVarArr[i2] = null;
            }
            if (yVarArr[i2] == null && fVarArr[i2] != null) {
                a aVar = new a(this, b2);
                this.o.add(aVar);
                yVarArr[i2] = aVar;
                zArr2[i2] = true;
            }
        }
        return j;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final void a() {
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final void a(long j, boolean z) {
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final void a(r.a aVar, long j) {
        aVar.a((r) this);
    }

    @Override // com.anythink.expressad.exoplayer.j.t.a
    public final /* synthetic */ void a(t.c cVar, long j, long j2) {
        b bVar = (b) cVar;
        this.m.a(bVar.a, 1, -1, this.b, 0, null, 0L, this.p, j, j2, bVar.c);
        this.h = bVar.c;
        this.g = bVar.d;
        this.e = true;
        this.f = true;
    }

    @Override // com.anythink.expressad.exoplayer.j.t.a
    public final /* synthetic */ void a(t.c cVar, long j, long j2, boolean z) {
        this.m.b(((b) cVar).a, 1, -1, null, 0, null, 0L, this.p, j, j2, r3.c);
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final void a_(long j) {
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long b(long j) {
        for (int i2 = 0; i2 < this.o.size(); i2++) {
            this.o.get(i2).a();
        }
        return j;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final af b() {
        return this.n;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long c() {
        if (this.d) {
            return com.anythink.expressad.exoplayer.b.b;
        }
        this.m.c();
        this.d = true;
        return com.anythink.expressad.exoplayer.b.b;
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final boolean c(long j) {
        if (this.e || this.a.a()) {
            return false;
        }
        this.m.a(this.j, 1, -1, this.b, 0, null, 0L, this.p, this.a.a(new b(this.j, this.k.a()), this, this.l));
        return true;
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final long d() {
        return this.e ? Long.MIN_VALUE : 0L;
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final long e() {
        return (this.e || this.a.a()) ? Long.MIN_VALUE : 0L;
    }

    public final void f() {
        this.a.a((t.d) null);
        this.m.b();
    }
}

package com.anythink.expressad.exoplayer.h;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.aa;
import com.anythink.expressad.exoplayer.h.s;

/* JADX INFO: loaded from: classes.dex */
public final class q extends f<Void> {
    private final s a;
    private final int b;
    private int c;

    public static final class a extends p {
        public a(com.anythink.expressad.exoplayer.ae aeVar) {
            super(aeVar);
        }

        @Override // com.anythink.expressad.exoplayer.h.p, com.anythink.expressad.exoplayer.ae
        public final int a(int i, int i2, boolean z) {
            int iA = this.b.a(i, i2, z);
            return iA == -1 ? b(z) : iA;
        }

        @Override // com.anythink.expressad.exoplayer.h.p, com.anythink.expressad.exoplayer.ae
        public final int b(int i, int i2, boolean z) {
            int iB = this.b.b(i, i2, z);
            return iB == -1 ? a(z) : iB;
        }
    }

    public static final class b extends com.anythink.expressad.exoplayer.h.a {
        private final com.anythink.expressad.exoplayer.ae b;
        private final int c;
        private final int d;
        private final int e;

        public b(com.anythink.expressad.exoplayer.ae aeVar, int i) {
            super(false, new aa.b(i));
            this.b = aeVar;
            int iC = aeVar.c();
            this.c = iC;
            this.d = aeVar.b();
            this.e = i;
            if (iC > 0) {
                com.anythink.expressad.exoplayer.k.a.b(i <= Integer.MAX_VALUE / iC, "LoopingMediaSource contains too many periods");
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int a(int i) {
            return i / this.c;
        }

        @Override // com.anythink.expressad.exoplayer.ae
        public final int b() {
            return this.d * this.e;
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int b(int i) {
            return i / this.d;
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int b(Object obj) {
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            return -1;
        }

        @Override // com.anythink.expressad.exoplayer.ae
        public final int c() {
            return this.c * this.e;
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final com.anythink.expressad.exoplayer.ae c(int i) {
            return this.b;
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int d(int i) {
            return i * this.c;
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int e(int i) {
            return i * this.d;
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final Object f(int i) {
            return Integer.valueOf(i);
        }
    }

    private q(s sVar) {
        this(sVar, (byte) 0);
    }

    private q(s sVar, byte b2) {
        com.anythink.expressad.exoplayer.k.a.a(true);
        this.a = sVar;
        this.b = Integer.MAX_VALUE;
    }

    private void b(com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj) {
        this.c = aeVar.c();
        a(this.b != Integer.MAX_VALUE ? new b(aeVar, this.b) : new a(aeVar), obj);
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final r a(s.a aVar, com.anythink.expressad.exoplayer.j.b bVar) {
        s sVar;
        if (this.b != Integer.MAX_VALUE) {
            sVar = this.a;
            aVar = aVar.a(aVar.a % this.c);
        } else {
            sVar = this.a;
        }
        return sVar.a(aVar, bVar);
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.c
    public final void a() {
        super.a();
        this.c = 0;
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(r rVar) {
        this.a.a(rVar);
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.c
    public final void a(com.anythink.expressad.exoplayer.h hVar, boolean z) {
        super.a(hVar, z);
        a((Object) null, this.a);
    }

    @Override // com.anythink.expressad.exoplayer.h.f
    public final /* synthetic */ void a(Void r1, s sVar, com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj) {
        this.c = aeVar.c();
        a(this.b != Integer.MAX_VALUE ? new b(aeVar, this.b) : new a(aeVar), obj);
    }
}

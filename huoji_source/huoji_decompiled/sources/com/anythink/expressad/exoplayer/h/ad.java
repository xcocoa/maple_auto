package com.anythink.expressad.exoplayer.h;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.s;
import com.anythink.expressad.exoplayer.h.t;
import com.anythink.expressad.exoplayer.j.h;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ad extends com.anythink.expressad.exoplayer.h.c {
    public static final int a = 3;
    private final com.anythink.expressad.exoplayer.j.k b;
    private final h.a c;
    private final com.anythink.expressad.exoplayer.m d;
    private final long e;
    private final int f;
    private final boolean g;
    private final com.anythink.expressad.exoplayer.ae h;

    @Deprecated
    public interface a {
        void a();
    }

    public static final class b extends k {
        private final a a;
        private final int b;

        public b(a aVar, int i) {
            this.a = (a) com.anythink.expressad.exoplayer.k.a.a(aVar);
            this.b = i;
        }

        @Override // com.anythink.expressad.exoplayer.h.k, com.anythink.expressad.exoplayer.h.t
        public final void a(int i, @Nullable s.a aVar, t.b bVar, t.c cVar, IOException iOException, boolean z) {
        }
    }

    public static final class c {
        private final h.a a;
        private int b = 3;
        private boolean c;
        private boolean d;

        @Nullable
        private Object e;

        private c(h.a aVar) {
            this.a = (h.a) com.anythink.expressad.exoplayer.k.a.a(aVar);
        }

        private c a(int i) {
            com.anythink.expressad.exoplayer.k.a.b(!this.d);
            this.b = i;
            return this;
        }

        private c a(Object obj) {
            com.anythink.expressad.exoplayer.k.a.b(!this.d);
            this.e = obj;
            return this;
        }

        private c a(boolean z) {
            com.anythink.expressad.exoplayer.k.a.b(!this.d);
            this.c = z;
            return this;
        }

        private ad a(Uri uri, com.anythink.expressad.exoplayer.m mVar, long j) {
            this.d = true;
            return new ad(uri, this.a, mVar, j, this.b, this.c, this.e, (byte) 0);
        }

        @Deprecated
        private ad a(Uri uri, com.anythink.expressad.exoplayer.m mVar, long j, @Nullable Handler handler, @Nullable t tVar) {
            this.d = true;
            ad adVar = new ad(uri, this.a, mVar, j, this.b, this.c, this.e, (byte) 0);
            if (handler != null && tVar != null) {
                adVar.a(handler, tVar);
            }
            return adVar;
        }
    }

    @Deprecated
    private ad(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.m mVar, long j) {
        this(uri, aVar, mVar, j, (byte) 0);
    }

    @Deprecated
    private ad(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.m mVar, long j, byte b2) {
        this(uri, aVar, mVar, j, 3, false, null);
    }

    @Deprecated
    private ad(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.m mVar, long j, int i, Handler handler, a aVar2, int i2, boolean z) {
        this(uri, aVar, mVar, j, i, z, null);
        if (handler == null || aVar2 == null) {
            return;
        }
        a(handler, new b(aVar2, i2));
    }

    private ad(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.m mVar, long j, int i, boolean z, @Nullable Object obj) {
        this.c = aVar;
        this.d = mVar;
        this.e = j;
        this.f = i;
        this.g = z;
        this.b = new com.anythink.expressad.exoplayer.j.k(uri);
        this.h = new ab(j, true, false, obj);
    }

    public /* synthetic */ ad(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.m mVar, long j, int i, boolean z, Object obj, byte b2) {
        this(uri, aVar, mVar, j, i, z, obj);
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final r a(s.a aVar, com.anythink.expressad.exoplayer.j.b bVar) {
        com.anythink.expressad.exoplayer.k.a.a(aVar.a == 0);
        return new ac(this.b, this.c, this.d, this.e, this.f, a(aVar), this.g);
    }

    @Override // com.anythink.expressad.exoplayer.h.c
    public final void a() {
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(r rVar) {
        ((ac) rVar).f();
    }

    @Override // com.anythink.expressad.exoplayer.h.c
    public final void a(com.anythink.expressad.exoplayer.h hVar, boolean z) {
        a(this.h, (Object) null);
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void b() {
    }
}

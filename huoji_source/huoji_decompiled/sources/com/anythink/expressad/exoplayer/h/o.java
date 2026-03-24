package com.anythink.expressad.exoplayer.h;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.a.c;
import com.anythink.expressad.exoplayer.h.n;
import com.anythink.expressad.exoplayer.h.s;
import com.anythink.expressad.exoplayer.h.t;
import com.anythink.expressad.exoplayer.j.h;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class o extends com.anythink.expressad.exoplayer.h.c implements n.c {
    public static final int a = 3;
    public static final int b = 6;
    public static final int c = -1;
    public static final int d = 1048576;
    private final Uri e;
    private final h.a f;
    private final com.anythink.expressad.exoplayer.e.h g;
    private final int h;
    private final String i;
    private final int j;

    @Nullable
    private final Object k;
    private long l;
    private boolean m;

    @Deprecated
    public interface a {
        void a();
    }

    public static final class b extends k {
        private final a a;

        public b(a aVar) {
            this.a = (a) com.anythink.expressad.exoplayer.k.a.a(aVar);
        }

        @Override // com.anythink.expressad.exoplayer.h.k, com.anythink.expressad.exoplayer.h.t
        public final void a(int i, @Nullable s.a aVar, t.b bVar, t.c cVar, IOException iOException, boolean z) {
        }
    }

    public static final class c implements c.e {
        private final h.a a;

        @Nullable
        private com.anythink.expressad.exoplayer.e.h b;

        @Nullable
        private String c;

        @Nullable
        private Object d;
        private int e = -1;
        private int f = 1048576;
        private boolean g;

        public c(h.a aVar) {
            this.a = aVar;
        }

        private c a(int i) {
            com.anythink.expressad.exoplayer.k.a.b(!this.g);
            this.e = i;
            return this;
        }

        private c a(com.anythink.expressad.exoplayer.e.h hVar) {
            com.anythink.expressad.exoplayer.k.a.b(!this.g);
            this.b = hVar;
            return this;
        }

        private c a(Object obj) {
            com.anythink.expressad.exoplayer.k.a.b(!this.g);
            this.d = obj;
            return this;
        }

        private c a(String str) {
            com.anythink.expressad.exoplayer.k.a.b(!this.g);
            this.c = str;
            return this;
        }

        @Deprecated
        private o a(Uri uri, @Nullable Handler handler, @Nullable t tVar) {
            o oVarB = b(uri);
            if (handler != null && tVar != null) {
                oVarB.a(handler, tVar);
            }
            return oVarB;
        }

        private c b(int i) {
            com.anythink.expressad.exoplayer.k.a.b(!this.g);
            this.f = i;
            return this;
        }

        @Override // com.anythink.expressad.exoplayer.h.a.c.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o b(Uri uri) {
            this.g = true;
            if (this.b == null) {
                this.b = new com.anythink.expressad.exoplayer.e.c();
            }
            return new o(uri, this.a, this.b, this.e, this.c, this.f, this.d, (byte) 0);
        }

        @Override // com.anythink.expressad.exoplayer.h.a.c.e
        public final int[] a() {
            return new int[]{3};
        }
    }

    private o(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.e.h hVar, int i, @Nullable String str, int i2, @Nullable Object obj) {
        this.e = uri;
        this.f = aVar;
        this.g = hVar;
        this.h = i;
        this.i = str;
        this.j = i2;
        this.l = com.anythink.expressad.exoplayer.b.b;
        this.k = obj;
    }

    public /* synthetic */ o(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.e.h hVar, int i, String str, int i2, Object obj, byte b2) {
        this(uri, aVar, hVar, i, str, i2, obj);
    }

    @Deprecated
    private o(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.e.h hVar, Handler handler, a aVar2) {
        this(uri, aVar, hVar, handler, aVar2, null);
    }

    @Deprecated
    private o(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.e.h hVar, Handler handler, a aVar2, String str) {
        this(uri, aVar, hVar, handler, aVar2, str, (byte) 0);
    }

    @Deprecated
    private o(Uri uri, h.a aVar, com.anythink.expressad.exoplayer.e.h hVar, Handler handler, a aVar2, String str, byte b2) {
        this(uri, aVar, hVar, -1, str, 1048576, (Object) null);
        if (aVar2 == null || handler == null) {
            return;
        }
        a(handler, new b(aVar2));
    }

    private void b(long j, boolean z) {
        this.l = j;
        this.m = z;
        a(new ab(this.l, this.m, false, this.k), (Object) null);
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final r a(s.a aVar, com.anythink.expressad.exoplayer.j.b bVar) {
        com.anythink.expressad.exoplayer.k.a.a(aVar.a == 0);
        return new n(this.e, this.f.a(), this.g.a(), this.h, a(aVar), this, bVar, this.i, this.j);
    }

    @Override // com.anythink.expressad.exoplayer.h.c
    public final void a() {
    }

    @Override // com.anythink.expressad.exoplayer.h.n.c
    public final void a(long j, boolean z) {
        if (j == com.anythink.expressad.exoplayer.b.b) {
            j = this.l;
        }
        if (this.l == j && this.m == z) {
            return;
        }
        b(j, z);
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(r rVar) {
        ((n) rVar).f();
    }

    @Override // com.anythink.expressad.exoplayer.h.c
    public final void a(com.anythink.expressad.exoplayer.h hVar, boolean z) {
        b(this.l, false);
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void b() {
    }
}

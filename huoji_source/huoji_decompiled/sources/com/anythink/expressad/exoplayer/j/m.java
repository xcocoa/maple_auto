package com.anythink.expressad.exoplayer.j;

import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.j.d;

/* JADX INFO: loaded from: classes.dex */
public final class m implements aa<Object>, d {
    public static final long a = 1000000;
    public static final int b = 2000;
    private static final int c = 2000;
    private static final int d = 524288;

    @Nullable
    private final Handler e;

    @Nullable
    private final d.a f;
    private final com.anythink.expressad.exoplayer.k.y g;
    private final com.anythink.expressad.exoplayer.k.c h;
    private int i;
    private long j;
    private long k;
    private long l;
    private long m;
    private long n;

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.j.m$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int a;
        public final /* synthetic */ long b;
        public final /* synthetic */ long c;

        public AnonymousClass1(int i, long j, long j2) {
            this.a = i;
            this.b = j;
            this.c = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            m.this.f.c();
        }
    }

    public static final class a {

        @Nullable
        private Handler a;

        @Nullable
        private d.a b;
        private long c = 1000000;
        private int d = 2000;
        private com.anythink.expressad.exoplayer.k.c e = com.anythink.expressad.exoplayer.k.c.a;

        private a a(int i) {
            this.d = i;
            return this;
        }

        private a a(long j) {
            this.c = j;
            return this;
        }

        private a a(Handler handler, d.a aVar) {
            com.anythink.expressad.exoplayer.k.a.a((handler == null || aVar == null) ? false : true);
            this.a = handler;
            this.b = aVar;
            return this;
        }

        private a a(com.anythink.expressad.exoplayer.k.c cVar) {
            this.e = cVar;
            return this;
        }

        private m a() {
            return new m(this.a, this.b, this.c, this.d, this.e, (byte) 0);
        }
    }

    public m() {
        this(null, null, 1000000L, 2000, com.anythink.expressad.exoplayer.k.c.a);
    }

    @Deprecated
    private m(Handler handler, d.a aVar) {
        this(handler, aVar, 1000000L, 2000, com.anythink.expressad.exoplayer.k.c.a);
    }

    @Deprecated
    private m(Handler handler, d.a aVar, int i) {
        this(handler, aVar, 1000000L, i, com.anythink.expressad.exoplayer.k.c.a);
    }

    private m(@Nullable Handler handler, @Nullable d.a aVar, long j, int i, com.anythink.expressad.exoplayer.k.c cVar) {
        this.e = handler;
        this.f = aVar;
        this.g = new com.anythink.expressad.exoplayer.k.y(i);
        this.h = cVar;
        this.n = j;
    }

    public /* synthetic */ m(Handler handler, d.a aVar, long j, int i, com.anythink.expressad.exoplayer.k.c cVar, byte b2) {
        this(handler, aVar, j, i, cVar);
    }

    private void a(int i, long j, long j2) {
        Handler handler = this.e;
        if (handler == null || this.f == null) {
            return;
        }
        handler.post(new AnonymousClass1(i, j, j2));
    }

    @Override // com.anythink.expressad.exoplayer.j.d
    public final synchronized long a() {
        return this.n;
    }

    @Override // com.anythink.expressad.exoplayer.j.aa
    public final synchronized void a(int i) {
        this.k += (long) i;
    }

    @Override // com.anythink.expressad.exoplayer.j.aa
    public final synchronized void b() {
        if (this.i == 0) {
            this.j = this.h.a();
        }
        this.i++;
    }

    @Override // com.anythink.expressad.exoplayer.j.aa
    public final synchronized void c() {
        com.anythink.expressad.exoplayer.k.a.b(this.i > 0);
        long jA = this.h.a();
        int i = (int) (jA - this.j);
        this.l += i;
        long j = this.m;
        long j2 = this.k;
        this.m = j + j2;
        if (i > 0) {
            this.g.a((int) Math.sqrt(j2), (8000 * j2) / r6);
            if (this.l >= com.anythink.expressad.exoplayer.i.a.f || this.m >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                this.n = (long) this.g.a();
            }
        }
        long j3 = this.k;
        long j4 = this.n;
        Handler handler = this.e;
        if (handler != null && this.f != null) {
            handler.post(new AnonymousClass1(i, j3, j4));
        }
        int i2 = this.i - 1;
        this.i = i2;
        if (i2 > 0) {
            this.j = jA;
        }
        this.k = 0L;
    }
}

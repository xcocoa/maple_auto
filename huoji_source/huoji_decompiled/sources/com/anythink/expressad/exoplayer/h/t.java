package com.anythink.expressad.exoplayer.h;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.s;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface t {

    public static final class a {
        public final int a;

        @Nullable
        public final s.a b;
        private final CopyOnWriteArrayList<C0121a> c;
        private final long d;

        /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.h.t$a$a, reason: collision with other inner class name */
        public static final class C0121a {
            public final Handler a;
            public final t b;

            public C0121a(Handler handler, t tVar) {
                this.a = handler;
                this.b = tVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private a(CopyOnWriteArrayList<C0121a> copyOnWriteArrayList, int i, @Nullable s.a aVar, long j) {
            this.c = copyOnWriteArrayList;
            this.a = i;
            this.b = aVar;
            this.d = j;
        }

        private long a(long j) {
            long jA = com.anythink.expressad.exoplayer.b.a(j);
            return jA == com.anythink.expressad.exoplayer.b.b ? com.anythink.expressad.exoplayer.b.b : this.d + jA;
        }

        private static void a(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        private void a(com.anythink.expressad.exoplayer.j.k kVar, int i, long j) {
            a(kVar, i, -1, null, 0, null, com.anythink.expressad.exoplayer.b.b, com.anythink.expressad.exoplayer.b.b, j);
        }

        private void a(com.anythink.expressad.exoplayer.j.k kVar, int i, long j, long j2, long j3) {
            a(kVar, i, -1, null, 0, null, com.anythink.expressad.exoplayer.b.b, com.anythink.expressad.exoplayer.b.b, j, j2, j3);
        }

        private void b(com.anythink.expressad.exoplayer.j.k kVar, int i, long j, long j2, long j3) {
            b(kVar, i, -1, null, 0, null, com.anythink.expressad.exoplayer.b.b, com.anythink.expressad.exoplayer.b.b, j, j2, j3);
        }

        @CheckResult
        public final a a(int i, @Nullable s.a aVar, long j) {
            return new a(this.c, i, aVar, j);
        }

        public final void a() {
            com.anythink.expressad.exoplayer.k.a.b(this.b != null);
            for (C0121a c0121a : this.c) {
                final t tVar = c0121a.b;
                a(c0121a.a, new Runnable() { // from class: com.anythink.expressad.exoplayer.h.t.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        t tVar2 = tVar;
                        a aVar = a.this;
                        tVar2.a(aVar.a, aVar.b);
                    }
                });
            }
        }

        public final void a(int i, long j, long j2) {
            a(new c(1, i, null, 3, null, a(j), a(j2)));
        }

        public final void a(int i, @Nullable com.anythink.expressad.exoplayer.m mVar, int i2, @Nullable Object obj, long j) {
            b(new c(1, i, mVar, i2, obj, a(j), com.anythink.expressad.exoplayer.b.b));
        }

        public final void a(Handler handler, t tVar) {
            com.anythink.expressad.exoplayer.k.a.a((handler == null || tVar == null) ? false : true);
            this.c.add(new C0121a(handler, tVar));
        }

        public final void a(final b bVar, final c cVar) {
            for (C0121a c0121a : this.c) {
                final t tVar = c0121a.b;
                a(c0121a.a, new Runnable() { // from class: com.anythink.expressad.exoplayer.h.t.a.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        t tVar2 = tVar;
                        a aVar = a.this;
                        tVar2.a(aVar.a, aVar.b, bVar, cVar);
                    }
                });
            }
        }

        public final void a(final b bVar, final c cVar, final IOException iOException, final boolean z) {
            for (C0121a c0121a : this.c) {
                final t tVar = c0121a.b;
                a(c0121a.a, new Runnable() { // from class: com.anythink.expressad.exoplayer.h.t.a.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        t tVar2 = tVar;
                        a aVar = a.this;
                        tVar2.a(aVar.a, aVar.b, bVar, cVar, iOException, z);
                    }
                });
            }
        }

        public final void a(final c cVar) {
            for (C0121a c0121a : this.c) {
                final t tVar = c0121a.b;
                a(c0121a.a, new Runnable() { // from class: com.anythink.expressad.exoplayer.h.t.a.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        t tVar2 = tVar;
                        a aVar = a.this;
                        tVar2.a(aVar.a, aVar.b, cVar);
                    }
                });
            }
        }

        public final void a(t tVar) {
            for (C0121a c0121a : this.c) {
                if (c0121a.b == tVar) {
                    this.c.remove(c0121a);
                }
            }
        }

        public final void a(com.anythink.expressad.exoplayer.j.k kVar, int i, int i2, @Nullable com.anythink.expressad.exoplayer.m mVar, int i3, @Nullable Object obj, long j, long j2, long j3) {
            a(new b(kVar, j3, 0L, 0L), new c(i, i2, mVar, i3, obj, a(j), a(j2)));
        }

        public final void a(com.anythink.expressad.exoplayer.j.k kVar, int i, int i2, @Nullable com.anythink.expressad.exoplayer.m mVar, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
            b(new b(kVar, j3, j4, j5), new c(i, i2, mVar, i3, obj, a(j), a(j2)));
        }

        public final void a(com.anythink.expressad.exoplayer.j.k kVar, int i, int i2, @Nullable com.anythink.expressad.exoplayer.m mVar, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
            a(new b(kVar, j3, j4, j5), new c(i, i2, mVar, i3, obj, a(j), a(j2)), iOException, z);
        }

        public final void a(com.anythink.expressad.exoplayer.j.k kVar, IOException iOException) {
            a(kVar, 6, -1, null, 0, null, com.anythink.expressad.exoplayer.b.b, com.anythink.expressad.exoplayer.b.b, -1L, 0L, 0L, iOException, true);
        }

        public final void b() {
            com.anythink.expressad.exoplayer.k.a.b(this.b != null);
            for (C0121a c0121a : this.c) {
                final t tVar = c0121a.b;
                a(c0121a.a, new Runnable() { // from class: com.anythink.expressad.exoplayer.h.t.a.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        t tVar2 = tVar;
                        a aVar = a.this;
                        tVar2.b(aVar.a, aVar.b);
                    }
                });
            }
        }

        public final void b(final b bVar, final c cVar) {
            for (C0121a c0121a : this.c) {
                final t tVar = c0121a.b;
                a(c0121a.a, new Runnable() { // from class: com.anythink.expressad.exoplayer.h.t.a.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        t tVar2 = tVar;
                        a aVar = a.this;
                        tVar2.b(aVar.a, aVar.b, bVar, cVar);
                    }
                });
            }
        }

        public final void b(final c cVar) {
            for (C0121a c0121a : this.c) {
                final t tVar = c0121a.b;
                a(c0121a.a, new Runnable() { // from class: com.anythink.expressad.exoplayer.h.t.a.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        t tVar2 = tVar;
                        a aVar = a.this;
                        tVar2.b(aVar.a, aVar.b, cVar);
                    }
                });
            }
        }

        public final void b(com.anythink.expressad.exoplayer.j.k kVar, int i, int i2, @Nullable com.anythink.expressad.exoplayer.m mVar, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
            c(new b(kVar, j3, j4, j5), new c(i, i2, mVar, i3, obj, a(j), a(j2)));
        }

        public final void c() {
            com.anythink.expressad.exoplayer.k.a.b(this.b != null);
            for (C0121a c0121a : this.c) {
                final t tVar = c0121a.b;
                a(c0121a.a, new Runnable() { // from class: com.anythink.expressad.exoplayer.h.t.a.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        t tVar2 = tVar;
                        a aVar = a.this;
                        tVar2.c(aVar.a, aVar.b);
                    }
                });
            }
        }

        public final void c(final b bVar, final c cVar) {
            for (C0121a c0121a : this.c) {
                final t tVar = c0121a.b;
                a(c0121a.a, new Runnable() { // from class: com.anythink.expressad.exoplayer.h.t.a.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        t tVar2 = tVar;
                        a aVar = a.this;
                        tVar2.c(aVar.a, aVar.b, bVar, cVar);
                    }
                });
            }
        }
    }

    public static final class b {
        public final com.anythink.expressad.exoplayer.j.k a;
        public final long b;
        public final long c;
        public final long d;

        public b(com.anythink.expressad.exoplayer.j.k kVar, long j, long j2, long j3) {
            this.a = kVar;
            this.b = j;
            this.c = j2;
            this.d = j3;
        }
    }

    public static final class c {
        public final int a;
        public final int b;

        @Nullable
        public final com.anythink.expressad.exoplayer.m c;
        public final int d;

        @Nullable
        public final Object e;
        public final long f;
        public final long g;

        public c(int i, int i2, @Nullable com.anythink.expressad.exoplayer.m mVar, int i3, @Nullable Object obj, long j, long j2) {
            this.a = i;
            this.b = i2;
            this.c = mVar;
            this.d = i3;
            this.e = obj;
            this.f = j;
            this.g = j2;
        }
    }

    void a(int i, s.a aVar);

    void a(int i, @Nullable s.a aVar, b bVar, c cVar);

    void a(int i, @Nullable s.a aVar, b bVar, c cVar, IOException iOException, boolean z);

    void a(int i, s.a aVar, c cVar);

    void b(int i, s.a aVar);

    void b(int i, @Nullable s.a aVar, b bVar, c cVar);

    void b(int i, @Nullable s.a aVar, c cVar);

    void c(int i, s.a aVar);

    void c(int i, @Nullable s.a aVar, b bVar, c cVar);
}

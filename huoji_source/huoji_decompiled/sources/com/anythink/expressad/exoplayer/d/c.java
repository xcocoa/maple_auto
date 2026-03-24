package com.anythink.expressad.exoplayer.d;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface c {

    public static final class a {
        private final CopyOnWriteArrayList<C0111a> a = new CopyOnWriteArrayList<>();

        /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.d.c$a$a, reason: collision with other inner class name */
        public static final class C0111a {
            public final Handler a;
            public final c b;

            public C0111a(Handler handler, c cVar) {
                this.a = handler;
                this.b = cVar;
            }
        }

        public final void a() {
            for (C0111a c0111a : this.a) {
                final c cVar = c0111a.b;
                c0111a.a.post(new Runnable() { // from class: com.anythink.expressad.exoplayer.d.c.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        cVar.d();
                    }
                });
            }
        }

        public final void a(Handler handler, c cVar) {
            com.anythink.expressad.exoplayer.k.a.a((handler == null || cVar == null) ? false : true);
            this.a.add(new C0111a(handler, cVar));
        }

        public final void a(c cVar) {
            for (C0111a c0111a : this.a) {
                if (c0111a.b == cVar) {
                    this.a.remove(c0111a);
                }
            }
        }

        public final void a(final Exception exc) {
            for (C0111a c0111a : this.a) {
                final c cVar = c0111a.b;
                c0111a.a.post(new Runnable() { // from class: com.anythink.expressad.exoplayer.d.c.a.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        cVar.a(exc);
                    }
                });
            }
        }

        public final void b() {
            for (C0111a c0111a : this.a) {
                final c cVar = c0111a.b;
                c0111a.a.post(new Runnable() { // from class: com.anythink.expressad.exoplayer.d.c.a.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        cVar.e();
                    }
                });
            }
        }

        public final void c() {
            for (C0111a c0111a : this.a) {
                final c cVar = c0111a.b;
                c0111a.a.post(new Runnable() { // from class: com.anythink.expressad.exoplayer.d.c.a.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        cVar.f();
                    }
                });
            }
        }
    }

    void a(Exception exc);

    void d();

    void e();

    void f();
}

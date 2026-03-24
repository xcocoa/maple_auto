package com.anythink.expressad.exoplayer.c;

import com.anythink.expressad.exoplayer.c.e;
import com.anythink.expressad.exoplayer.c.f;
import java.lang.Exception;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public abstract class g<I extends e, O extends f, E extends Exception> implements c<I, O, E> {
    private final Thread a;
    private final Object b = new Object();
    private final ArrayDeque<I> c = new ArrayDeque<>();
    private final ArrayDeque<O> d = new ArrayDeque<>();
    private final I[] e;
    private final O[] f;
    private int g;
    private int h;
    private I i;
    private E j;
    private boolean k;
    private boolean l;
    private int m;

    private g(I[] iArr, O[] oArr) {
        this.e = iArr;
        this.g = iArr.length;
        for (int i = 0; i < this.g; i++) {
            ((I[]) this.e)[i] = h();
        }
        this.f = oArr;
        this.h = oArr.length;
        for (int i2 = 0; i2 < this.h; i2++) {
            ((O[]) this.f)[i2] = i();
        }
        Thread thread = new Thread() { // from class: com.anythink.expressad.exoplayer.c.g.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                g.a(g.this);
            }
        };
        this.a = thread;
        thread.start();
    }

    private void a(int i) {
        com.anythink.expressad.exoplayer.k.a.b(this.g == this.e.length);
        for (I i2 : this.e) {
            i2.d(i);
        }
    }

    public static /* synthetic */ void a(g gVar) {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (gVar.o());
    }

    private void b(I i) {
        i.a();
        I[] iArr = this.e;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr[i2] = i;
    }

    private void b(O o) {
        o.a();
        O[] oArr = this.f;
        int i = this.h;
        this.h = i + 1;
        oArr[i] = o;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends java.lang.Exception */
    private void l() throws E {
        E e = this.j;
        if (e != null) {
            throw e;
        }
    }

    private void m() {
        if (p()) {
            this.b.notify();
        }
    }

    private void n() {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (o());
    }

    private boolean o() {
        synchronized (this.b) {
            while (!this.l && !p()) {
                this.b.wait();
            }
            if (this.l) {
                return false;
            }
            I iRemoveFirst = this.c.removeFirst();
            O[] oArr = this.f;
            int i = this.h - 1;
            this.h = i;
            O o = oArr[i];
            this.k = false;
            if (iRemoveFirst.c()) {
                o.b(4);
            } else {
                if (iRemoveFirst.b()) {
                    o.b(Integer.MIN_VALUE);
                }
                try {
                    this.j = (E) k();
                } catch (OutOfMemoryError | RuntimeException unused) {
                    this.j = (E) j();
                }
                if (this.j != null) {
                    synchronized (this.b) {
                    }
                    return false;
                }
            }
            synchronized (this.b) {
                if (this.k) {
                    b(o);
                    b(iRemoveFirst);
                } else if (o.b()) {
                    this.m++;
                    b(o);
                    b(iRemoveFirst);
                } else {
                    o.b = this.m;
                    this.m = 0;
                    this.d.addLast(o);
                    b(iRemoveFirst);
                }
            }
            return true;
        }
    }

    private boolean p() {
        return !this.c.isEmpty() && this.h > 0;
    }

    @Override // com.anythink.expressad.exoplayer.c.c
    public final void a(I i) {
        synchronized (this.b) {
            l();
            com.anythink.expressad.exoplayer.k.a.a(i == this.i);
            this.c.addLast(i);
            m();
            this.i = null;
        }
    }

    public final void a(O o) {
        synchronized (this.b) {
            b(o);
            m();
        }
    }

    @Override // com.anythink.expressad.exoplayer.c.c
    public final void d() {
        synchronized (this.b) {
            this.k = true;
            this.m = 0;
            I i = this.i;
            if (i != null) {
                b(i);
                this.i = null;
            }
            while (!this.c.isEmpty()) {
                b(this.c.removeFirst());
            }
            while (!this.d.isEmpty()) {
                b(this.d.removeFirst());
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.c.c
    public final void e() {
        synchronized (this.b) {
            this.l = true;
            this.b.notify();
        }
        try {
            this.a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // com.anythink.expressad.exoplayer.c.c
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final I b() {
        I i;
        synchronized (this.b) {
            l();
            com.anythink.expressad.exoplayer.k.a.b(this.i == null);
            int i2 = this.g;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.e;
                int i3 = i2 - 1;
                this.g = i3;
                i = iArr[i3];
            }
            this.i = i;
        }
        return i;
    }

    @Override // com.anythink.expressad.exoplayer.c.c
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final O c() {
        synchronized (this.b) {
            l();
            if (this.d.isEmpty()) {
                return null;
            }
            return this.d.removeFirst();
        }
    }

    public abstract I h();

    public abstract O i();

    public abstract E j();

    public abstract E k();
}

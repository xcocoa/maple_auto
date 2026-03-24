package com.anythink.expressad.exoplayer;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class x {
    private final b a;
    private final a b;
    private final ae c;
    private int d;
    private Object e;
    private Handler f;
    private int g;
    private long h = com.anythink.expressad.exoplayer.b.b;
    private boolean i = true;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;

    public interface a {
        void a(x xVar);
    }

    public interface b {
        void a(int i, Object obj);
    }

    public x(a aVar, b bVar, ae aeVar, int i, Handler handler) {
        this.b = aVar;
        this.a = bVar;
        this.c = aeVar;
        this.f = handler;
        this.g = i;
    }

    private x a(int i, long j) {
        com.anythink.expressad.exoplayer.k.a.b(!this.j);
        com.anythink.expressad.exoplayer.k.a.a(j != com.anythink.expressad.exoplayer.b.b);
        if (i < 0 || (!this.c.a() && i >= this.c.b())) {
            throw new o(this.c, i, j);
        }
        this.g = i;
        this.h = j;
        return this;
    }

    private x a(long j) {
        com.anythink.expressad.exoplayer.k.a.b(!this.j);
        this.h = j;
        return this;
    }

    private x a(Handler handler) {
        com.anythink.expressad.exoplayer.k.a.b(!this.j);
        this.f = handler;
        return this;
    }

    private x b(boolean z) {
        com.anythink.expressad.exoplayer.k.a.b(!this.j);
        this.i = z;
        return this;
    }

    private synchronized x l() {
        com.anythink.expressad.exoplayer.k.a.b(this.j);
        this.m = true;
        a(false);
        return this;
    }

    public final ae a() {
        return this.c;
    }

    public final x a(int i) {
        com.anythink.expressad.exoplayer.k.a.b(!this.j);
        this.d = i;
        return this;
    }

    public final x a(@Nullable Object obj) {
        com.anythink.expressad.exoplayer.k.a.b(!this.j);
        this.e = obj;
        return this;
    }

    public final synchronized void a(boolean z) {
        this.k = z | this.k;
        this.l = true;
        notifyAll();
    }

    public final b b() {
        return this.a;
    }

    public final int c() {
        return this.d;
    }

    public final Object d() {
        return this.e;
    }

    public final Handler e() {
        return this.f;
    }

    public final long f() {
        return this.h;
    }

    public final int g() {
        return this.g;
    }

    public final boolean h() {
        return this.i;
    }

    public final x i() {
        com.anythink.expressad.exoplayer.k.a.b(!this.j);
        if (this.h == com.anythink.expressad.exoplayer.b.b) {
            com.anythink.expressad.exoplayer.k.a.a(this.i);
        }
        this.j = true;
        this.b.a(this);
        return this;
    }

    public final synchronized boolean j() {
        return this.m;
    }

    public final synchronized boolean k() {
        boolean z;
        com.anythink.expressad.exoplayer.k.a.b(this.j);
        com.anythink.expressad.exoplayer.k.a.b(this.f.getLooper().getThread() != Thread.currentThread());
        long jElapsedRealtime = 500;
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() + 500;
        while (true) {
            z = this.l;
            if (z || jElapsedRealtime <= 0) {
                break;
            }
            wait(jElapsedRealtime);
            jElapsedRealtime = jElapsedRealtime2 - SystemClock.elapsedRealtime();
        }
        if (!z) {
            throw new TimeoutException("Message delivery time out");
        }
        return this.k;
    }
}

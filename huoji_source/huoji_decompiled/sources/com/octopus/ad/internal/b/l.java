package com.octopus.ad.internal.b;

import com.octopus.ad.internal.utilities.HaoboLog;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class l {
    private final o a;
    private final com.octopus.ad.internal.b.a b;
    private volatile Thread f;
    private volatile boolean g;
    private final Object c = new Object();
    private final Object d = new Object();
    private volatile int h = -1;
    private final AtomicInteger e = new AtomicInteger();

    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.e();
        }
    }

    public l(o oVar, com.octopus.ad.internal.b.a aVar) {
        this.a = (o) k.a(oVar);
        this.b = (com.octopus.ad.internal.b.a) k.a(aVar);
    }

    private void b() throws m {
        int i = this.e.get();
        if (i < 1) {
            return;
        }
        this.e.set(0);
        throw new m("Error reading source " + i + " times");
    }

    private void b(long j, long j2) {
        a(j, j2);
        synchronized (this.c) {
            this.c.notifyAll();
        }
    }

    private synchronized void c() throws m {
        boolean z = (this.f == null || this.f.getState() == Thread.State.TERMINATED) ? false : true;
        if (!this.g && !this.b.d() && !z) {
            this.f = new Thread(new a(), "Source reader for " + this.a);
            this.f.start();
        }
    }

    private void d() throws m {
        synchronized (this.c) {
            try {
                try {
                    this.c.wait(1000L);
                } catch (InterruptedException e) {
                    throw new m("Waiting source data is interrupted!", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Throwable th;
        int iA;
        int iA2 = 0;
        try {
            iA2 = this.b.a();
            this.a.a(iA2);
            iA = this.a.a();
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int iA3 = this.a.a(bArr);
                    if (iA3 == -1) {
                        g();
                        f();
                        break;
                    }
                    synchronized (this.d) {
                        if (h()) {
                            return;
                        } else {
                            this.b.a(bArr, iA3);
                        }
                    }
                    iA2 += iA3;
                    b(iA2, iA);
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    this.e.incrementAndGet();
                    a(th);
                } finally {
                    i();
                    b(iA2, iA);
                }
            }
        } catch (Throwable th3) {
            th = th3;
            iA = -1;
        }
    }

    private void f() {
        this.h = 100;
        a(this.h);
    }

    private void g() throws m {
        synchronized (this.d) {
            if (!h() && this.b.a() == this.a.a()) {
                this.b.c();
            }
        }
    }

    private boolean h() {
        return Thread.currentThread().isInterrupted() || this.g;
    }

    private void i() {
        try {
            this.a.b();
        } catch (m e) {
            a(new m("Error closing source " + this.a, e));
        }
    }

    public int a(byte[] bArr, long j, int i) throws m {
        n.a(bArr, j, i);
        while (!this.b.d() && this.b.a() < ((long) i) + j && !this.g) {
            c();
            d();
            b();
        }
        int iA = this.b.a(bArr, j, i);
        if (this.b.d() && this.h != 100) {
            this.h = 100;
            a(100);
        }
        return iA;
    }

    public void a() {
        synchronized (this.d) {
            HaoboLog.d(HaoboLog.proxyCacheLogTag, "Shutdown proxy for " + this.a);
            try {
                this.g = true;
                if (this.f != null) {
                    this.f.interrupt();
                }
                this.b.b();
            } catch (m e) {
                a(e);
            }
        }
    }

    public void a(int i) {
    }

    public void a(long j, long j2) {
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1)) == 0 ? 100 : (int) ((j * 100) / j2);
        boolean z = i != this.h;
        if ((j2 >= 0) && z) {
            a(i);
        }
        this.h = i;
    }

    public final void a(Throwable th) {
        if (th instanceof i) {
            HaoboLog.d(HaoboLog.proxyCacheLogTag, "ProxyCache is interrupted");
        } else {
            HaoboLog.e(HaoboLog.proxyCacheLogTag, "ProxyCache error", th);
        }
    }
}

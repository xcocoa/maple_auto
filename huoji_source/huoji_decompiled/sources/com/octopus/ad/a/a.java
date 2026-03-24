package com.octopus.ad.a;

import android.os.Handler;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private Timer a;
    private Handler b;
    private long c;
    private long d;
    private long e;
    private b f;
    private c g;

    private a() {
        this.g = c.FINISH;
        this.b = new Handler();
    }

    public a(long j, long j2) {
        this.g = c.FINISH;
        a(j);
        b(j2);
        this.b = new Handler();
    }

    private void a(long j) {
        this.c = j;
        this.e = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z) {
        if (this.a != null) {
            f();
            this.g = c.FINISH;
            this.b.post(new Runnable() { // from class: com.octopus.ad.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f != null) {
                        if (z) {
                            a.this.f.b();
                        } else {
                            a.this.f.a();
                        }
                    }
                }
            });
        }
    }

    private void b(long j) {
        this.d = j;
    }

    private void f() {
        this.a.cancel();
        this.a.purge();
        this.a = null;
    }

    public void a() {
        if (this.a == null) {
            c cVar = this.g;
            c cVar2 = c.START;
            if (cVar != cVar2) {
                Timer timer = new Timer();
                this.a = timer;
                timer.scheduleAtFixedRate(e(), 0L, this.d);
                this.g = cVar2;
            }
        }
    }

    public void a(b bVar) {
        this.f = bVar;
    }

    public void b() {
        if (this.a == null || this.g != c.START) {
            return;
        }
        f();
        this.g = c.PAUSE;
    }

    public void c() {
        if (this.g == c.PAUSE) {
            a();
        }
    }

    public void d() {
        a(true);
    }

    public TimerTask e() {
        return new TimerTask() { // from class: com.octopus.ad.a.a.2
            private long b = -1;

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (this.b < 0) {
                    this.b = scheduledExecutionTime() - (a.this.c - a.this.e);
                    a.this.b.post(new Runnable() { // from class: com.octopus.ad.a.a.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.this.f != null) {
                                a.this.f.a(a.this.e);
                            }
                        }
                    });
                    return;
                }
                a aVar = a.this;
                aVar.e = aVar.c - (scheduledExecutionTime() - this.b);
                a.this.b.post(new Runnable() { // from class: com.octopus.ad.a.a.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.this.f != null) {
                            a.this.f.a(a.this.e);
                        }
                    }
                });
                if (a.this.e <= 0) {
                    a.this.a(false);
                }
            }
        };
    }
}

package com.anythink.core.common.m;

import android.os.SystemClock;
import com.anythink.core.common.b.n;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public long a;
    public long b;
    public Runnable c;
    public boolean d;
    public boolean e;
    public b f;
    private final a g;

    public c(long j, Runnable runnable) {
        this.d = false;
        this.e = true;
        this.g = d.a();
        this.f = new b() { // from class: com.anythink.core.common.m.c.1
            @Override // java.lang.Runnable
            public final void run() {
                c cVar = c.this;
                cVar.d = false;
                cVar.b = -1L;
                if (cVar.e) {
                    n.a().b(c.this.c);
                } else {
                    n.a();
                    n.c(c.this.c);
                }
            }
        };
        this.b = j;
        this.c = runnable;
    }

    public c(long j, Runnable runnable, byte b) {
        this(j, runnable);
        this.e = false;
    }

    public final synchronized void a() {
        if (this.b >= 0 && !this.d) {
            this.d = true;
            this.a = SystemClock.elapsedRealtime();
            this.g.a(this.f, this.b, false);
        }
    }

    public final synchronized void b() {
        if (this.d) {
            this.d = false;
            this.b -= SystemClock.elapsedRealtime() - this.a;
            this.g.b(this.f);
        }
    }

    public final synchronized void c() {
        this.d = false;
        this.g.b(this.f);
        this.b = -1L;
    }
}

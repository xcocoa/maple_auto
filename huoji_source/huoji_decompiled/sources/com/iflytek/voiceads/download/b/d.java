package com.iflytek.voiceads.download.b;

import com.iflytek.voiceads.download.b.a.a;
import com.iflytek.voiceads.download.b.b.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class d implements a.InterfaceC0181a, a.InterfaceC0182a {
    private ExecutorService a;
    private com.iflytek.voiceads.download.b.a b;
    private com.iflytek.voiceads.download.d.a c;
    private a e;
    private long g;
    private long f = System.currentTimeMillis();
    private volatile AtomicBoolean h = new AtomicBoolean(false);
    private List<com.iflytek.voiceads.download.b.b.a> d = new ArrayList();

    public interface a {
        void c(com.iflytek.voiceads.download.d.a aVar);

        void d(com.iflytek.voiceads.download.d.a aVar);
    }

    public d(ExecutorService executorService, com.iflytek.voiceads.download.b.a aVar, com.iflytek.voiceads.download.d.a aVar2, a aVar3) {
        this.a = executorService;
        this.b = aVar;
        this.c = aVar2;
        this.e = aVar3;
    }

    private void f() {
        this.g = 0L;
        Iterator<com.iflytek.voiceads.download.d.b> it = this.c.j().iterator();
        while (it.hasNext()) {
            this.g += it.next().d();
        }
        this.c.b(this.g);
    }

    public void a() {
        if (this.c.d() <= 0) {
            this.a.submit(new com.iflytek.voiceads.download.b.a.a(this.b, this.c, this));
            return;
        }
        Iterator<com.iflytek.voiceads.download.d.b> it = this.c.j().iterator();
        while (it.hasNext()) {
            com.iflytek.voiceads.download.b.b.a aVar = new com.iflytek.voiceads.download.b.b.a(it.next(), this.b, this.c, this);
            this.a.submit(aVar);
            this.d.add(aVar);
        }
        this.c.a(2);
        this.b.a(this.c);
    }

    @Override // com.iflytek.voiceads.download.b.a.a.InterfaceC0181a
    public void a(long j, boolean z) {
        this.c.a(z);
        this.c.a(j);
        ArrayList arrayList = new ArrayList();
        if (z) {
            long jD = this.c.d();
            long j2 = jD / ((long) 2);
            int i = 0;
            while (i < 2) {
                long j3 = j2 * ((long) i);
                com.iflytek.voiceads.download.d.b bVar = new com.iflytek.voiceads.download.d.b(this.c.b(), j3, i == 1 ? jD : (j3 + j2) - 1);
                arrayList.add(bVar);
                com.iflytek.voiceads.download.b.b.a aVar = new com.iflytek.voiceads.download.b.b.a(bVar, this.b, this.c, this);
                this.a.submit(aVar);
                this.d.add(aVar);
                i++;
            }
        } else {
            com.iflytek.voiceads.download.d.b bVar2 = new com.iflytek.voiceads.download.d.b(this.c.b(), 0L, this.c.d());
            arrayList.add(bVar2);
            com.iflytek.voiceads.download.b.b.a aVar2 = new com.iflytek.voiceads.download.b.b.a(bVar2, this.b, this.c, this);
            this.a.submit(aVar2);
            this.d.add(aVar2);
        }
        this.c.a(arrayList);
        this.c.a(2);
        this.b.a(this.c);
    }

    @Override // com.iflytek.voiceads.download.b.a.a.InterfaceC0181a
    public void b() {
        this.e.d(this.c);
    }

    @Override // com.iflytek.voiceads.download.b.b.a.InterfaceC0182a
    public void c() {
        if (this.h.get()) {
            return;
        }
        synchronized (this) {
            if (!this.h.get()) {
                this.h.set(true);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f > 1000) {
                    f();
                    this.b.a(this.c);
                    this.f = jCurrentTimeMillis;
                }
                this.h.set(false);
            }
        }
    }

    @Override // com.iflytek.voiceads.download.b.b.a.InterfaceC0182a
    public void d() {
        f();
        if (this.c.e() == this.c.d()) {
            this.c.a(4);
            this.b.a(this.c);
            if (this.e != null) {
                this.e.c(this.c);
            }
        }
    }

    @Override // com.iflytek.voiceads.download.b.b.a.InterfaceC0182a
    public void e() {
        this.e.d(this.c);
    }
}

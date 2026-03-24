package mobi.oneway.export.e;

import com.anythink.expressad.exoplayer.f;

/* JADX INFO: loaded from: classes2.dex */
public class d extends Thread {
    private a a;
    private long b;
    private long c;
    private boolean d = false;

    public interface a {
        void timeout();
    }

    public d(a aVar, long j) {
        this.b = f.a;
        this.a = aVar;
        if (j != 0) {
            this.b = j;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        this.c = System.currentTimeMillis();
        while (!b.a().d() && !this.d) {
            if (System.currentTimeMillis() - this.c > this.b) {
                this.d = true;
                if (this.a != null) {
                    b.a().c(new Runnable() { // from class: mobi.oneway.export.e.d.1
                        @Override // java.lang.Runnable
                        public void run() {
                            d.this.a.timeout();
                        }
                    });
                }
            }
        }
    }
}

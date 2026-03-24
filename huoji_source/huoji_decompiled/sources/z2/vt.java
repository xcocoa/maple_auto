package z2;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class vt {
    private ExecutorService OooO00o;
    private ExecutorService OooO0O0;

    public synchronized void OooO00o() {
        ExecutorService executorService = this.OooO00o;
        if (executorService != null) {
            try {
                executorService.shutdownNow();
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public synchronized void OooO0O0() {
        ExecutorService executorService = this.OooO0O0;
        if (executorService != null) {
            try {
                executorService.shutdownNow();
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public void OooO0OO(Runnable runnable) {
        if (this.OooO00o == null) {
            OooO0o0();
        }
        this.OooO00o.execute(runnable);
    }

    public void OooO0Oo(Runnable runnable) {
        if (this.OooO0O0 == null) {
            OooO0oO();
        }
        this.OooO0O0.execute(runnable);
    }

    public synchronized void OooO0o(int i) {
        OooO00o();
        this.OooO00o = Executors.newFixedThreadPool(i);
    }

    public synchronized void OooO0o0() {
        OooO0o(3);
    }

    public synchronized void OooO0oO() {
        OooO0oo(1);
    }

    public synchronized void OooO0oo(int i) {
        OooO0O0();
        this.OooO0O0 = Executors.newFixedThreadPool(i);
    }
}

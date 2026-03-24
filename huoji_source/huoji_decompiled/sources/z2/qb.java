package z2;

import androidx.annotation.NonNull;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class qb {
    private static final int OooO0O0;
    private static final int OooO0OO;
    private static final int OooO0Oo;
    private static final ThreadFactory OooO0o;
    private static final int OooO0o0 = 30;
    private ThreadPoolExecutor OooO00o;

    public class OooO00o implements ThreadFactory {
        private final AtomicInteger OoooOoO = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(runnable, "ThreadPoolProxy #" + this.OoooOoO.getAndIncrement());
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        OooO0O0 = iAvailableProcessors;
        OooO0OO = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        OooO0Oo = (iAvailableProcessors * 2) + 1;
        OooO0o = new OooO00o();
    }

    public qb() {
        OooO0O0();
    }

    private void OooO0O0() {
        ThreadPoolExecutor threadPoolExecutor = this.OooO00o;
        if (threadPoolExecutor == null || threadPoolExecutor.isShutdown() || this.OooO00o.isTerminated()) {
            synchronized (qb.class) {
                ThreadPoolExecutor threadPoolExecutor2 = this.OooO00o;
                if (threadPoolExecutor2 == null || threadPoolExecutor2.isShutdown() || this.OooO00o.isTerminated()) {
                    this.OooO00o = new ThreadPoolExecutor(OooO0OO, OooO0Oo, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(10), OooO0o, new ThreadPoolExecutor.AbortPolicy());
                }
            }
        }
    }

    public void OooO00o(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        this.OooO00o.execute(runnable);
    }

    public void OooO0OO(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        this.OooO00o.remove(runnable);
    }
}

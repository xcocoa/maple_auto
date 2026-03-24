package z2;

import android.app.Activity;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class pv {
    private static final int OooO0Oo = 300;
    private final Activity OooO0O0;
    private final ScheduledExecutorService OooO00o = Executors.newSingleThreadScheduledExecutor(new OooO0O0());
    private ScheduledFuture<?> OooO0OO = null;

    public static final class OooO0O0 implements ThreadFactory {
        private OooO0O0() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            return thread;
        }
    }

    public pv(Activity activity) {
        this.OooO0O0 = activity;
        OooO0O0();
    }

    private void OooO00o() {
        ScheduledFuture<?> scheduledFuture = this.OooO0OO;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.OooO0OO = null;
        }
    }

    public void OooO0O0() {
        OooO00o();
        this.OooO0OO = this.OooO00o.schedule(new ov(this.OooO0O0), 300L, TimeUnit.SECONDS);
    }

    public void OooO0OO() {
        OooO00o();
        this.OooO00o.shutdown();
    }
}

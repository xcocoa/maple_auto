package z2;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class oO0 implements ExecutorService {
    private static final int OooO = 4;
    private static final String OooO0O0 = "source";
    private static final String OooO0OO = "disk-cache";
    private static final int OooO0Oo = 1;
    private static final String OooO0o = "source-unlimited";
    private static final String OooO0o0 = "GlideExecutor";
    private static final String OooO0oO = "animation";
    private static final long OooO0oo = TimeUnit.SECONDS.toMillis(10);
    private static volatile int OooOO0;
    private final ExecutorService OooO00o;

    public static final class OooO00o implements ThreadFactory {
        private static final int OooooO0 = 9;
        private final String OoooOoO;
        public final OooO0O0 OoooOoo;
        public final boolean Ooooo00;
        private int Ooooo0o;

        /* JADX INFO: renamed from: z2.oO0$OooO00o$OooO00o, reason: collision with other inner class name */
        public class C0255OooO00o extends Thread {
            public C0255OooO00o(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (OooO00o.this.Ooooo00) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    OooO00o.this.OoooOoo.OooO00o(th);
                }
            }
        }

        public OooO00o(String str, OooO0O0 oooO0O0, boolean z) {
            this.OoooOoO = str;
            this.OoooOoo = oooO0O0;
            this.Ooooo00 = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(@NonNull Runnable runnable) {
            C0255OooO00o c0255OooO00o;
            c0255OooO00o = new C0255OooO00o(runnable, "glide-" + this.OoooOoO + "-thread-" + this.Ooooo0o);
            this.Ooooo0o = this.Ooooo0o + 1;
            return c0255OooO00o;
        }
    }

    public interface OooO0O0 {
        public static final OooO0O0 OooO00o = new OooO00o();
        public static final OooO0O0 OooO0O0;
        public static final OooO0O0 OooO0OO;
        public static final OooO0O0 OooO0Oo;

        public class OooO00o implements OooO0O0 {
            @Override // z2.oO0.OooO0O0
            public void OooO00o(Throwable th) {
            }
        }

        /* JADX INFO: renamed from: z2.oO0$OooO0O0$OooO0O0, reason: collision with other inner class name */
        public class C0256OooO0O0 implements OooO0O0 {
            @Override // z2.oO0.OooO0O0
            public void OooO00o(Throwable th) {
                if (th == null || !Log.isLoggable(oO0.OooO0o0, 6)) {
                    return;
                }
                Log.e(oO0.OooO0o0, "Request threw uncaught throwable", th);
            }
        }

        public class OooO0OO implements OooO0O0 {
            @Override // z2.oO0.OooO0O0
            public void OooO00o(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        }

        static {
            C0256OooO0O0 c0256OooO0O0 = new C0256OooO0O0();
            OooO0O0 = c0256OooO0O0;
            OooO0OO = new OooO0OO();
            OooO0Oo = c0256OooO0O0;
        }

        void OooO00o(Throwable th);
    }

    @VisibleForTesting
    public oO0(ExecutorService executorService) {
        this.OooO00o = executorService;
    }

    public static oO0 OooO(OooO0O0 oooO0O0) {
        return OooO0oo(OooO00o(), OooO0O0, oooO0O0);
    }

    public static int OooO00o() {
        if (OooOO0 == 0) {
            OooOO0 = Math.min(4, oO0O000.OooO00o());
        }
        return OooOO0;
    }

    public static oO0 OooO0O0() {
        return OooO0OO(OooO00o() >= 4 ? 2 : 1, OooO0O0.OooO0Oo);
    }

    public static oO0 OooO0OO(int i, OooO0O0 oooO0O0) {
        return new oO0(new ThreadPoolExecutor(0, i, OooO0oo, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new OooO00o(OooO0oO, oooO0O0, true)));
    }

    public static oO0 OooO0Oo() {
        return OooO0o0(1, OooO0OO, OooO0O0.OooO0Oo);
    }

    public static oO0 OooO0o(OooO0O0 oooO0O0) {
        return OooO0o0(1, OooO0OO, oooO0O0);
    }

    public static oO0 OooO0o0(int i, String str, OooO0O0 oooO0O0) {
        return new oO0(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new OooO00o(str, oooO0O0, true)));
    }

    public static oO0 OooO0oO() {
        return OooO0oo(OooO00o(), OooO0O0, OooO0O0.OooO0Oo);
    }

    public static oO0 OooO0oo(int i, String str, OooO0O0 oooO0O0) {
        return new oO0(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new OooO00o(str, oooO0O0, false)));
    }

    public static oO0 OooOO0() {
        return new oO0(new ThreadPoolExecutor(0, Integer.MAX_VALUE, OooO0oo, TimeUnit.MILLISECONDS, new SynchronousQueue(), new OooO00o(OooO0o, OooO0O0.OooO0Oo, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.OooO00o.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.OooO00o.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.OooO00o.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.OooO00o.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.OooO00o.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.OooO00o.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.OooO00o.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.OooO00o.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.OooO00o.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public List<Runnable> shutdownNow() {
        return this.OooO00o.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(@NonNull Runnable runnable) {
        return this.OooO00o.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> Future<T> submit(@NonNull Runnable runnable, T t) {
        return this.OooO00o.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.OooO00o.submit(callable);
    }

    public String toString() {
        return this.OooO00o.toString();
    }
}

package z2;

import java.lang.Thread;
import java.lang.management.ManagementFactory;
import java.lang.management.ThreadMXBean;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.junit.runners.model.MultipleFailureException;
import org.junit.runners.model.TestTimedOutException;

/* JADX INFO: loaded from: classes2.dex */
public class a80 extends w90 {
    private final w90 OooO00o;
    private final TimeUnit OooO0O0;
    private final long OooO0OO;
    private final boolean OooO0Oo;
    private volatile ThreadGroup OooO0o0;

    public static class OooO0O0 {
        private boolean OooO00o;
        private long OooO0O0;
        private TimeUnit OooO0OO;

        private OooO0O0() {
            this.OooO00o = false;
            this.OooO0O0 = 0L;
            this.OooO0OO = TimeUnit.SECONDS;
        }

        public a80 OooO0Oo(w90 w90Var) {
            Objects.requireNonNull(w90Var, "statement cannot be null");
            return new a80(this, w90Var);
        }

        public OooO0O0 OooO0o(long j, TimeUnit timeUnit) {
            if (j < 0) {
                throw new IllegalArgumentException("timeout must be non-negative");
            }
            Objects.requireNonNull(timeUnit, "TimeUnit cannot be null");
            this.OooO0O0 = j;
            this.OooO0OO = timeUnit;
            return this;
        }

        public OooO0O0 OooO0o0(boolean z) {
            this.OooO00o = z;
            return this;
        }
    }

    public class OooO0OO implements Callable<Throwable> {
        private final CountDownLatch OoooOoO;

        private OooO0OO() {
            this.OoooOoO = new CountDownLatch(1);
        }

        public void OooO00o() throws InterruptedException {
            this.OoooOoO.await();
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public Throwable call() throws Exception {
            try {
                this.OoooOoO.countDown();
                a80.this.OooO00o.OooO00o();
                return null;
            } catch (Exception e) {
                throw e;
            } catch (Throwable th) {
                return th;
            }
        }
    }

    private a80(OooO0O0 oooO0O0, w90 w90Var) {
        this.OooO0o0 = null;
        this.OooO00o = w90Var;
        this.OooO0OO = oooO0O0.OooO0O0;
        this.OooO0O0 = oooO0O0.OooO0OO;
        this.OooO0Oo = oooO0O0.OooO00o;
    }

    @Deprecated
    public a80(w90 w90Var, long j) {
        this(OooO0OO().OooO0o(j, TimeUnit.MILLISECONDS), w90Var);
    }

    private Thread OooO(Thread thread) {
        Thread[] threadArrOooOO0;
        if (this.OooO0o0 == null || (threadArrOooOO0 = OooOO0(this.OooO0o0)) == null) {
            return null;
        }
        long j = 0;
        Thread thread2 = null;
        for (Thread thread3 : threadArrOooOO0) {
            if (thread3.getState() == Thread.State.RUNNABLE) {
                long jOooO0o0 = OooO0o0(thread3);
                if (thread2 == null || jOooO0o0 > j) {
                    thread2 = thread3;
                    j = jOooO0o0;
                }
            }
        }
        if (thread2 == thread) {
            return null;
        }
        return thread2;
    }

    public static OooO0O0 OooO0OO() {
        return new OooO0O0();
    }

    private Thread[] OooO0Oo(Thread[] threadArr, int i) {
        int iMin = Math.min(i, threadArr.length);
        Thread[] threadArr2 = new Thread[iMin];
        for (int i2 = 0; i2 < iMin; i2++) {
            threadArr2[i2] = threadArr[i2];
        }
        return threadArr2;
    }

    private Exception OooO0o(Thread thread) {
        StackTraceElement[] stackTrace = thread.getStackTrace();
        Thread threadOooO = this.OooO0Oo ? OooO(thread) : null;
        TestTimedOutException testTimedOutException = new TestTimedOutException(this.OooO0OO, this.OooO0O0);
        if (stackTrace != null) {
            testTimedOutException.setStackTrace(stackTrace);
            thread.interrupt();
        }
        if (threadOooO == null) {
            return testTimedOutException;
        }
        Exception exc = new Exception("Appears to be stuck in thread " + threadOooO.getName());
        exc.setStackTrace(OooO0oo(threadOooO));
        return new MultipleFailureException(Arrays.asList(testTimedOutException, exc));
    }

    private long OooO0o0(Thread thread) {
        ThreadMXBean threadMXBean = ManagementFactory.getThreadMXBean();
        if (!threadMXBean.isThreadCpuTimeSupported()) {
            return 0L;
        }
        try {
            return threadMXBean.getThreadCpuTime(thread.getId());
        } catch (UnsupportedOperationException unused) {
            return 0L;
        }
    }

    private Throwable OooO0oO(FutureTask<Throwable> futureTask, Thread thread) {
        try {
            long j = this.OooO0OO;
            return j > 0 ? futureTask.get(j, this.OooO0O0) : futureTask.get();
        } catch (InterruptedException e) {
            return e;
        } catch (ExecutionException e2) {
            return e2.getCause();
        } catch (TimeoutException unused) {
            return OooO0o(thread);
        }
    }

    private StackTraceElement[] OooO0oo(Thread thread) {
        try {
            return thread.getStackTrace();
        } catch (SecurityException unused) {
            return new StackTraceElement[0];
        }
    }

    private Thread[] OooOO0(ThreadGroup threadGroup) {
        int iMax = Math.max(threadGroup.activeCount() * 2, 100);
        int i = 0;
        do {
            Thread[] threadArr = new Thread[iMax];
            int iEnumerate = threadGroup.enumerate(threadArr);
            if (iEnumerate < iMax) {
                return OooO0Oo(threadArr, iEnumerate);
            }
            iMax += 100;
            i++;
        } while (i < 5);
        return null;
    }

    @Override // z2.w90
    public void OooO00o() throws Throwable {
        OooO0OO oooO0OO = new OooO0OO();
        FutureTask<Throwable> futureTask = new FutureTask<>(oooO0OO);
        this.OooO0o0 = new ThreadGroup("FailOnTimeoutGroup");
        Thread thread = new Thread(this.OooO0o0, futureTask, "Time-limited test");
        thread.setDaemon(true);
        thread.start();
        oooO0OO.OooO00o();
        Throwable thOooO0oO = OooO0oO(futureTask, thread);
        if (thOooO0oO != null) {
            throw thOooO0oO;
        }
    }
}

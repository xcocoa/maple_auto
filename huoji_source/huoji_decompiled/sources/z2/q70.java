package z2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.junit.internal.AssumptionViolatedException;
import org.junit.internal.runners.FailedBefore;
import org.junit.runner.Description;
import org.junit.runner.notification.Failure;
import org.junit.runners.model.TestTimedOutException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class q70 {
    private final Object OooO00o;
    private final h90 OooO0O0;
    private final Description OooO0OO;
    private u70 OooO0Oo;

    public class OooO00o implements Runnable {
        public final /* synthetic */ long OoooOoO;

        /* JADX INFO: renamed from: z2.q70$OooO00o$OooO00o, reason: collision with other inner class name */
        public class CallableC0260OooO00o implements Callable<Object> {
            public CallableC0260OooO00o() {
            }

            @Override // java.util.concurrent.Callable
            public Object call() throws Exception {
                q70.this.OooO0oO();
                return null;
            }
        }

        public OooO00o(long j) {
            this.OoooOoO = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
            Future futureSubmit = executorServiceNewSingleThreadExecutor.submit(new CallableC0260OooO00o());
            executorServiceNewSingleThreadExecutor.shutdown();
            try {
                long j = this.OoooOoO;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                if (!executorServiceNewSingleThreadExecutor.awaitTermination(j, timeUnit)) {
                    executorServiceNewSingleThreadExecutor.shutdownNow();
                }
                futureSubmit.get(0L, timeUnit);
            } catch (TimeoutException unused) {
                q70.this.OooO00o(new TestTimedOutException(this.OoooOoO, TimeUnit.MILLISECONDS));
            } catch (Exception e) {
                q70.this.OooO00o(e);
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public OooO0O0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q70.this.OooO0oO();
        }
    }

    public q70(Object obj, u70 u70Var, h90 h90Var, Description description) {
        this.OooO00o = obj;
        this.OooO0O0 = h90Var;
        this.OooO0OO = description;
        this.OooO0Oo = u70Var;
    }

    private void OooO0OO() {
        Iterator<Method> it = this.OooO0Oo.OooO0O0().iterator();
        while (it.hasNext()) {
            try {
                it.next().invoke(this.OooO00o, new Object[0]);
            } catch (InvocationTargetException e) {
                th = e.getTargetException();
                OooO00o(th);
            } catch (Throwable th) {
                th = th;
                OooO00o(th);
            }
        }
    }

    private void OooO0Oo() throws FailedBefore {
        try {
            try {
                Iterator<Method> it = this.OooO0Oo.OooO0OO().iterator();
                while (it.hasNext()) {
                    it.next().invoke(this.OooO00o, new Object[0]);
                }
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            }
        } catch (AssumptionViolatedException unused) {
            throw new FailedBefore();
        } catch (Throwable th) {
            OooO00o(th);
            throw new FailedBefore();
        }
    }

    private void OooO0oo(long j) {
        OooO0o0(new OooO00o(j));
    }

    public void OooO00o(Throwable th) {
        this.OooO0O0.OooO0o(new Failure(this.OooO0OO, th));
    }

    public void OooO0O0() {
        if (this.OooO0Oo.OooO0oO()) {
            this.OooO0O0.OooO(this.OooO0OO);
            return;
        }
        this.OooO0O0.OooOO0o(this.OooO0OO);
        try {
            long jOooO0o0 = this.OooO0Oo.OooO0o0();
            if (jOooO0o0 > 0) {
                OooO0oo(jOooO0o0);
            } else {
                OooO0o();
            }
        } finally {
            this.OooO0O0.OooO0oo(this.OooO0OO);
        }
    }

    public void OooO0o() {
        OooO0o0(new OooO0O0());
    }

    public void OooO0o0(Runnable runnable) {
        try {
            try {
                OooO0Oo();
                runnable.run();
            } catch (FailedBefore unused) {
            } catch (Exception unused2) {
                throw new RuntimeException("test should never throw an exception to this level");
            }
        } finally {
            OooO0OO();
        }
    }

    public void OooO0oO() {
        try {
            this.OooO0Oo.OooO0o(this.OooO00o);
            if (this.OooO0Oo.OooO00o()) {
                OooO00o(new AssertionError("Expected exception: " + this.OooO0Oo.OooO0Oo().getName()));
            }
        } catch (InvocationTargetException e) {
            th = e.getTargetException();
            if (th instanceof AssumptionViolatedException) {
                return;
            }
            if (this.OooO0Oo.OooO00o()) {
                if (this.OooO0Oo.OooO0oo(th)) {
                    OooO00o(new Exception("Unexpected exception, expected<" + this.OooO0Oo.OooO0Oo().getName() + "> but was<" + th.getClass().getName() + ">", th));
                    return;
                }
                return;
            }
            OooO00o(th);
        } catch (Throwable th) {
            th = th;
            OooO00o(th);
        }
    }
}

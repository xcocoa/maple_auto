package z2;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public class n50 extends v80 {
    private final boolean OooO00o;
    private final boolean OooO0O0;

    public static class OooO00o implements v90 {
        private final ExecutorService OooO00o = Executors.newCachedThreadPool();

        @Override // z2.v90
        public void OooO00o(Runnable runnable) {
            this.OooO00o.submit(runnable);
        }

        @Override // z2.v90
        public void OooO0O0() {
            try {
                this.OooO00o.shutdown();
                this.OooO00o.awaitTermination(Long.MAX_VALUE, TimeUnit.NANOSECONDS);
            } catch (InterruptedException e) {
                e.printStackTrace(System.err);
            }
        }
    }

    public n50(boolean z, boolean z3) {
        this.OooO00o = z;
        this.OooO0O0 = z3;
    }

    public static v80 OooO0Oo() {
        return new n50(true, false);
    }

    private static b90 OooO0o(b90 b90Var) {
        if (b90Var instanceof n90) {
            ((n90) b90Var).OooOo(new OooO00o());
        }
        return b90Var;
    }

    public static v80 OooO0o0() {
        return new n50(false, true);
    }

    @Override // z2.v80
    public b90 OooO00o(u90 u90Var, Class<?> cls) throws Throwable {
        b90 b90VarOooO00o = super.OooO00o(u90Var, cls);
        return this.OooO0O0 ? OooO0o(b90VarOooO00o) : b90VarOooO00o;
    }

    @Override // z2.v80
    public b90 OooO0O0(u90 u90Var, Class<?>[] clsArr) throws InitializationError {
        b90 b90VarOooO0O0 = super.OooO0O0(u90Var, clsArr);
        return this.OooO00o ? OooO0o(b90VarOooO0O0) : b90VarOooO0O0;
    }
}

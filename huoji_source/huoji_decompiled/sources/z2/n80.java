package z2;

import java.util.concurrent.TimeUnit;
import org.junit.AssumptionViolatedException;
import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n80 implements q80 {
    private final OooO0O0 OooO00o;
    private volatile long OooO0O0;
    private volatile long OooO0OO;

    public static class OooO0O0 {
        public long OooO00o() {
            return System.nanoTime();
        }
    }

    public class OooO0OO extends r80 {
        private OooO0OO() {
        }

        @Override // z2.r80
        public void OooO(Description description) {
            n80 n80Var = n80.this;
            n80Var.OooO0o(n80Var.OooO0oO(), description);
        }

        @Override // z2.r80
        public void OooO0oO(Throwable th, Description description) {
            n80.this.OooOO0O();
            n80 n80Var = n80.this;
            n80Var.OooO0o0(n80Var.OooO0oO(), th, description);
        }

        @Override // z2.r80
        public void OooOO0O(AssumptionViolatedException assumptionViolatedException, Description description) {
            n80.this.OooOO0O();
            n80 n80Var = n80.this;
            n80Var.OooO(n80Var.OooO0oO(), assumptionViolatedException, description);
        }

        @Override // z2.r80
        public void OooOOO(Description description) {
            n80.this.OooOO0();
        }

        @Override // z2.r80
        public void OooOOOo(Description description) {
            n80.this.OooOO0O();
            n80 n80Var = n80.this;
            n80Var.OooOO0o(n80Var.OooO0oO(), description);
        }
    }

    public n80() {
        this(new OooO0O0());
    }

    public n80(OooO0O0 oooO0O0) {
        this.OooO00o = oooO0O0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long OooO0oO() {
        if (this.OooO0O0 == 0) {
            throw new IllegalStateException("Test has not started");
        }
        long jOooO00o = this.OooO0OO;
        if (jOooO00o == 0) {
            jOooO00o = this.OooO00o.OooO00o();
        }
        return jOooO00o - this.OooO0O0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOO0() {
        this.OooO0O0 = this.OooO00o.OooO00o();
        this.OooO0OO = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOO0O() {
        this.OooO0OO = this.OooO00o.OooO00o();
    }

    public void OooO(long j, AssumptionViolatedException assumptionViolatedException, Description description) {
    }

    @Override // z2.q80
    public final w90 OooO00o(w90 w90Var, Description description) {
        return new OooO0OO().OooO00o(w90Var, description);
    }

    public void OooO0o(long j, Description description) {
    }

    public void OooO0o0(long j, Throwable th, Description description) {
    }

    public long OooO0oo(TimeUnit timeUnit) {
        return timeUnit.convert(OooO0oO(), TimeUnit.NANOSECONDS);
    }

    public void OooOO0o(long j, Description description) {
    }
}

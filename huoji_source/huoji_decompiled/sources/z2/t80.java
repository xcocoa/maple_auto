package z2;

import java.util.concurrent.TimeUnit;
import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public class t80 implements q80 {
    private final long OooO00o;
    private final TimeUnit OooO0O0;
    private final boolean OooO0OO;

    public class OooO00o extends w90 {
        public final /* synthetic */ Exception OooO00o;

        public OooO00o(Exception exc) {
            this.OooO00o = exc;
        }

        @Override // z2.w90
        public void OooO00o() throws Throwable {
            throw new RuntimeException("Invalid parameters for Timeout", this.OooO00o);
        }
    }

    public static class OooO0O0 {
        private boolean OooO00o = false;
        private long OooO0O0 = 0;
        private TimeUnit OooO0OO = TimeUnit.SECONDS;

        public t80 OooO00o() {
            return new t80(this);
        }

        public boolean OooO0O0() {
            return this.OooO00o;
        }

        public TimeUnit OooO0OO() {
            return this.OooO0OO;
        }

        public long OooO0Oo() {
            return this.OooO0O0;
        }

        public OooO0O0 OooO0o(long j, TimeUnit timeUnit) {
            this.OooO0O0 = j;
            this.OooO0OO = timeUnit;
            return this;
        }

        public OooO0O0 OooO0o0(boolean z) {
            this.OooO00o = z;
            return this;
        }
    }

    @Deprecated
    public t80(int i) {
        this(i, TimeUnit.MILLISECONDS);
    }

    public t80(long j, TimeUnit timeUnit) {
        this.OooO00o = j;
        this.OooO0O0 = timeUnit;
        this.OooO0OO = false;
    }

    public t80(OooO0O0 oooO0O0) {
        this.OooO00o = oooO0O0.OooO0Oo();
        this.OooO0O0 = oooO0O0.OooO0OO();
        this.OooO0OO = oooO0O0.OooO0O0();
    }

    public static OooO0O0 OooO0O0() {
        return new OooO0O0();
    }

    public static t80 OooO0o(long j) {
        return new t80(j, TimeUnit.MILLISECONDS);
    }

    public static t80 OooO0oO(long j) {
        return new t80(j, TimeUnit.SECONDS);
    }

    @Override // z2.q80
    public w90 OooO00o(w90 w90Var, Description description) {
        try {
            return OooO0OO(w90Var);
        } catch (Exception e) {
            return new OooO00o(e);
        }
    }

    public w90 OooO0OO(w90 w90Var) throws Exception {
        return a80.OooO0OO().OooO0o(this.OooO00o, this.OooO0O0).OooO0o0(this.OooO0OO).OooO0Oo(w90Var);
    }

    public final boolean OooO0Oo() {
        return this.OooO0OO;
    }

    public final long OooO0o0(TimeUnit timeUnit) {
        return timeUnit.convert(this.OooO00o, this.OooO0O0);
    }
}

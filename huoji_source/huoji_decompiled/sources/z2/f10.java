package z2;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class f10 {
    public static final f10 OooO0Oo = new OooO00o();
    private boolean OooO00o;
    private long OooO0O0;
    private long OooO0OO;

    public class OooO00o extends f10 {
        @Override // z2.f10
        public f10 OooO0o0(long j) {
            return this;
        }

        @Override // z2.f10
        public void OooO0oO() throws IOException {
        }

        @Override // z2.f10
        public f10 OooO0oo(long j, TimeUnit timeUnit) {
            return this;
        }
    }

    public long OooO() {
        return this.OooO0OO;
    }

    public f10 OooO00o() {
        this.OooO00o = false;
        return this;
    }

    public f10 OooO0O0() {
        this.OooO0OO = 0L;
        return this;
    }

    public final f10 OooO0OO(long j, TimeUnit timeUnit) {
        if (j > 0) {
            if (timeUnit != null) {
                return OooO0o0(System.nanoTime() + timeUnit.toNanos(j));
            }
            throw new IllegalArgumentException("unit == null");
        }
        throw new IllegalArgumentException("duration <= 0: " + j);
    }

    public long OooO0Oo() {
        if (this.OooO00o) {
            return this.OooO0O0;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean OooO0o() {
        return this.OooO00o;
    }

    public f10 OooO0o0(long j) {
        this.OooO00o = true;
        this.OooO0O0 = j;
        return this;
    }

    public void OooO0oO() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.OooO00o && this.OooO0O0 - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public f10 OooO0oo(long j, TimeUnit timeUnit) {
        if (j >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.OooO0OO = timeUnit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j);
    }

    public final void OooOO0(Object obj) throws InterruptedIOException {
        try {
            boolean zOooO0o = OooO0o();
            long jOooO = OooO();
            long jNanoTime = 0;
            if (!zOooO0o && jOooO == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zOooO0o && jOooO != 0) {
                jOooO = Math.min(jOooO, OooO0Oo() - jNanoTime2);
            } else if (zOooO0o) {
                jOooO = OooO0Oo() - jNanoTime2;
            }
            if (jOooO > 0) {
                long j = jOooO / 1000000;
                Long.signum(j);
                obj.wait(j, (int) (jOooO - (1000000 * j)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jOooO) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }
}

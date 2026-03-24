package z2;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class h00 extends f10 {
    private static final long OooO;
    private static final int OooO0oo = 65536;
    private static final long OooOO0;

    @Nullable
    public static h00 OooOO0O;

    @Nullable
    private h00 OooO0o;
    private boolean OooO0o0;
    private long OooO0oO;

    public class OooO00o implements d10 {
        public final /* synthetic */ d10 OoooOoO;

        public OooO00o(d10 d10Var) {
            this.OoooOoO = d10Var;
        }

        @Override // z2.d10
        public void OooOooO(j00 j00Var, long j) throws IOException {
            h10.OooO0O0(j00Var.OoooOoo, 0L, j);
            while (true) {
                long j2 = 0;
                if (j <= 0) {
                    return;
                }
                b10 b10Var = j00Var.OoooOoO;
                while (true) {
                    if (j2 >= 65536) {
                        break;
                    }
                    j2 += (long) (b10Var.OooO0OO - b10Var.OooO0O0);
                    if (j2 >= j) {
                        j2 = j;
                        break;
                    }
                    b10Var = b10Var.OooO0o;
                }
                h00.this.OooOOO0();
                try {
                    try {
                        this.OoooOoO.OooOooO(j00Var, j2);
                        j -= j2;
                        h00.this.OooOOOO(true);
                    } catch (IOException e) {
                        throw h00.this.OooOOO(e);
                    }
                } catch (Throwable th) {
                    h00.this.OooOOOO(false);
                    throw th;
                }
            }
        }

        @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            h00.this.OooOOO0();
            try {
                try {
                    this.OoooOoO.close();
                    h00.this.OooOOOO(true);
                } catch (IOException e) {
                    throw h00.this.OooOOO(e);
                }
            } catch (Throwable th) {
                h00.this.OooOOOO(false);
                throw th;
            }
        }

        @Override // z2.d10, java.io.Flushable
        public void flush() throws IOException {
            h00.this.OooOOO0();
            try {
                try {
                    this.OoooOoO.flush();
                    h00.this.OooOOOO(true);
                } catch (IOException e) {
                    throw h00.this.OooOOO(e);
                }
            } catch (Throwable th) {
                h00.this.OooOOOO(false);
                throw th;
            }
        }

        @Override // z2.d10
        public f10 timeout() {
            return h00.this;
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.OoooOoO + ")";
        }
    }

    public class OooO0O0 implements e10 {
        public final /* synthetic */ e10 OoooOoO;

        public OooO0O0(e10 e10Var) {
            this.OoooOoO = e10Var;
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            try {
                try {
                    this.OoooOoO.close();
                    h00.this.OooOOOO(true);
                } catch (IOException e) {
                    throw h00.this.OooOOO(e);
                }
            } catch (Throwable th) {
                h00.this.OooOOOO(false);
                throw th;
            }
        }

        @Override // z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            h00.this.OooOOO0();
            try {
                try {
                    long j2 = this.OoooOoO.read(j00Var, j);
                    h00.this.OooOOOO(true);
                    return j2;
                } catch (IOException e) {
                    throw h00.this.OooOOO(e);
                }
            } catch (Throwable th) {
                h00.this.OooOOOO(false);
                throw th;
            }
        }

        @Override // z2.e10
        public f10 timeout() {
            return h00.this;
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.OoooOoO + ")";
        }
    }

    public static final class OooO0OO extends Thread {
        public OooO0OO() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0015, code lost:
        
            r1.OooOo0O();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            while (true) {
                synchronized (h00.class) {
                    h00 h00VarOooOO0O = h00.OooOO0O();
                    if (h00VarOooOO0O != null) {
                        if (h00VarOooOO0O == h00.OooOO0O) {
                            h00.OooOO0O = null;
                            return;
                        }
                    }
                }
            }
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        OooO = millis;
        OooOO0 = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    @Nullable
    public static h00 OooOO0O() throws InterruptedException {
        h00 h00Var = OooOO0O.OooO0o;
        long jNanoTime = System.nanoTime();
        if (h00Var == null) {
            h00.class.wait(OooO);
            if (OooOO0O.OooO0o != null || System.nanoTime() - jNanoTime < OooOO0) {
                return null;
            }
            return OooOO0O;
        }
        long jOooOOo = h00Var.OooOOo(jNanoTime);
        if (jOooOOo > 0) {
            long j = jOooOOo / 1000000;
            h00.class.wait(j, (int) (jOooOOo - (1000000 * j)));
            return null;
        }
        OooOO0O.OooO0o = h00Var.OooO0o;
        h00Var.OooO0o = null;
        return h00Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        r1.OooO0o = r3.OooO0o;
        r3.OooO0o = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
    
        r3 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static synchronized boolean OooOO0o(h00 h00Var) {
        boolean z;
        h00 h00Var2 = OooOO0O;
        while (true) {
            if (h00Var2 == null) {
                z = true;
                break;
            }
            h00 h00Var3 = h00Var2.OooO0o;
            if (h00Var3 == h00Var) {
                break;
            }
            h00Var2 = h00Var3;
        }
        return z;
    }

    private long OooOOo(long j) {
        return this.OooO0oO - j;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005a A[Catch: all -> 0x0065, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0016, B:10:0x0022, B:11:0x002b, B:16:0x003a, B:17:0x0040, B:19:0x0044, B:22:0x004d, B:23:0x0050, B:25:0x005a, B:15:0x0034, B:28:0x005f, B:29:0x0064), top: B:33:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static synchronized void OooOOoo(h00 h00Var, long j, boolean z) {
        h00 h00Var2;
        h00 h00Var3;
        if (OooOO0O == null) {
            OooOO0O = new h00();
            new OooO0OO().start();
        }
        long jNanoTime = System.nanoTime();
        if (j != 0 && z) {
            j = Math.min(j, h00Var.OooO0Oo() - jNanoTime);
        } else if (j == 0) {
            if (!z) {
                throw new AssertionError();
            }
            h00Var.OooO0oO = h00Var.OooO0Oo();
            long jOooOOo = h00Var.OooOOo(jNanoTime);
            h00Var2 = OooOO0O;
            while (true) {
                h00Var3 = h00Var2.OooO0o;
                if (h00Var3 != null || jOooOOo < h00Var3.OooOOo(jNanoTime)) {
                    break;
                } else {
                    h00Var2 = h00Var2.OooO0o;
                }
            }
            h00Var.OooO0o = h00Var2.OooO0o;
            h00Var2.OooO0o = h00Var;
            if (h00Var2 == OooOO0O) {
                h00.class.notify();
            }
        }
        h00Var.OooO0oO = j + jNanoTime;
        long jOooOOo2 = h00Var.OooOOo(jNanoTime);
        h00Var2 = OooOO0O;
        while (true) {
            h00Var3 = h00Var2.OooO0o;
            if (h00Var3 != null) {
                break;
                break;
            }
            h00Var2 = h00Var2.OooO0o;
        }
        h00Var.OooO0o = h00Var2.OooO0o;
        h00Var2.OooO0o = h00Var;
        if (h00Var2 == OooOO0O) {
        }
    }

    public final IOException OooOOO(IOException iOException) throws IOException {
        return !OooOOOo() ? iOException : OooOOo0(iOException);
    }

    public final void OooOOO0() {
        if (this.OooO0o0) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jOooO = OooO();
        boolean zOooO0o = OooO0o();
        if (jOooO != 0 || zOooO0o) {
            this.OooO0o0 = true;
            OooOOoo(this, jOooO, zOooO0o);
        }
    }

    public final void OooOOOO(boolean z) throws IOException {
        if (OooOOOo() && z) {
            throw OooOOo0(null);
        }
    }

    public final boolean OooOOOo() {
        if (!this.OooO0o0) {
            return false;
        }
        this.OooO0o0 = false;
        return OooOO0o(this);
    }

    public IOException OooOOo0(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final e10 OooOo0(e10 e10Var) {
        return new OooO0O0(e10Var);
    }

    public final d10 OooOo00(d10 d10Var) {
        return new OooO00o(d10Var);
    }

    public void OooOo0O() {
    }
}

package z2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class y00 {
    public final long OooO00o;
    public boolean OooO0OO;
    public boolean OooO0Oo;
    public final j00 OooO0O0 = new j00();
    private final d10 OooO0o0 = new OooO00o();
    private final e10 OooO0o = new OooO0O0();

    public final class OooO00o implements d10 {
        public final f10 OoooOoO = new f10();

        public OooO00o() {
        }

        @Override // z2.d10
        public void OooOooO(j00 j00Var, long j) throws IOException {
            synchronized (y00.this.OooO0O0) {
                if (y00.this.OooO0OO) {
                    throw new IllegalStateException("closed");
                }
                while (j > 0) {
                    y00 y00Var = y00.this;
                    if (y00Var.OooO0Oo) {
                        throw new IOException("source is closed");
                    }
                    long jO00000O0 = y00Var.OooO00o - y00Var.OooO0O0.o00000O0();
                    if (jO00000O0 == 0) {
                        this.OoooOoO.OooOO0(y00.this.OooO0O0);
                    } else {
                        long jMin = Math.min(jO00000O0, j);
                        y00.this.OooO0O0.OooOooO(j00Var, jMin);
                        j -= jMin;
                        y00.this.OooO0O0.notifyAll();
                    }
                }
            }
        }

        @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (y00.this.OooO0O0) {
                y00 y00Var = y00.this;
                if (y00Var.OooO0OO) {
                    return;
                }
                if (y00Var.OooO0Oo && y00Var.OooO0O0.o00000O0() > 0) {
                    throw new IOException("source is closed");
                }
                y00 y00Var2 = y00.this;
                y00Var2.OooO0OO = true;
                y00Var2.OooO0O0.notifyAll();
            }
        }

        @Override // z2.d10, java.io.Flushable
        public void flush() throws IOException {
            synchronized (y00.this.OooO0O0) {
                y00 y00Var = y00.this;
                if (y00Var.OooO0OO) {
                    throw new IllegalStateException("closed");
                }
                if (y00Var.OooO0Oo && y00Var.OooO0O0.o00000O0() > 0) {
                    throw new IOException("source is closed");
                }
            }
        }

        @Override // z2.d10
        public f10 timeout() {
            return this.OoooOoO;
        }
    }

    public final class OooO0O0 implements e10 {
        public final f10 OoooOoO = new f10();

        public OooO0O0() {
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            synchronized (y00.this.OooO0O0) {
                y00 y00Var = y00.this;
                y00Var.OooO0Oo = true;
                y00Var.OooO0O0.notifyAll();
            }
        }

        @Override // z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            synchronized (y00.this.OooO0O0) {
                if (y00.this.OooO0Oo) {
                    throw new IllegalStateException("closed");
                }
                while (y00.this.OooO0O0.o00000O0() == 0) {
                    y00 y00Var = y00.this;
                    if (y00Var.OooO0OO) {
                        return -1L;
                    }
                    this.OoooOoO.OooOO0(y00Var.OooO0O0);
                }
                long j2 = y00.this.OooO0O0.read(j00Var, j);
                y00.this.OooO0O0.notifyAll();
                return j2;
            }
        }

        @Override // z2.e10
        public f10 timeout() {
            return this.OoooOoO;
        }
    }

    public y00(long j) {
        if (j >= 1) {
            this.OooO00o = j;
            return;
        }
        throw new IllegalArgumentException("maxBufferSize < 1: " + j);
    }

    public final d10 OooO00o() {
        return this.OooO0o0;
    }

    public final e10 OooO0O0() {
        return this.OooO0o;
    }
}

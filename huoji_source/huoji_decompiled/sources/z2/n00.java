package z2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n00 implements d10 {
    private final d10 OoooOoO;

    public n00(d10 d10Var) {
        if (d10Var == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.OoooOoO = d10Var;
    }

    public final d10 OooOO0() {
        return this.OoooOoO;
    }

    @Override // z2.d10
    public void OooOooO(j00 j00Var, long j) throws IOException {
        this.OoooOoO.OooOooO(j00Var, j);
    }

    @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.OoooOoO.close();
    }

    @Override // z2.d10, java.io.Flushable
    public void flush() throws IOException {
        this.OoooOoO.flush();
    }

    @Override // z2.d10
    public f10 timeout() {
        return this.OoooOoO.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.OoooOoO.toString() + ")";
    }
}

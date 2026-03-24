package z2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p00 implements e10 {
    private final e10 delegate;

    public p00(e10 e10Var) {
        if (e10Var == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = e10Var;
    }

    @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() throws IOException {
        this.delegate.close();
    }

    public final e10 delegate() {
        return this.delegate;
    }

    @Override // z2.e10
    public long read(j00 j00Var, long j) throws IOException {
        return this.delegate.read(j00Var, j);
    }

    @Override // z2.e10
    public f10 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
    }
}

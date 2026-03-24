package z2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class gy extends n00 {
    private boolean OoooOoo;

    public gy(d10 d10Var) {
        super(d10Var);
    }

    @Override // z2.n00, z2.d10
    public void OooOooO(j00 j00Var, long j) throws IOException {
        if (this.OoooOoo) {
            j00Var.skip(j);
            return;
        }
        try {
            super.OooOooO(j00Var, j);
        } catch (IOException e) {
            this.OoooOoo = true;
            OooooOo(e);
        }
    }

    public void OooooOo(IOException iOException) {
    }

    @Override // z2.n00, z2.d10, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.OoooOoo) {
            return;
        }
        try {
            super.close();
        } catch (IOException e) {
            this.OoooOoo = true;
            OooooOo(e);
        }
    }

    @Override // z2.n00, z2.d10, java.io.Flushable
    public void flush() throws IOException {
        if (this.OoooOoo) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e) {
            this.OoooOoo = true;
            OooooOo(e);
        }
    }
}

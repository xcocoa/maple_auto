package z2;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: classes2.dex */
public final class r00 implements d10 {
    private final k00 OoooOoO;
    private final Deflater OoooOoo;
    private final m00 Ooooo00;
    private boolean Ooooo0o;
    private final CRC32 OooooO0 = new CRC32();

    public r00(d10 d10Var) {
        if (d10Var == null) {
            throw new IllegalArgumentException("sink == null");
        }
        Deflater deflater = new Deflater(-1, true);
        this.OoooOoo = deflater;
        k00 k00VarOooO0OO = w00.OooO0OO(d10Var);
        this.OoooOoO = k00VarOooO0OO;
        this.Ooooo00 = new m00(k00VarOooO0OO, deflater);
        Oooooo();
    }

    private void OooooOo(j00 j00Var, long j) {
        b10 b10Var = j00Var.OoooOoO;
        while (j > 0) {
            int iMin = (int) Math.min(j, b10Var.OooO0OO - b10Var.OooO0O0);
            this.OooooO0.update(b10Var.OooO00o, b10Var.OooO0O0, iMin);
            j -= (long) iMin;
            b10Var = b10Var.OooO0o;
        }
    }

    private void Oooooo() {
        j00 j00VarOooO00o = this.OoooOoO.OooO00o();
        j00VarOooO00o.OooO0o(8075);
        j00VarOooO00o.OooOOOO(8);
        j00VarOooO00o.OooOOOO(0);
        j00VarOooO00o.OooO0oo(0);
        j00VarOooO00o.OooOOOO(0);
        j00VarOooO00o.OooOOOO(0);
    }

    private void Oooooo0() throws IOException {
        this.OoooOoO.OooOOO0((int) this.OooooO0.getValue());
        this.OoooOoO.OooOOO0((int) this.OoooOoo.getBytesRead());
    }

    public final Deflater OooOO0() {
        return this.OoooOoo;
    }

    @Override // z2.d10
    public void OooOooO(j00 j00Var, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return;
        }
        OooooOo(j00Var, j);
        this.Ooooo00.OooOooO(j00Var, j);
    }

    @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.Ooooo0o) {
            return;
        }
        Throwable th = null;
        try {
            this.Ooooo00.OooooOo();
            Oooooo0();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.OoooOoo.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.OoooOoO.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.Ooooo0o = true;
        if (th != null) {
            h10.OooO0o(th);
        }
    }

    @Override // z2.d10, java.io.Flushable
    public void flush() throws IOException {
        this.Ooooo00.flush();
    }

    @Override // z2.d10
    public f10 timeout() {
        return this.OoooOoO.timeout();
    }
}

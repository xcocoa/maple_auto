package z2;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class v00 implements e10 {
    private final l00 OoooOoO;
    private final Inflater OoooOoo;
    private int Ooooo00;
    private boolean Ooooo0o;

    public v00(e10 e10Var, Inflater inflater) {
        this(w00.OooO0Oo(e10Var), inflater);
    }

    public v00(l00 l00Var, Inflater inflater) {
        if (l00Var == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.OoooOoO = l00Var;
        this.OoooOoo = inflater;
    }

    private void OooooOo() throws IOException {
        int i = this.Ooooo00;
        if (i == 0) {
            return;
        }
        int remaining = i - this.OoooOoo.getRemaining();
        this.Ooooo00 -= remaining;
        this.OoooOoO.skip(remaining);
    }

    public final boolean OooOO0() throws IOException {
        if (!this.OoooOoo.needsInput()) {
            return false;
        }
        OooooOo();
        if (this.OoooOoo.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.OoooOoO.OooOOO()) {
            return true;
        }
        b10 b10Var = this.OoooOoO.OooO00o().OoooOoO;
        int i = b10Var.OooO0OO;
        int i2 = b10Var.OooO0O0;
        int i3 = i - i2;
        this.Ooooo00 = i3;
        this.OoooOoo.setInput(b10Var.OooO00o, i2, i3);
        return false;
    }

    @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() throws IOException {
        if (this.Ooooo0o) {
            return;
        }
        this.OoooOoo.end();
        this.Ooooo0o = true;
        this.OoooOoO.close();
    }

    @Override // z2.e10
    public long read(j00 j00Var, long j) throws IOException {
        boolean zOooOO0;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.Ooooo0o) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return 0L;
        }
        do {
            zOooOO0 = OooOO0();
            try {
                b10 b10VarO00000Oo = j00Var.o00000Oo(1);
                int iInflate = this.OoooOoo.inflate(b10VarO00000Oo.OooO00o, b10VarO00000Oo.OooO0OO, (int) Math.min(j, 8192 - b10VarO00000Oo.OooO0OO));
                if (iInflate > 0) {
                    b10VarO00000Oo.OooO0OO += iInflate;
                    long j2 = iInflate;
                    j00Var.OoooOoo += j2;
                    return j2;
                }
                if (!this.OoooOoo.finished() && !this.OoooOoo.needsDictionary()) {
                }
                OooooOo();
                if (b10VarO00000Oo.OooO0O0 != b10VarO00000Oo.OooO0OO) {
                    return -1L;
                }
                j00Var.OoooOoO = b10VarO00000Oo.OooO0O0();
                c10.OooO00o(b10VarO00000Oo);
                return -1L;
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        } while (!zOooOO0);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // z2.e10
    public f10 timeout() {
        return this.OoooOoO.timeout();
    }
}

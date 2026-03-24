package z2;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes2.dex */
public final class m00 implements d10 {
    private final k00 OoooOoO;
    private final Deflater OoooOoo;
    private boolean Ooooo00;

    public m00(d10 d10Var, Deflater deflater) {
        this(w00.OooO0OO(d10Var), deflater);
    }

    public m00(k00 k00Var, Deflater deflater) {
        if (k00Var == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.OoooOoO = k00Var;
        this.OoooOoo = deflater;
    }

    @IgnoreJRERequirement
    private void OooOO0(boolean z) throws IOException {
        b10 b10VarO00000Oo;
        j00 j00VarOooO00o = this.OoooOoO.OooO00o();
        while (true) {
            b10VarO00000Oo = j00VarOooO00o.o00000Oo(1);
            Deflater deflater = this.OoooOoo;
            byte[] bArr = b10VarO00000Oo.OooO00o;
            int i = b10VarO00000Oo.OooO0OO;
            int i2 = 8192 - i;
            int iDeflate = z ? deflater.deflate(bArr, i, i2, 2) : deflater.deflate(bArr, i, i2);
            if (iDeflate > 0) {
                b10VarO00000Oo.OooO0OO += iDeflate;
                j00VarOooO00o.OoooOoo += (long) iDeflate;
                this.OoooOoO.OooOo0();
            } else if (this.OoooOoo.needsInput()) {
                break;
            }
        }
        if (b10VarO00000Oo.OooO0O0 == b10VarO00000Oo.OooO0OO) {
            j00VarOooO00o.OoooOoO = b10VarO00000Oo.OooO0O0();
            c10.OooO00o(b10VarO00000Oo);
        }
    }

    @Override // z2.d10
    public void OooOooO(j00 j00Var, long j) throws IOException {
        h10.OooO0O0(j00Var.OoooOoo, 0L, j);
        while (j > 0) {
            b10 b10Var = j00Var.OoooOoO;
            int iMin = (int) Math.min(j, b10Var.OooO0OO - b10Var.OooO0O0);
            this.OoooOoo.setInput(b10Var.OooO00o, b10Var.OooO0O0, iMin);
            OooOO0(false);
            long j2 = iMin;
            j00Var.OoooOoo -= j2;
            int i = b10Var.OooO0O0 + iMin;
            b10Var.OooO0O0 = i;
            if (i == b10Var.OooO0OO) {
                j00Var.OoooOoO = b10Var.OooO0O0();
                c10.OooO00o(b10Var);
            }
            j -= j2;
        }
    }

    public void OooooOo() throws IOException {
        this.OoooOoo.finish();
        OooOO0(false);
    }

    @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.Ooooo00) {
            return;
        }
        Throwable th = null;
        try {
            OooooOo();
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
        this.Ooooo00 = true;
        if (th != null) {
            h10.OooO0o(th);
        }
    }

    @Override // z2.d10, java.io.Flushable
    public void flush() throws IOException {
        OooOO0(true);
        this.OoooOoO.flush();
    }

    @Override // z2.d10
    public f10 timeout() {
        return this.OoooOoO.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.OoooOoO + ")";
    }
}

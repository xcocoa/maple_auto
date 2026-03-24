package z2;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class s00 implements e10 {
    private static final byte OooooOO = 1;
    private static final byte OooooOo = 2;
    private static final byte Oooooo = 4;
    private static final byte Oooooo0 = 3;
    private static final byte OoooooO = 0;
    private static final byte Ooooooo = 1;
    private static final byte o0OoOo0 = 2;
    private static final byte ooOO = 3;
    private final l00 OoooOoo;
    private final Inflater Ooooo00;
    private final v00 Ooooo0o;
    private int OoooOoO = 0;
    private final CRC32 OooooO0 = new CRC32();

    public s00(e10 e10Var) {
        if (e10Var == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.Ooooo00 = inflater;
        l00 l00VarOooO0Oo = w00.OooO0Oo(e10Var);
        this.OoooOoo = l00VarOooO0Oo;
        this.Ooooo0o = new v00(l00VarOooO0Oo, inflater);
    }

    private void OooOO0(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private void OooooOo() throws IOException {
        this.OoooOoo.OoooOo0(10L);
        byte bO00Oo0 = this.OoooOoo.OooO00o().o00Oo0(3L);
        boolean z = ((bO00Oo0 >> 1) & 1) == 1;
        if (z) {
            Oooooo(this.OoooOoo.OooO00o(), 0L, 10L);
        }
        OooOO0("ID1ID2", 8075, this.OoooOoo.readShort());
        this.OoooOoo.skip(8L);
        if (((bO00Oo0 >> 2) & 1) == 1) {
            this.OoooOoo.OoooOo0(2L);
            if (z) {
                Oooooo(this.OoooOoo.OooO00o(), 0L, 2L);
            }
            long jOoooO0O = this.OoooOoo.OooO00o().OoooO0O();
            this.OoooOoo.OoooOo0(jOoooO0O);
            if (z) {
                Oooooo(this.OoooOoo.OooO00o(), 0L, jOoooO0O);
            }
            this.OoooOoo.skip(jOoooO0O);
        }
        if (((bO00Oo0 >> 3) & 1) == 1) {
            long jOoooo00 = this.OoooOoo.Ooooo00((byte) 0);
            if (jOoooo00 == -1) {
                throw new EOFException();
            }
            if (z) {
                Oooooo(this.OoooOoo.OooO00o(), 0L, jOoooo00 + 1);
            }
            this.OoooOoo.skip(jOoooo00 + 1);
        }
        if (((bO00Oo0 >> 4) & 1) == 1) {
            long jOoooo002 = this.OoooOoo.Ooooo00((byte) 0);
            if (jOoooo002 == -1) {
                throw new EOFException();
            }
            if (z) {
                Oooooo(this.OoooOoo.OooO00o(), 0L, jOoooo002 + 1);
            }
            this.OoooOoo.skip(jOoooo002 + 1);
        }
        if (z) {
            OooOO0("FHCRC", this.OoooOoo.OoooO0O(), (short) this.OooooO0.getValue());
            this.OooooO0.reset();
        }
    }

    private void Oooooo(j00 j00Var, long j, long j2) {
        b10 b10Var = j00Var.OoooOoO;
        while (true) {
            int i = b10Var.OooO0OO;
            int i2 = b10Var.OooO0O0;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            b10Var = b10Var.OooO0o;
        }
        while (j2 > 0) {
            int i3 = (int) (((long) b10Var.OooO0O0) + j);
            int iMin = (int) Math.min(b10Var.OooO0OO - i3, j2);
            this.OooooO0.update(b10Var.OooO00o, i3, iMin);
            j2 -= (long) iMin;
            b10Var = b10Var.OooO0o;
            j = 0;
        }
    }

    private void Oooooo0() throws IOException {
        OooOO0("CRC", this.OoooOoo.Oooo0o0(), (int) this.OooooO0.getValue());
        OooOO0("ISIZE", this.OoooOoo.Oooo0o0(), (int) this.Ooooo00.getBytesWritten());
    }

    @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() throws IOException {
        this.Ooooo0o.close();
    }

    @Override // z2.e10
    public long read(j00 j00Var, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (this.OoooOoO == 0) {
            OooooOo();
            this.OoooOoO = 1;
        }
        if (this.OoooOoO == 1) {
            long j2 = j00Var.OoooOoo;
            long j3 = this.Ooooo0o.read(j00Var, j);
            if (j3 != -1) {
                Oooooo(j00Var, j2, j3);
                return j3;
            }
            this.OoooOoO = 2;
        }
        if (this.OoooOoO == 2) {
            Oooooo0();
            this.OoooOoO = 3;
            if (!this.OoooOoo.OooOOO()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // z2.e10
    public f10 timeout() {
        return this.OoooOoo.timeout();
    }
}

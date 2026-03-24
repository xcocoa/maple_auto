package z2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.http2.ErrorCode;
import z2.ez;

/* JADX INFO: loaded from: classes2.dex */
public final class kz implements Closeable {
    private static final Logger OooooOo = Logger.getLogger(fz.class.getName());
    private final k00 OoooOoO;
    private final boolean OoooOoo;
    private final j00 Ooooo00;
    private int Ooooo0o;
    private boolean OooooO0;
    public final ez.OooO0O0 OooooOO;

    public kz(k00 k00Var, boolean z) {
        this.OoooOoO = k00Var;
        this.OoooOoo = z;
        j00 j00Var = new j00();
        this.Ooooo00 = j00Var;
        this.OooooOO = new ez.OooO0O0(j00Var);
        this.Ooooo0o = 16384;
    }

    private void o0ooOO0(int i, long j) throws IOException {
        while (j > 0) {
            int iMin = (int) Math.min(this.Ooooo0o, j);
            long j2 = iMin;
            j -= j2;
            OoooooO(i, iMin, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.OoooOoO.OooOooO(this.Ooooo00, j2);
        }
    }

    private static void o0ooOOo(k00 k00Var, int i) throws IOException {
        k00Var.OooOOOO((i >>> 16) & 255);
        k00Var.OooOOOO((i >>> 8) & 255);
        k00Var.OooOOOO(i & 255);
    }

    public synchronized void OooOO0(nz nzVar) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        this.Ooooo0o = nzVar.OooO0oO(this.Ooooo0o);
        if (nzVar.OooO0Oo() != -1) {
            this.OooooOO.OooO0o0(nzVar.OooO0Oo());
        }
        OoooooO(0, 0, (byte) 4, (byte) 1);
        this.OoooOoO.flush();
    }

    public synchronized void OooooOo() throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        if (this.OoooOoo) {
            Logger logger = OooooOo;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(zx.OooOOoo(">> CONNECTION %s", fz.OooO00o.hex()));
            }
            this.OoooOoO.Oooo(fz.OooO00o.toByteArray());
            this.OoooOoO.flush();
        }
    }

    public void Oooooo(int i, byte b, j00 j00Var, int i2) throws IOException {
        OoooooO(i, i2, (byte) 0, b);
        if (i2 > 0) {
            this.OoooOoO.OooOooO(j00Var, i2);
        }
    }

    public synchronized void Oooooo0(boolean z, int i, j00 j00Var, int i2) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        Oooooo(i, z ? (byte) 1 : (byte) 0, j00Var, i2);
    }

    public void OoooooO(int i, int i2, byte b, byte b2) throws IOException {
        Logger logger = OooooOo;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(fz.OooO0O0(false, i, i2, b, b2));
        }
        int i3 = this.Ooooo0o;
        if (i2 > i3) {
            throw fz.OooO0OO("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            throw fz.OooO0OO("reserved bit set: %s", Integer.valueOf(i));
        }
        o0ooOOo(this.OoooOoO, i2);
        this.OoooOoO.OooOOOO(b & 255);
        this.OoooOoO.OooOOOO(b2 & 255);
        this.OoooOoO.OooO0oo(i & Integer.MAX_VALUE);
    }

    public synchronized void Ooooooo(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        if (errorCode.httpCode == -1) {
            throw fz.OooO0OO("errorCode.httpCode == -1", new Object[0]);
        }
        OoooooO(0, bArr.length + 8, (byte) 7, (byte) 0);
        this.OoooOoO.OooO0oo(i);
        this.OoooOoO.OooO0oo(errorCode.httpCode);
        if (bArr.length > 0) {
            this.OoooOoO.Oooo(bArr);
        }
        this.OoooOoO.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.OooooO0 = true;
        this.OoooOoO.close();
    }

    public synchronized void flush() throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        this.OoooOoO.flush();
    }

    public int o00O0O() {
        return this.Ooooo0o;
    }

    public synchronized void o00Oo0(boolean z, int i, int i2) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        OoooooO(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
        this.OoooOoO.OooO0oo(i);
        this.OoooOoO.OooO0oo(i2);
        this.OoooOoO.flush();
    }

    public synchronized void o00Ooo(int i, int i2, List<dz> list) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        this.OooooOO.OooO0oO(list);
        long jO00000O0 = this.Ooooo00.o00000O0();
        int iMin = (int) Math.min(this.Ooooo0o - 4, jO00000O0);
        long j = iMin;
        OoooooO(i, iMin + 4, (byte) 5, jO00000O0 == j ? (byte) 4 : (byte) 0);
        this.OoooOoO.OooO0oo(i2 & Integer.MAX_VALUE);
        this.OoooOoO.OooOooO(this.Ooooo00, j);
        if (jO00000O0 > j) {
            o0ooOO0(i, jO00000O0 - j);
        }
    }

    public synchronized void o00o0O(int i, ErrorCode errorCode) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        if (errorCode.httpCode == -1) {
            throw new IllegalArgumentException();
        }
        OoooooO(i, 4, (byte) 3, (byte) 0);
        this.OoooOoO.OooO0oo(errorCode.httpCode);
        this.OoooOoO.flush();
    }

    public synchronized void o00oO0O(int i, long j) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        if (j == 0 || j > 2147483647L) {
            throw fz.OooO0OO("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
        }
        OoooooO(i, 4, (byte) 8, (byte) 0);
        this.OoooOoO.OooO0oo((int) j);
        this.OoooOoO.flush();
    }

    public synchronized void o00oO0o(boolean z, int i, int i2, List<dz> list) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        ooOO(z, i, list);
    }

    public synchronized void o00ooo(nz nzVar) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        int i = 0;
        OoooooO(0, nzVar.OooOO0o() * 6, (byte) 4, (byte) 0);
        while (i < 10) {
            if (nzVar.OooO(i)) {
                this.OoooOoO.OooO0o(i == 4 ? 3 : i == 7 ? 4 : i);
                this.OoooOoO.OooO0oo(nzVar.OooO0O0(i));
            }
            i++;
        }
        this.OoooOoO.flush();
    }

    public synchronized void o0OoOo0(int i, List<dz> list) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        ooOO(false, i, list);
    }

    public synchronized void oo000o(boolean z, int i, List<dz> list) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        ooOO(z, i, list);
    }

    public void ooOO(boolean z, int i, List<dz> list) throws IOException {
        if (this.OooooO0) {
            throw new IOException("closed");
        }
        this.OooooOO.OooO0oO(list);
        long jO00000O0 = this.Ooooo00.o00000O0();
        int iMin = (int) Math.min(this.Ooooo0o, jO00000O0);
        long j = iMin;
        byte b = jO00000O0 == j ? (byte) 4 : (byte) 0;
        if (z) {
            b = (byte) (b | 1);
        }
        OoooooO(i, iMin, (byte) 1, b);
        this.OoooOoO.OooOooO(this.Ooooo00, j);
        if (jO00000O0 > j) {
            o0ooOO0(i, jO00000O0 - j);
        }
    }
}

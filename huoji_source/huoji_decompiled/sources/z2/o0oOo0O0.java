package z2;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class o0oOo0O0 extends OutputStream {

    @NonNull
    private final OutputStream OoooOoO;
    private byte[] OoooOoo;
    private oO0OOo0o Ooooo00;
    private int Ooooo0o;

    public o0oOo0O0(@NonNull OutputStream outputStream, @NonNull oO0OOo0o oo0ooo0o) {
        this(outputStream, oo0ooo0o, 65536);
    }

    @VisibleForTesting
    public o0oOo0O0(@NonNull OutputStream outputStream, oO0OOo0o oo0ooo0o, int i) {
        this.OoooOoO = outputStream;
        this.Ooooo00 = oo0ooo0o;
        this.OoooOoo = (byte[]) oo0ooo0o.OooO0o0(i, byte[].class);
    }

    private void OooOO0() throws IOException {
        int i = this.Ooooo0o;
        if (i > 0) {
            this.OoooOoO.write(this.OoooOoo, 0, i);
            this.Ooooo0o = 0;
        }
    }

    private void OooooOo() throws IOException {
        if (this.Ooooo0o == this.OoooOoo.length) {
            OooOO0();
        }
    }

    private void Oooooo0() {
        byte[] bArr = this.OoooOoo;
        if (bArr != null) {
            this.Ooooo00.put(bArr);
            this.OoooOoo = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.OoooOoO.close();
            Oooooo0();
        } catch (Throwable th) {
            this.OoooOoO.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        OooOO0();
        this.OoooOoO.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.OoooOoo;
        int i2 = this.Ooooo0o;
        this.Ooooo0o = i2 + 1;
        bArr[i2] = (byte) i;
        OooooOo();
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            int i6 = this.Ooooo0o;
            if (i6 == 0 && i4 >= this.OoooOoo.length) {
                this.OoooOoO.write(bArr, i5, i4);
                return;
            }
            int iMin = Math.min(i4, this.OoooOoo.length - i6);
            System.arraycopy(bArr, i5, this.OoooOoo, this.Ooooo0o, iMin);
            this.Ooooo0o += iMin;
            i3 += iMin;
            OooooOo();
        } while (i3 < i2);
    }
}

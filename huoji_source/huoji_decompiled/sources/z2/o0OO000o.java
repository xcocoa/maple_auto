package z2;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class o0OO000o extends FilterInputStream {
    private static final int Ooooo00 = 2;
    private static final byte[] Ooooo0o;
    private static final int OooooO0;
    private static final int OooooOO;
    private final byte OoooOoO;
    private int OoooOoo;

    static {
        byte[] bArr = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        Ooooo0o = bArr;
        int length = bArr.length;
        OooooO0 = length;
        OooooOO = length + 2;
    }

    public o0OO000o(InputStream inputStream, int i) {
        super(inputStream);
        if (i >= -1 && i <= 8) {
            this.OoooOoO = (byte) i;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i;
        int i2 = this.OoooOoo;
        int i3 = (i2 < 2 || i2 > (i = OooooOO)) ? super.read() : i2 == i ? this.OoooOoO : Ooooo0o[i2 - 2] & 255;
        if (i3 != -1) {
            this.OoooOoo++;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = this.OoooOoo;
        int i5 = OooooOO;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.OoooOoO;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int iMin = Math.min(i5 - i4, i2);
            System.arraycopy(Ooooo0o, this.OoooOoo - 2, bArr, i, iMin);
            i3 = iMin;
        }
        if (i3 > 0) {
            this.OoooOoo += i3;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = super.skip(j);
        if (jSkip > 0) {
            this.OoooOoo = (int) (((long) this.OoooOoo) + jSkip);
        }
        return jSkip;
    }
}

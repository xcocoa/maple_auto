package z2;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class p2 extends FilterInputStream {
    private static final int OoooOoo = Integer.MIN_VALUE;
    private static final int Ooooo00 = -1;
    private int OoooOoO;

    public p2(@NonNull InputStream inputStream) {
        super(inputStream);
        this.OoooOoO = Integer.MIN_VALUE;
    }

    private long OooOO0(long j) {
        int i = this.OoooOoO;
        if (i == 0) {
            return -1L;
        }
        return (i == Integer.MIN_VALUE || j <= ((long) i)) ? j : i;
    }

    private void OooooOo(long j) {
        int i = this.OoooOoO;
        if (i == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.OoooOoO = (int) (((long) i) - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i = this.OoooOoO;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        super.mark(i);
        this.OoooOoO = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (OooOO0(1L) == -1) {
            return -1;
        }
        int i = super.read();
        OooooOo(1L);
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int iOooOO0 = (int) OooOO0(i2);
        if (iOooOO0 == -1) {
            return -1;
        }
        int i3 = super.read(bArr, i, iOooOO0);
        OooooOo(i3);
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.OoooOoO = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jOooOO0 = OooOO0(j);
        if (jOooOO0 == -1) {
            return 0L;
        }
        long jSkip = super.skip(jOooOO0);
        OooooOo(jSkip);
        return jSkip;
    }
}

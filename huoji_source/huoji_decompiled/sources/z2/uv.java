package z2;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class uv extends InputStream {
    private InputStream OoooOoO;
    private int[] OoooOoo;
    private int Ooooo00 = 0;
    private boolean Ooooo0o = false;

    public uv(InputStream inputStream) {
        this.OoooOoO = inputStream;
    }

    private void OooOO0() throws IOException {
        int i;
        char[] cArr = new char[4];
        int i2 = 0;
        do {
            int i3 = this.OoooOoO.read();
            i = 1;
            if (i3 == -1) {
                if (i2 != 0) {
                    throw new IOException("Bad base64 stream");
                }
                this.OoooOoo = new int[0];
                this.Ooooo0o = true;
                return;
            }
            char c = (char) i3;
            if (wv.OooO00o.indexOf(c) != -1 || c == wv.OooO0O0) {
                cArr[i2] = c;
                i2++;
            } else if (c != '\r' && c != '\n') {
                throw new IOException("Bad base64 stream");
            }
        } while (i2 < 4);
        boolean z = false;
        for (int i4 = 0; i4 < 4; i4++) {
            if (cArr[i4] != wv.OooO0O0) {
                if (z) {
                    throw new IOException("Bad base64 stream");
                }
            } else if (!z) {
                z = true;
            }
        }
        if (cArr[3] != wv.OooO0O0) {
            i = 3;
        } else {
            if (this.OoooOoO.read() != -1) {
                throw new IOException("Bad base64 stream");
            }
            this.Ooooo0o = true;
            if (cArr[2] != wv.OooO0O0) {
                i = 2;
            }
        }
        int iIndexOf = 0;
        for (int i5 = 0; i5 < 4; i5++) {
            if (cArr[i5] != wv.OooO0O0) {
                iIndexOf |= wv.OooO00o.indexOf(cArr[i5]) << ((3 - i5) * 6);
            }
        }
        this.OoooOoo = new int[i];
        for (int i6 = 0; i6 < i; i6++) {
            this.OoooOoo[i6] = (iIndexOf >>> ((2 - i6) * 8)) & 255;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.OoooOoO.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int[] iArr = this.OoooOoo;
        if (iArr == null || this.Ooooo00 == iArr.length) {
            if (this.Ooooo0o) {
                return -1;
            }
            OooOO0();
            if (this.OoooOoo.length == 0) {
                this.OoooOoo = null;
                return -1;
            }
            this.Ooooo00 = 0;
        }
        int[] iArr2 = this.OoooOoo;
        int i = this.Ooooo00;
        this.Ooooo00 = i + 1;
        return iArr2[i];
    }
}

package mobi.oneway.export.g;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class c extends InputStream {
    private InputStream a;
    private int[] b;
    private int c = 0;
    private boolean d = false;

    public c(InputStream inputStream) {
        this.a = inputStream;
    }

    private void a() throws IOException {
        int i;
        char[] cArr = new char[4];
        int i2 = 0;
        do {
            int i3 = this.a.read();
            i = 1;
            if (i3 == -1) {
                if (i2 != 0) {
                    throw new IOException("Bad base64 stream");
                }
                this.b = new int[0];
                this.d = true;
                return;
            }
            char c = (char) i3;
            if (q.a.indexOf(c) != -1 || c == q.b) {
                cArr[i2] = c;
                i2++;
            } else if (c != '\r' && c != '\n') {
                throw new IOException("Bad base64 stream");
            }
        } while (i2 < 4);
        boolean z = false;
        for (int i4 = 0; i4 < 4; i4++) {
            if (cArr[i4] != q.b) {
                if (z) {
                    throw new IOException("Bad base64 stream");
                }
            } else if (!z) {
                z = true;
            }
        }
        if (cArr[3] != q.b) {
            i = 3;
        } else {
            if (this.a.read() != -1) {
                throw new IOException("Bad base64 stream");
            }
            this.d = true;
            if (cArr[2] != q.b) {
                i = 2;
            }
        }
        int iIndexOf = 0;
        for (int i5 = 0; i5 < 4; i5++) {
            if (cArr[i5] != q.b) {
                iIndexOf |= q.a.indexOf(cArr[i5]) << ((3 - i5) * 6);
            }
        }
        this.b = new int[i];
        for (int i6 = 0; i6 < i; i6++) {
            this.b[i6] = (iIndexOf >>> ((2 - i6) * 8)) & 255;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i;
        int[] iArr = this.b;
        if (iArr != null && (i = this.c) != iArr.length) {
            this.c = i + 1;
            return iArr[i];
        }
        if (this.d) {
            return -1;
        }
        a();
        int[] iArr2 = this.b;
        if (iArr2.length == 0) {
            this.b = null;
            return -1;
        }
        this.c = 0;
        this.c = 0 + 1;
        return iArr2[0];
    }
}

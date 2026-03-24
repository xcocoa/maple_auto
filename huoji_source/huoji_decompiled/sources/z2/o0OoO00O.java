package z2;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class o0OoO00O implements Closeable {
    private static final byte OooooOO = 13;
    private static final byte OooooOo = 10;
    private final InputStream OoooOoO;
    private final Charset OoooOoo;
    private byte[] Ooooo00;
    private int Ooooo0o;
    private int OooooO0;

    public class OooO00o extends ByteArrayOutputStream {
        public OooO00o(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            if (i > 0 && ((ByteArrayOutputStream) this).buf[i - 1] == 13) {
                i--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i, o0OoO00O.this.OoooOoo.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public o0OoO00O(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(o0O00O0o.OooO00o)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.OoooOoO = inputStream;
        this.OoooOoo = charset;
        this.Ooooo00 = new byte[i];
    }

    public o0OoO00O(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void OooooOo() throws IOException {
        InputStream inputStream = this.OoooOoO;
        byte[] bArr = this.Ooooo00;
        int i = inputStream.read(bArr, 0, bArr.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.Ooooo0o = 0;
        this.OooooO0 = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String Oooooo() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.OoooOoO) {
            if (this.Ooooo00 == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.Ooooo0o >= this.OooooO0) {
                OooooOo();
            }
            for (int i3 = this.Ooooo0o; i3 != this.OooooO0; i3++) {
                byte[] bArr2 = this.Ooooo00;
                if (bArr2[i3] == 10) {
                    if (i3 != this.Ooooo0o) {
                        i2 = i3 - 1;
                        if (bArr2[i2] != 13) {
                            i2 = i3;
                        }
                    }
                    byte[] bArr3 = this.Ooooo00;
                    int i4 = this.Ooooo0o;
                    String str = new String(bArr3, i4, i2 - i4, this.OoooOoo.name());
                    this.Ooooo0o = i3 + 1;
                    return str;
                }
            }
            OooO00o oooO00o = new OooO00o((this.OooooO0 - this.Ooooo0o) + 80);
            loop1: while (true) {
                byte[] bArr4 = this.Ooooo00;
                int i5 = this.Ooooo0o;
                oooO00o.write(bArr4, i5, this.OooooO0 - i5);
                this.OooooO0 = -1;
                OooooOo();
                i = this.Ooooo0o;
                while (i != this.OooooO0) {
                    bArr = this.Ooooo00;
                    if (bArr[i] == 10) {
                        break loop1;
                    }
                    i++;
                }
            }
            int i6 = this.Ooooo0o;
            if (i != i6) {
                oooO00o.write(bArr, i6, i - i6);
            }
            this.Ooooo0o = i + 1;
            return oooO00o.toString();
        }
    }

    public boolean Oooooo0() {
        return this.OooooO0 == -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.OoooOoO) {
            if (this.Ooooo00 != null) {
                this.Ooooo00 = null;
                this.OoooOoO.close();
            }
        }
    }
}

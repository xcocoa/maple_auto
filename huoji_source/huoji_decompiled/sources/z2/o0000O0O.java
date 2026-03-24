package z2;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class o0000O0O extends ByteArrayOutputStream {
    private static final int OoooOoo = 256;
    private final o0O0O00 OoooOoO;

    public o0000O0O(o0O0O00 o0o0o00) {
        this(o0o0o00, 256);
    }

    public o0000O0O(o0O0O00 o0o0o00, int i) {
        this.OoooOoO = o0o0o00;
        ((ByteArrayOutputStream) this).buf = o0o0o00.OooO00o(Math.max(i, 256));
    }

    private void OooOO0(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        byte[] bArrOooO00o = this.OoooOoO.OooO00o((i2 + i) * 2);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrOooO00o, 0, ((ByteArrayOutputStream) this).count);
        this.OoooOoO.OooO0O0(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = bArrOooO00o;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.OoooOoO.OooO0O0(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public void finalize() {
        this.OoooOoO.OooO0O0(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        OooOO0(1);
        super.write(i);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        OooOO0(i2);
        super.write(bArr, i, i2);
    }
}

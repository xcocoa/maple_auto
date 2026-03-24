package z2;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class o00O00O extends ByteArrayOutputStream {
    public o00O00O(int i) {
        super(i);
    }

    @Override // java.io.ByteArrayOutputStream
    public byte[] toByteArray() {
        int i = ((ByteArrayOutputStream) this).count;
        byte[] bArr = ((ByteArrayOutputStream) this).buf;
        return i == bArr.length ? bArr : super.toByteArray();
    }
}

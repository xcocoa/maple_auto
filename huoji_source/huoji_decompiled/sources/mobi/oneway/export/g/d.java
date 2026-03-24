package mobi.oneway.export.g;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class d extends OutputStream {
    private OutputStream a;
    private int b;
    private int c;
    private int d;
    private int e;

    public d(OutputStream outputStream) {
        this(outputStream, 76);
    }

    public d(OutputStream outputStream, int i) {
        this.a = null;
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.a = outputStream;
        this.e = i;
    }

    public void a() throws IOException {
        if (this.c <= 0) {
            return;
        }
        int i = this.e;
        if (i > 0 && this.d == i) {
            this.a.write(IOUtils.LINE_SEPARATOR_WINDOWS.getBytes("UTF-8"));
            this.d = 0;
        }
        char cCharAt = q.a.charAt((this.b << 8) >>> 26);
        char cCharAt2 = q.a.charAt((this.b << 14) >>> 26);
        char cCharAt3 = this.c < 2 ? q.b : q.a.charAt((this.b << 20) >>> 26);
        char cCharAt4 = this.c < 3 ? q.b : q.a.charAt((this.b << 26) >>> 26);
        this.a.write(cCharAt);
        this.a.write(cCharAt2);
        this.a.write(cCharAt3);
        this.a.write(cCharAt4);
        this.d += 4;
        this.c = 0;
        this.b = 0;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a();
        this.a.close();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        int i2 = this.c;
        this.b = ((i & 255) << (16 - (i2 * 8))) | this.b;
        int i3 = i2 + 1;
        this.c = i3;
        if (i3 == 3) {
            a();
        }
    }
}

package z2;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class vv extends OutputStream {
    private OutputStream OoooOoO;
    private int OoooOoo;
    private int Ooooo00;
    private int Ooooo0o;
    private int OooooO0;

    public vv(OutputStream outputStream) {
        this(outputStream, 76);
    }

    public vv(OutputStream outputStream, int i) {
        this.OoooOoO = null;
        this.OoooOoo = 0;
        this.Ooooo00 = 0;
        this.Ooooo0o = 0;
        this.OooooO0 = 0;
        this.OoooOoO = outputStream;
        this.OooooO0 = i;
    }

    public void OooOO0() throws IOException {
        if (this.Ooooo00 > 0) {
            int i = this.OooooO0;
            if (i > 0 && this.Ooooo0o == i) {
                this.OoooOoO.write(IOUtils.LINE_SEPARATOR_WINDOWS.getBytes());
                this.Ooooo0o = 0;
            }
            char cCharAt = wv.OooO00o.charAt((this.OoooOoo << 8) >>> 26);
            char cCharAt2 = wv.OooO00o.charAt((this.OoooOoo << 14) >>> 26);
            char cCharAt3 = this.Ooooo00 < 2 ? wv.OooO0O0 : wv.OooO00o.charAt((this.OoooOoo << 20) >>> 26);
            char cCharAt4 = this.Ooooo00 < 3 ? wv.OooO0O0 : wv.OooO00o.charAt((this.OoooOoo << 26) >>> 26);
            this.OoooOoO.write(cCharAt);
            this.OoooOoO.write(cCharAt2);
            this.OoooOoO.write(cCharAt3);
            this.OoooOoO.write(cCharAt4);
            this.Ooooo0o += 4;
            this.Ooooo00 = 0;
            this.OoooOoo = 0;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OooOO0();
        this.OoooOoO.close();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        int i2 = this.Ooooo00;
        this.OoooOoo = ((i & 255) << (16 - (i2 * 8))) | this.OoooOoo;
        int i3 = i2 + 1;
        this.Ooooo00 = i3;
        if (i3 == 3) {
            OooOO0();
        }
    }
}

package z2;

import android.net.LocalSocket;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class cg {
    private static final int OooO0Oo = 4096;
    private LocalSocket OooO00o;
    private InputStream OooO0O0;
    private OutputStream OooO0OO;

    public cg(LocalSocket localSocket) {
        this.OooO00o = null;
        this.OooO0O0 = null;
        this.OooO0OO = null;
        this.OooO00o = localSocket;
        try {
            this.OooO0O0 = localSocket.getInputStream();
            this.OooO0OO = this.OooO00o.getOutputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void OooO0Oo(byte[] bArr) {
        OooO0OO(ByteBuffer.wrap(bArr));
    }

    public final int OooO00o(byte[] bArr) {
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            try {
                i2 = this.OooO0O0.read(bArr, i, length - i);
                if (i2 < 0) {
                    return -1;
                }
                i += i2;
            } catch (IOException e) {
                e.printStackTrace();
                return -1;
            }
        }
        return i2;
    }

    public void OooO0O0() {
        try {
            LocalSocket localSocket = this.OooO00o;
            if (localSocket != null) {
                localSocket.close();
            }
            InputStream inputStream = this.OooO0O0;
            if (inputStream != null) {
                inputStream.close();
            }
            OutputStream outputStream = this.OooO0OO;
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final void OooO0OO(ByteBuffer byteBuffer) {
        try {
            byte[] bArr = new byte[4096];
            while (byteBuffer.hasRemaining()) {
                if (byteBuffer.remaining() >= 4096) {
                    byteBuffer.get(bArr);
                } else {
                    bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                }
                this.OooO0OO.write(bArr);
            }
            this.OooO0OO.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

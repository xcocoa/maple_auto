package z2;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class wu {
    public static final int OooO = 2;
    public static final int OooO00o = 24;
    public static final int OooO0O0 = 1129208147;
    public static final int OooO0OO = 1314410051;
    public static final int OooO0Oo = 16777216;
    public static byte[] OooO0o = null;
    public static final int OooO0o0 = 4096;
    public static final int OooO0oO = 1213486401;
    public static final int OooO0oo = 1;
    public static final int OooOO0 = 3;
    public static final int OooOO0O = 1313165391;
    public static final int OooOO0o = 1497451343;
    public static final int OooOOO = 1163154007;
    public static final int OooOOO0 = 1163086915;

    public static final class OooO00o {
        public int OooO00o;
        public int OooO0O0;
        public int OooO0OO;
        public int OooO0Oo;
        public int OooO0o;
        public int OooO0o0;
        public byte[] OooO0oO;

        public static OooO00o OooO00o(InputStream inputStream) throws IOException {
            OooO00o oooO00o = new OooO00o();
            ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
            int i = 0;
            int i2 = 0;
            do {
                int i3 = inputStream.read(byteBufferOrder.array(), i2, 24 - i2);
                if (i3 < 0) {
                    throw new IOException("Stream closed");
                }
                i2 += i3;
            } while (i2 < 24);
            oooO00o.OooO00o = byteBufferOrder.getInt();
            oooO00o.OooO0O0 = byteBufferOrder.getInt();
            oooO00o.OooO0OO = byteBufferOrder.getInt();
            oooO00o.OooO0Oo = byteBufferOrder.getInt();
            oooO00o.OooO0o0 = byteBufferOrder.getInt();
            oooO00o.OooO0o = byteBufferOrder.getInt();
            int i4 = oooO00o.OooO0Oo;
            if (i4 != 0) {
                oooO00o.OooO0oO = new byte[i4];
                do {
                    int i5 = inputStream.read(oooO00o.OooO0oO, i, oooO00o.OooO0Oo - i);
                    if (i5 < 0) {
                        throw new IOException("Stream closed");
                    }
                    i += i5;
                } while (i < oooO00o.OooO0Oo);
            }
            return oooO00o;
        }
    }

    static {
        try {
            OooO0o = "host::\u0000".getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
        }
    }

    public static boolean OooO(OooO00o oooO00o) {
        if (oooO00o.OooO00o != (~oooO00o.OooO0o)) {
            return false;
        }
        return oooO00o.OooO0Oo == 0 || OooO0oo(oooO00o.OooO0oO) == oooO00o.OooO0o0;
    }

    public static byte[] OooO00o(int i, byte[] bArr) {
        return OooO0Oo(OooO0oO, i, 0, bArr);
    }

    public static byte[] OooO0O0(int i, int i2) {
        return OooO0Oo(OooOOO0, i, i2, null);
    }

    public static byte[] OooO0OO() {
        return OooO0Oo(OooO0OO, 16777216, 4096, OooO0o);
    }

    public static byte[] OooO0Oo(int i, int i2, int i3, byte[] bArr) {
        int iOooO0oo;
        ByteBuffer byteBufferOrder = (bArr != null ? ByteBuffer.allocate(bArr.length + 24) : ByteBuffer.allocate(24)).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(i);
        byteBufferOrder.putInt(i2);
        byteBufferOrder.putInt(i3);
        if (bArr != null) {
            byteBufferOrder.putInt(bArr.length);
            iOooO0oo = OooO0oo(bArr);
        } else {
            iOooO0oo = 0;
            byteBufferOrder.putInt(0);
        }
        byteBufferOrder.putInt(iOooO0oo);
        byteBufferOrder.putInt(~i);
        if (bArr != null) {
            byteBufferOrder.put(bArr);
        }
        return byteBufferOrder.array();
    }

    public static byte[] OooO0o(int i, int i2) {
        return OooO0Oo(OooOO0o, i, i2, null);
    }

    public static byte[] OooO0o0(int i, String str) throws UnsupportedEncodingException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(str.length() + 1);
        byteBufferAllocate.put(str.getBytes("UTF-8"));
        byteBufferAllocate.put((byte) 0);
        return OooO0Oo(OooOO0O, i, 0, byteBufferAllocate.array());
    }

    public static byte[] OooO0oO(int i, int i2, byte[] bArr) {
        return OooO0Oo(OooOOO, i, i2, bArr);
    }

    private static int OooO0oo(byte[] bArr) {
        int i = 0;
        for (int i2 : bArr) {
            if (i2 < 0) {
                i2 += 256;
            }
            i += i2;
        }
        return i;
    }
}

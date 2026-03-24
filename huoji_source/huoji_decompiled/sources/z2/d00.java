package z2;

import okio.ByteString;
import z2.j00;

/* JADX INFO: loaded from: classes2.dex */
public final class d00 {
    public static final int OooO = 127;
    public static final String OooO00o = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    public static final int OooO0O0 = 128;
    public static final int OooO0OO = 64;
    public static final int OooO0Oo = 32;
    public static final int OooO0o = 15;
    public static final int OooO0o0 = 16;
    public static final int OooO0oO = 8;
    public static final int OooO0oo = 128;
    public static final int OooOO0 = 0;
    public static final int OooOO0O = 1;
    public static final int OooOO0o = 2;
    public static final int OooOOO = 9;
    public static final int OooOOO0 = 8;
    public static final int OooOOOO = 10;
    public static final long OooOOOo = 125;
    public static final int OooOOo = 126;
    public static final long OooOOo0 = 123;
    public static final long OooOOoo = 65535;
    public static final int OooOo0 = 1001;
    public static final int OooOo00 = 127;
    public static final int OooOo0O = 1005;

    private d00() {
        throw new AssertionError("No instances.");
    }

    public static String OooO00o(String str) {
        return ByteString.encodeUtf8(str + OooO00o).sha1().base64();
    }

    public static String OooO0O0(int i) {
        StringBuilder sb;
        if (i < 1000 || i >= 5000) {
            sb = new StringBuilder();
            sb.append("Code must be in range [1000,5000): ");
            sb.append(i);
        } else {
            if ((i < 1004 || i > 1006) && (i < 1012 || i > 2999)) {
                return null;
            }
            sb = new StringBuilder();
            sb.append("Code ");
            sb.append(i);
            sb.append(" is reserved and may not be used.");
        }
        return sb.toString();
    }

    public static void OooO0OO(j00.OooO0OO oooO0OO, byte[] bArr) {
        int length = bArr.length;
        int i = 0;
        do {
            byte[] bArr2 = oooO0OO.OooooO0;
            int i2 = oooO0OO.OooooOO;
            int i3 = oooO0OO.OooooOo;
            while (i2 < i3) {
                int i4 = i % length;
                bArr2[i2] = (byte) (bArr2[i2] ^ bArr[i4]);
                i2++;
                i = i4 + 1;
            }
        } while (oooO0OO.OooooOo() != -1);
    }

    public static void OooO0Oo(int i) {
        String strOooO0O0 = OooO0O0(i);
        if (strOooO0O0 != null) {
            throw new IllegalArgumentException(strOooO0O0);
        }
    }
}

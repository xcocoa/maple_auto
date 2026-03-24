package z2;

import java.io.IOException;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class fz {
    public static final byte OooO = 6;
    public static final int OooO0O0 = 16384;
    public static final byte OooO0OO = 0;
    public static final byte OooO0Oo = 1;
    public static final byte OooO0o = 3;
    public static final byte OooO0o0 = 2;
    public static final byte OooO0oO = 4;
    public static final byte OooO0oo = 5;
    public static final byte OooOO0 = 7;
    public static final byte OooOO0O = 8;
    public static final byte OooOO0o = 9;
    public static final byte OooOOO = 1;
    public static final byte OooOOO0 = 0;
    public static final byte OooOOOO = 1;
    public static final byte OooOOOo = 4;
    public static final byte OooOOo = 8;
    public static final byte OooOOo0 = 4;
    public static final byte OooOOoo = 32;
    public static final byte OooOo00 = 32;
    public static final ByteString OooO00o = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    private static final String[] OooOo0 = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    public static final String[] OooOo0O = new String[64];
    public static final String[] OooOo0o = new String[256];

    static {
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = OooOo0o;
            if (i2 >= strArr.length) {
                break;
            }
            strArr[i2] = zx.OooOOoo("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
            i2++;
        }
        String[] strArr2 = OooOo0O;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i3 = 0; i3 < 1; i3++) {
            int i4 = iArr[i3];
            String[] strArr3 = OooOo0O;
            strArr3[i4 | 8] = strArr3[i4] + "|PADDED";
        }
        String[] strArr4 = OooOo0O;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i5 = 0; i5 < 3; i5++) {
            int i6 = iArr2[i5];
            for (int i7 = 0; i7 < 1; i7++) {
                int i8 = iArr[i7];
                String[] strArr5 = OooOo0O;
                int i9 = i8 | i6;
                strArr5[i9] = strArr5[i8] + '|' + strArr5[i6];
                strArr5[i9 | 8] = strArr5[i8] + '|' + strArr5[i6] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr6 = OooOo0O;
            if (i >= strArr6.length) {
                return;
            }
            if (strArr6[i] == null) {
                strArr6[i] = OooOo0o[i];
            }
            i++;
        }
    }

    private fz() {
    }

    public static String OooO00o(byte b, byte b2) {
        if (b2 == 0) {
            return "";
        }
        if (b != 2 && b != 3) {
            if (b == 4 || b == 6) {
                return b2 == 1 ? "ACK" : OooOo0o[b2];
            }
            if (b != 7 && b != 8) {
                String[] strArr = OooOo0O;
                String str = b2 < strArr.length ? strArr[b2] : OooOo0o[b2];
                return (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return OooOo0o[b2];
    }

    public static String OooO0O0(boolean z, int i, int i2, byte b, byte b2) {
        String[] strArr = OooOo0;
        String strOooOOoo = b < strArr.length ? strArr[b] : zx.OooOOoo("0x%02x", Byte.valueOf(b));
        String strOooO00o = OooO00o(b, b2);
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i);
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = strOooOOoo;
        objArr[4] = strOooO00o;
        return zx.OooOOoo("%s 0x%08x %5d %-13s %s", objArr);
    }

    public static IllegalArgumentException OooO0OO(String str, Object... objArr) {
        throw new IllegalArgumentException(zx.OooOOoo(str, objArr));
    }

    public static IOException OooO0Oo(String str, Object... objArr) throws IOException {
        throw new IOException(zx.OooOOoo(str, objArr));
    }
}

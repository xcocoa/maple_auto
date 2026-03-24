package z2;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class gu {
    public static byte[] OooO(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        int i = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            bArr2[i] = bArr[length];
            i++;
        }
        return bArr2;
    }

    public static byte[] OooO00o(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] OooO0O0(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr4, bArr.length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, bArr.length + bArr2.length, bArr3.length);
        return bArr4;
    }

    public static int OooO0OO(String str) {
        int iPow = 0;
        for (int length = str.length(); length > 0; length--) {
            iPow = (int) (((double) iPow) + (Math.pow(2.0d, r0 - length) * ((double) (str.charAt(length - 1) - '0'))));
        }
        return iPow;
    }

    public static String OooO0Oo(byte[] bArr) {
        String str = "";
        for (byte b : bArr) {
            str = str + ((char) b);
        }
        return str;
    }

    public static String OooO0o(byte... bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String binaryString = Integer.toBinaryString(b | 256);
            int length = binaryString.length();
            stringBuffer.append(binaryString.substring(length - 8, length));
        }
        return stringBuffer.toString();
    }

    public static String OooO0o0(byte[] bArr) {
        StringBuilder sb;
        if (bArr == null) {
            throw new IllegalArgumentException("Argument b ( byte array ) is null! ");
        }
        String string = "";
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb = new StringBuilder();
                sb.append(string);
                string = "0";
            } else {
                sb = new StringBuilder();
            }
            sb.append(string);
            sb.append(hexString);
            string = sb.toString();
        }
        return string.toUpperCase();
    }

    public static int OooO0oO(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int OooO0oo(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static String OooOO0(String str) {
        char[] charArray = str.toCharArray();
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((("0123456789ABCDEF".indexOf(charArray[i2]) * 16) + "0123456789ABCDEF".indexOf(charArray[i2 + 1])) & 255);
        }
        return new String(bArr);
    }

    public static int OooOO0O(String str) {
        String upperCase = str.toUpperCase();
        int iPow = 0;
        for (int length = upperCase.length(); length > 0; length--) {
            char cCharAt = upperCase.charAt(length - 1);
            iPow = (int) (((double) iPow) + (Math.pow(16.0d, r0 - length) * ((double) ((cCharAt < '0' || cCharAt > '9') ? cCharAt - '7' : cCharAt - '0'))));
        }
        return iPow;
    }

    public static byte[] OooOO0o(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static byte[] OooOOO(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    public static byte[] OooOOO0(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255)};
    }

    public static byte[] OooOOOO(int i, ByteOrder byteOrder) {
        byte[] bArr = new byte[4];
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            bArr[3] = (byte) ((i >> 24) & 255);
            bArr[2] = (byte) ((i >> 16) & 255);
            bArr[1] = (byte) ((i >> 8) & 255);
            bArr[0] = (byte) (i & 255);
        } else {
            bArr[0] = (byte) ((i >> 24) & 255);
            bArr[1] = (byte) ((i >> 16) & 255);
            bArr[2] = (byte) ((i >> 8) & 255);
            bArr[3] = (byte) (i & 255);
        }
        return bArr;
    }

    public static byte[] OooOOOo(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static String OooOOo(String str) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        StringBuilder sb = new StringBuilder("");
        byte[] bytes = str.getBytes();
        for (int i = 0; i < bytes.length; i++) {
            sb.append(charArray[(bytes[i] & 240) >> 4]);
            sb.append(charArray[bytes[i] & com.umeng.commonsdk.proguard.bg.m]);
            sb.append(' ');
        }
        return sb.toString().trim();
    }

    public static long OooOOo0(InputStream inputStream, long j) {
        byte[] bArr = new byte[2048];
        if (j <= 0) {
            return 0L;
        }
        long j2 = j;
        int i = 0;
        while (j2 > 0) {
            try {
                i = inputStream.read(bArr, 0, (int) Math.min(2048, j2));
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (i < 0) {
                break;
            }
            j2 -= (long) i;
        }
        return j - j2;
    }
}

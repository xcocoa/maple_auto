package z2;

import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.pdf417.encoder.Compaction;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class xs {
    private static final int OooO = 901;
    private static final int OooO00o = 0;
    private static final int OooO0O0 = 1;
    private static final int OooO0OO = 2;
    private static final int OooO0Oo = 0;
    private static final int OooO0o = 2;
    private static final int OooO0o0 = 1;
    private static final int OooO0oO = 3;
    private static final int OooO0oo = 900;
    private static final int OooOO0 = 902;
    private static final int OooOO0O = 913;
    private static final int OooOO0o = 924;
    private static final int OooOOO = 926;
    private static final int OooOOO0 = 925;
    private static final int OooOOOO = 927;
    private static final byte[] OooOOo;
    private static final byte[] OooOOOo = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, com.umeng.commonsdk.proguard.bg.k, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};
    private static final byte[] OooOOo0 = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, com.umeng.commonsdk.proguard.bg.k, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};
    private static final byte[] OooOOoo = new byte[128];
    private static final Charset OooOo00 = StandardCharsets.ISO_8859_1;

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[Compaction.values().length];
            OooO00o = iArr;
            try {
                iArr[Compaction.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[Compaction.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[Compaction.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        byte[] bArr = new byte[128];
        OooOOo = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr2 = OooOOOo;
            if (i2 >= bArr2.length) {
                break;
            }
            byte b = bArr2[i2];
            if (b > 0) {
                OooOOo[b] = (byte) i2;
            }
            i2++;
        }
        Arrays.fill(OooOOoo, (byte) -1);
        while (true) {
            byte[] bArr3 = OooOOo0;
            if (i >= bArr3.length) {
                return;
            }
            byte b2 = bArr3[i];
            if (b2 > 0) {
                OooOOoo[b2] = (byte) i;
            }
            i++;
        }
    }

    private xs() {
    }

    private static boolean OooO(char c) {
        if (c != ' ') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    private static int OooO00o(String str, int i, Charset charset) throws WriterException {
        int i2;
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        int length = str.length();
        int i3 = i;
        while (i3 < length) {
            char cCharAt = str.charAt(i3);
            int i4 = 0;
            while (i4 < 13 && OooOO0O(cCharAt) && (i2 = i3 + (i4 = i4 + 1)) < length) {
                cCharAt = str.charAt(i2);
            }
            if (i4 >= 13) {
                return i3 - i;
            }
            char cCharAt2 = str.charAt(i3);
            if (!charsetEncoderNewEncoder.canEncode(cCharAt2)) {
                throw new WriterException("Non-encodable character detected: " + cCharAt2 + " (Unicode: " + ((int) cCharAt2) + ')');
            }
            i3++;
        }
        return i3 - i;
    }

    private static int OooO0O0(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        if (i < length) {
            loop0: while (true) {
                char cCharAt = charSequence.charAt(i);
                while (OooOO0O(cCharAt) && i < length) {
                    i2++;
                    i++;
                    if (i < length) {
                        break;
                    }
                }
            }
        }
        return i2;
    }

    private static int OooO0OO(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = i;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            int i3 = 0;
            while (i3 < 13 && OooOO0O(cCharAt) && i2 < length) {
                i3++;
                i2++;
                if (i2 < length) {
                    cCharAt = charSequence.charAt(i2);
                }
            }
            if (i3 < 13) {
                if (i3 <= 0) {
                    if (!OooOOO(charSequence.charAt(i2))) {
                        break;
                    }
                    i2++;
                }
            } else {
                return (i2 - i) - i3;
            }
        }
        return i2 - i;
    }

    private static void OooO0Oo(byte[] bArr, int i, int i2, int i3, StringBuilder sb) {
        int i4;
        sb.append((i2 == 1 && i3 == 0) ? (char) 913 : i2 % 6 == 0 ? (char) 924 : (char) 901);
        if (i2 >= 6) {
            char[] cArr = new char[5];
            i4 = i;
            while ((i + i2) - i4 >= 6) {
                long j = 0;
                for (int i5 = 0; i5 < 6; i5++) {
                    j = (j << 8) + ((long) (bArr[i4 + i5] & 255));
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    cArr[i6] = (char) (j % 900);
                    j /= 900;
                }
                for (int i7 = 4; i7 >= 0; i7--) {
                    sb.append(cArr[i7]);
                }
                i4 += 6;
            }
        } else {
            i4 = i;
        }
        while (i4 < i + i2) {
            sb.append((char) (bArr[i4] & 255));
            i4++;
        }
    }

    private static void OooO0o(String str, int i, int i2, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i2 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i3 = 0;
        while (i3 < i2) {
            sb2.setLength(0);
            int iMin = Math.min(44, i2 - i3);
            StringBuilder sb3 = new StringBuilder("1");
            int i4 = i + i3;
            sb3.append(str.substring(i4, i4 + iMin));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i3 += iMin;
        }
    }

    public static String OooO0o0(String str, Compaction compaction, Charset charset) throws WriterException {
        CharacterSetECI characterSetECIByName;
        int iOooO0O0;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset = OooOo00;
        } else if (!OooOo00.equals(charset) && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(charset.name())) != null) {
            OooO0oo(characterSetECIByName.getValue(), sb);
        }
        int length = str.length();
        int i = OooO00o.OooO00o[compaction.ordinal()];
        if (i == 1) {
            OooO0oO(str, 0, length, sb, 0);
        } else if (i == 2) {
            byte[] bytes = str.getBytes(charset);
            OooO0Oo(bytes, 0, bytes.length, 1, sb);
        } else if (i != 3) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                int iOooO0oO = 0;
                while (i2 < length) {
                    iOooO0O0 = OooO0O0(str, i2);
                    if (iOooO0O0 >= 13) {
                        break;
                    }
                    int iOooO0OO = OooO0OO(str, i2);
                    if (iOooO0OO >= 5 || iOooO0O0 == length) {
                        if (i3 != 0) {
                            sb.append((char) 900);
                            i3 = 0;
                            iOooO0oO = 0;
                        }
                        iOooO0oO = OooO0oO(str, i2, iOooO0OO, sb, iOooO0oO);
                        i2 += iOooO0OO;
                    } else {
                        int iOooO00o = OooO00o(str, i2, charset);
                        if (iOooO00o == 0) {
                            iOooO00o = 1;
                        }
                        int i4 = iOooO00o + i2;
                        byte[] bytes2 = str.substring(i2, i4).getBytes(charset);
                        if (bytes2.length == 1 && i3 == 0) {
                            OooO0Oo(bytes2, 0, 1, 0, sb);
                        } else {
                            OooO0Oo(bytes2, 0, bytes2.length, i3, sb);
                            i3 = 1;
                            iOooO0oO = 0;
                        }
                        i2 = i4;
                    }
                }
                sb.append((char) 902);
                OooO0o(str, i2, iOooO0O0, sb);
                i2 += iOooO0O0;
                i3 = 2;
            }
        } else {
            sb.append((char) 902);
            OooO0o(str, 0, length, sb);
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a0, code lost:
    
        if (r10 == ' ') goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00cf A[EDGE_INSN: B:77:0x00cf->B:56:0x00cf BREAK  A[LOOP:0: B:3:0x0011->B:94:0x0011], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int OooO0oO(CharSequence charSequence, int i, int i2, StringBuilder sb, int i3) {
        byte b;
        int i4;
        char c;
        StringBuilder sb2 = new StringBuilder(i2);
        int i5 = i3;
        int i6 = 0;
        while (true) {
            int i7 = i + i6;
            char cCharAt = charSequence.charAt(i7);
            if (i5 != 0) {
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (OooOOO0(cCharAt)) {
                            b = OooOOoo[cCharAt];
                        } else {
                            sb2.append((char) 29);
                            i5 = 0;
                        }
                    } else if (OooOO0o(cCharAt)) {
                        b = OooOOo[cCharAt];
                    } else if (OooOO0(cCharAt)) {
                        sb2.append((char) 28);
                        i5 = 0;
                    } else if (OooO(cCharAt)) {
                        sb2.append((char) 27);
                        i5 = 1;
                    } else {
                        int i8 = i7 + 1;
                        if (i8 >= i2 || !OooOOO0(charSequence.charAt(i8))) {
                            sb2.append((char) 29);
                            b = OooOOoo[cCharAt];
                        } else {
                            i5 = 3;
                            sb2.append((char) 25);
                        }
                    }
                    i6++;
                    if (i6 < i2) {
                        break;
                    }
                } else if (OooO(cCharAt)) {
                    if (cCharAt != ' ') {
                        i4 = cCharAt - 'a';
                        c = (char) i4;
                        sb2.append(c);
                        i6++;
                        if (i6 < i2) {
                        }
                    }
                    sb2.append((char) 26);
                    i6++;
                    if (i6 < i2) {
                    }
                } else if (OooOO0(cCharAt)) {
                    sb2.append((char) 27);
                    i4 = cCharAt - 'A';
                    c = (char) i4;
                    sb2.append(c);
                    i6++;
                    if (i6 < i2) {
                    }
                } else if (OooOO0o(cCharAt)) {
                    sb2.append((char) 28);
                    i5 = 2;
                } else {
                    sb2.append((char) 29);
                    b = OooOOoo[cCharAt];
                }
                c = (char) b;
                sb2.append(c);
                i6++;
                if (i6 < i2) {
                }
            } else if (!OooOO0(cCharAt)) {
                if (OooO(cCharAt)) {
                    sb2.append((char) 27);
                    i5 = 1;
                } else if (OooOO0o(cCharAt)) {
                    sb2.append((char) 28);
                    i5 = 2;
                } else {
                    sb2.append((char) 29);
                    b = OooOOoo[cCharAt];
                    c = (char) b;
                    sb2.append(c);
                    i6++;
                    if (i6 < i2) {
                    }
                }
            }
        }
        int length = sb2.length();
        char cCharAt2 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            if (i9 % 2 != 0) {
                cCharAt2 = (char) ((cCharAt2 * 30) + sb2.charAt(i9));
                sb.append(cCharAt2);
            } else {
                cCharAt2 = sb2.charAt(i9);
            }
        }
        if (length % 2 != 0) {
            sb.append((char) ((cCharAt2 * 30) + 29));
        }
        return i5;
    }

    private static void OooO0oo(int i, StringBuilder sb) throws WriterException {
        char c;
        if (i >= 0 && i < 900) {
            sb.append((char) 927);
        } else {
            if (i >= 810900) {
                if (i >= 811800) {
                    throw new WriterException("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(i)));
                }
                sb.append((char) 925);
                c = (char) (810900 - i);
                sb.append(c);
            }
            sb.append((char) 926);
            sb.append((char) ((i / 900) - 1));
            i %= 900;
        }
        c = (char) i;
        sb.append(c);
    }

    private static boolean OooOO0(char c) {
        if (c != ' ') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    private static boolean OooOO0O(char c) {
        return c >= '0' && c <= '9';
    }

    private static boolean OooOO0o(char c) {
        return OooOOo[c] != -1;
    }

    private static boolean OooOOO(char c) {
        if (c == '\t' || c == '\n' || c == '\r') {
            return true;
        }
        return c >= ' ' && c <= '~';
    }

    private static boolean OooOOO0(char c) {
        return OooOOoo[c] != -1;
    }
}

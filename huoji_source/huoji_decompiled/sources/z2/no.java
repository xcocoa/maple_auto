package z2;

import com.google.zxing.DecodeHintType;
import java.nio.charset.Charset;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class no {
    private static final String OooO00o;
    public static final String OooO0O0 = "SJIS";
    public static final String OooO0OO = "GB2312";
    private static final String OooO0Oo = "EUC_JP";
    private static final String OooO0o = "ISO8859_1";
    private static final String OooO0o0 = "UTF8";
    private static final boolean OooO0oO;

    static {
        String strName = Charset.defaultCharset().name();
        OooO00o = strName;
        OooO0oO = OooO0O0.equalsIgnoreCase(strName) || OooO0Oo.equalsIgnoreCase(strName);
    }

    private no() {
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x007c A[PHI: r10
      0x007c: PHI (r10v6 int) = (r10v1 int), (r10v5 int), (r10v1 int) binds: [B:31:0x005f, B:39:0x0077, B:27:0x0056] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String OooO00o(byte[] bArr, Map<DecodeHintType, ?> map) {
        byte[] bArr2 = bArr;
        if (map != null) {
            DecodeHintType decodeHintType = DecodeHintType.CHARACTER_SET;
            if (map.containsKey(decodeHintType)) {
                return map.get(decodeHintType).toString();
            }
        }
        int length = bArr2.length;
        boolean z = true;
        int i = 0;
        boolean z3 = bArr2.length > 3 && bArr2[0] == -17 && bArr2[1] == -69 && bArr2[2] == -65;
        int i2 = 0;
        boolean z4 = true;
        boolean z5 = true;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i3 < length && (z || z4 || z5)) {
            int i13 = bArr2[i3] & 255;
            if (z5) {
                int i14 = i13 & 128;
                if (i4 > 0) {
                    if (i14 != 0) {
                        i4--;
                    } else {
                        z5 = false;
                    }
                } else if (i14 != 0) {
                    if ((i13 & 64) != 0) {
                        i4++;
                        if ((i13 & 32) == 0) {
                            i6++;
                        } else {
                            i4++;
                            if ((i13 & 16) == 0) {
                                i7++;
                            } else {
                                i4++;
                                if ((i13 & 8) == 0) {
                                    i8++;
                                }
                            }
                        }
                    }
                }
            }
            if (z) {
                if (i13 > 127 && i13 < 160) {
                    z = false;
                } else if (i13 > 159 && (i13 < 192 || i13 == 215 || i13 == 247)) {
                    i10++;
                }
            }
            if (z4) {
                if (i5 > 0) {
                    if (i13 < 64 || i13 == 127 || i13 > 252) {
                        z4 = false;
                    } else {
                        i5--;
                    }
                } else if (i13 != 128 && i13 != 160 && i13 <= 239) {
                    if (i13 <= 160 || i13 >= 224) {
                        if (i13 > 127) {
                            i5++;
                            int i15 = i11 + 1;
                            if (i15 > i) {
                                i = i15;
                                i11 = i;
                            } else {
                                i11 = i15;
                            }
                        } else {
                            i11 = 0;
                        }
                        i12 = 0;
                    } else {
                        i2++;
                        int i16 = i12 + 1;
                        if (i16 > i9) {
                            i9 = i16;
                            i12 = i9;
                        } else {
                            i12 = i16;
                        }
                        i11 = 0;
                    }
                }
            }
            i3++;
            bArr2 = bArr;
        }
        if (z5 && i4 > 0) {
            z5 = false;
        }
        if (z4 && i5 > 0) {
            z4 = false;
        }
        return (!z5 || (!z3 && (i6 + i7) + i8 <= 0)) ? (!z4 || (!OooO0oO && i9 < 3 && i < 3)) ? (z && z4) ? (!(i9 == 2 && i2 == 2) && i10 * 10 < length) ? OooO0o : OooO0O0 : z ? OooO0o : z4 ? OooO0O0 : z5 ? OooO0o0 : OooO00o : OooO0O0 : OooO0o0;
    }
}

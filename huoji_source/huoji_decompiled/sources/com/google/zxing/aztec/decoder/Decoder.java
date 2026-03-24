package com.google.zxing.aztec.decoder;

import com.anythink.basead.a.e;
import com.anythink.expressad.d.a.b;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.g.a;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.googlecode.tesseract.android.TessBaseAPI;
import com.umeng.commonsdk.proguard.v;
import java.util.Arrays;
import org.apache.commons.io.IOUtils;
import org.slf4j.Marker;
import z2.eo;
import z2.go;
import z2.im;
import z2.o4;
import z2.so;
import z2.uo;

/* JADX INFO: loaded from: classes2.dex */
public final class Decoder {
    private im OooO00o;
    private static final String[] OooO0O0 = {"CTRL_PS", o4.OooO00o.OooO0Oo, "A", "B", "C", "D", "E", TessBaseAPI.OooO0oo, "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", TessBaseAPI.OooO0oO, "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] OooO0OO = {"CTRL_PS", o4.OooO00o.OooO0Oo, "a", "b", "c", "d", e.a, "f", "g", "h", "i", "j", "k", "l", b.dH, "n", "o", "p", c.bj, c.bk, v.al, "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] OooO0Oo = {"CTRL_PS", o4.OooO00o.OooO0Oo, "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", a.bQ, "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    private static final String[] OooO0o0 = {"", "\r", IOUtils.LINE_SEPARATOR_WINDOWS, ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", Marker.ANY_MARKER, Marker.ANY_NON_NULL_MARKER, ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};
    private static final String[] OooO0o = {"CTRL_PS", o4.OooO00o.OooO0Oo, "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[Table.values().length];
            OooO00o = iArr;
            try {
                iArr[Table.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[Table.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[Table.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[Table.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[Table.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    private static byte OooO(boolean[] zArr, int i) {
        int length = zArr.length - i;
        return (byte) (length >= 8 ? OooOO0(zArr, i, 8) : OooOO0(zArr, i, length) << (8 - length));
    }

    public static byte[] OooO00o(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = OooO(zArr, i << 3);
        }
        return bArr;
    }

    private boolean[] OooO0O0(boolean[] zArr) throws FormatException {
        so soVar;
        int i = 8;
        if (this.OooO00o.OooO0Oo() <= 2) {
            i = 6;
            soVar = so.OooOO0;
        } else if (this.OooO00o.OooO0Oo() <= 8) {
            soVar = so.OooOOO;
        } else if (this.OooO00o.OooO0Oo() <= 22) {
            i = 10;
            soVar = so.OooO;
        } else {
            i = 12;
            soVar = so.OooO0oo;
        }
        int iOooO0OO = this.OooO00o.OooO0OO();
        int length = zArr.length / i;
        if (length < iOooO0OO) {
            throw FormatException.getFormatInstance();
        }
        int length2 = zArr.length % i;
        int[] iArr = new int[length];
        int i2 = 0;
        while (i2 < length) {
            iArr[i2] = OooOO0(zArr, length2, i);
            i2++;
            length2 += i;
        }
        try {
            new uo(soVar).OooO00o(iArr, length - iOooO0OO);
            int i3 = (1 << i) - 1;
            int i4 = 0;
            for (int i5 = 0; i5 < iOooO0OO; i5++) {
                int i6 = iArr[i5];
                if (i6 == 0 || i6 == i3) {
                    throw FormatException.getFormatInstance();
                }
                if (i6 == 1 || i6 == i3 - 1) {
                    i4++;
                }
            }
            boolean[] zArr2 = new boolean[(iOooO0OO * i) - i4];
            int i7 = 0;
            for (int i8 = 0; i8 < iOooO0OO; i8++) {
                int i9 = iArr[i8];
                if (i9 == 1 || i9 == i3 - 1) {
                    Arrays.fill(zArr2, i7, (i7 + i) - 1, i9 > 1);
                    i7 += i - 1;
                } else {
                    int i10 = i - 1;
                    while (i10 >= 0) {
                        int i11 = i7 + 1;
                        zArr2[i7] = ((1 << i10) & i9) != 0;
                        i10--;
                        i7 = i11;
                    }
                }
            }
            return zArr2;
        } catch (ReedSolomonException e) {
            throw FormatException.getFormatInstance(e);
        }
    }

    private boolean[] OooO0Oo(eo eoVar) {
        boolean zOooO0o0 = this.OooO00o.OooO0o0();
        int iOooO0Oo = this.OooO00o.OooO0Oo();
        int i = (zOooO0o0 ? 11 : 14) + (iOooO0Oo << 2);
        int[] iArr = new int[i];
        boolean[] zArr = new boolean[OooOO0O(iOooO0Oo, zOooO0o0)];
        int i2 = 2;
        if (zOooO0o0) {
            for (int i3 = 0; i3 < i; i3++) {
                iArr[i3] = i3;
            }
        } else {
            int i4 = i / 2;
            int i5 = ((i + 1) + (((i4 - 1) / 15) * 2)) / 2;
            for (int i6 = 0; i6 < i4; i6++) {
                iArr[(i4 - i6) - 1] = (i5 - r12) - 1;
                iArr[i4 + i6] = (i6 / 15) + i6 + i5 + 1;
            }
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < iOooO0Oo) {
            int i9 = ((iOooO0Oo - i7) << i2) + (zOooO0o0 ? 9 : 12);
            int i10 = i7 << 1;
            int i11 = (i - 1) - i10;
            int i12 = 0;
            while (i12 < i9) {
                int i13 = i12 << 1;
                int i14 = 0;
                while (i14 < i2) {
                    int i15 = i10 + i14;
                    int i16 = i10 + i12;
                    zArr[i8 + i13 + i14] = eoVar.OooO0o0(iArr[i15], iArr[i16]);
                    int i17 = iArr[i16];
                    int i18 = i11 - i14;
                    zArr[(i9 * 2) + i8 + i13 + i14] = eoVar.OooO0o0(i17, iArr[i18]);
                    int i19 = i11 - i12;
                    zArr[(i9 * 4) + i8 + i13 + i14] = eoVar.OooO0o0(iArr[i18], iArr[i19]);
                    zArr[(i9 * 6) + i8 + i13 + i14] = eoVar.OooO0o0(iArr[i19], iArr[i15]);
                    i14++;
                    iOooO0Oo = iOooO0Oo;
                    zOooO0o0 = zOooO0o0;
                    i2 = 2;
                }
                i12++;
                i2 = 2;
            }
            i8 += i9 << 3;
            i7++;
            i2 = 2;
        }
        return zArr;
    }

    private static String OooO0o(boolean[] zArr) {
        int length = zArr.length;
        Table table = Table.UPPER;
        StringBuilder sb = new StringBuilder(20);
        Table tableOooO0oO = table;
        int i = 0;
        while (i < length) {
            if (table != Table.BINARY) {
                int i2 = table == Table.DIGIT ? 4 : 5;
                if (length - i < i2) {
                    break;
                }
                int iOooOO0 = OooOO0(zArr, i, i2);
                i += i2;
                String strOooO0o0 = OooO0o0(table, iOooOO0);
                if (strOooO0o0.startsWith("CTRL_")) {
                    tableOooO0oO = OooO0oO(strOooO0o0.charAt(5));
                    if (strOooO0o0.charAt(6) != 'L') {
                        tableOooO0oO = table;
                        table = tableOooO0oO;
                    }
                } else {
                    sb.append(strOooO0o0);
                }
                table = tableOooO0oO;
            } else {
                if (length - i < 5) {
                    break;
                }
                int iOooOO02 = OooOO0(zArr, i, 5);
                i += 5;
                if (iOooOO02 == 0) {
                    if (length - i < 11) {
                        break;
                    }
                    iOooOO02 = OooOO0(zArr, i, 11) + 31;
                    i += 11;
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= iOooOO02) {
                        break;
                    }
                    if (length - i < 8) {
                        i = length;
                        break;
                    }
                    sb.append((char) OooOO0(zArr, i, 8));
                    i += 8;
                    i3++;
                }
                table = tableOooO0oO;
            }
        }
        return sb.toString();
    }

    private static String OooO0o0(Table table, int i) {
        int i2 = OooO00o.OooO00o[table.ordinal()];
        if (i2 == 1) {
            return OooO0O0[i];
        }
        if (i2 == 2) {
            return OooO0OO[i];
        }
        if (i2 == 3) {
            return OooO0Oo[i];
        }
        if (i2 == 4) {
            return OooO0o0[i];
        }
        if (i2 == 5) {
            return OooO0o[i];
        }
        throw new IllegalStateException("Bad table");
    }

    private static Table OooO0oO(char c) {
        return c != 'B' ? c != 'D' ? c != 'P' ? c != 'L' ? c != 'M' ? Table.UPPER : Table.MIXED : Table.LOWER : Table.PUNCT : Table.DIGIT : Table.BINARY;
    }

    public static String OooO0oo(boolean[] zArr) {
        return OooO0o(zArr);
    }

    private static int OooOO0(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    private static int OooOO0O(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    public final go OooO0OO(im imVar) throws FormatException {
        this.OooO00o = imVar;
        boolean[] zArrOooO0O0 = OooO0O0(OooO0Oo(imVar.OooO00o()));
        go goVar = new go(OooO00o(zArrOooO0O0), OooO0o(zArrOooO0O0), null, null);
        goVar.OooOOO(zArrOooO0O0.length);
        return goVar;
    }
}

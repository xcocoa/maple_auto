package z2;

import com.google.zxing.FormatException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

/* JADX INFO: loaded from: classes2.dex */
public final class gt {
    private final int OooO00o;
    private final int[] OooO0O0;
    private final OooO0O0[] OooO0OO;
    private final int OooO0Oo;
    private static final int[] OooO0o0 = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};
    private static final gt[] OooO0o = OooO0O0();

    public static final class OooO00o {
        private final int OooO00o;
        private final int OooO0O0;

        public OooO00o(int i, int i2) {
            this.OooO00o = i;
            this.OooO0O0 = i2;
        }

        public final int OooO00o() {
            return this.OooO00o;
        }

        public final int OooO0O0() {
            return this.OooO0O0;
        }
    }

    public static final class OooO0O0 {
        private final int OooO00o;
        private final OooO00o[] OooO0O0;

        public OooO0O0(int i, OooO00o... oooO00oArr) {
            this.OooO00o = i;
            this.OooO0O0 = oooO00oArr;
        }

        public final OooO00o[] OooO00o() {
            return this.OooO0O0;
        }

        public final int OooO0O0() {
            return this.OooO00o;
        }

        public final int OooO0OO() {
            int iOooO00o = 0;
            for (OooO00o oooO00o : this.OooO0O0) {
                iOooO00o += oooO00o.OooO00o();
            }
            return iOooO00o;
        }

        public final int OooO0Oo() {
            return this.OooO00o * OooO0OO();
        }
    }

    private gt(int i, int[] iArr, OooO0O0... oooO0O0Arr) {
        this.OooO00o = i;
        this.OooO0O0 = iArr;
        this.OooO0OO = oooO0O0Arr;
        int iOooO0O0 = oooO0O0Arr[0].OooO0O0();
        int iOooO00o = 0;
        for (OooO00o oooO00o : oooO0O0Arr[0].OooO00o()) {
            iOooO00o += oooO00o.OooO00o() * (oooO00o.OooO0O0() + iOooO0O0);
        }
        this.OooO0Oo = iOooO00o;
    }

    public static gt OooO(int i) {
        if (i <= 0 || i > 40) {
            throw new IllegalArgumentException();
        }
        return OooO0o[i - 1];
    }

    private static gt[] OooO0O0() {
        return new gt[]{new gt(1, new int[0], new OooO0O0(7, new OooO00o(1, 19)), new OooO0O0(10, new OooO00o(1, 16)), new OooO0O0(13, new OooO00o(1, 13)), new OooO0O0(17, new OooO00o(1, 9))), new gt(2, new int[]{6, 18}, new OooO0O0(10, new OooO00o(1, 34)), new OooO0O0(16, new OooO00o(1, 28)), new OooO0O0(22, new OooO00o(1, 22)), new OooO0O0(28, new OooO00o(1, 16))), new gt(3, new int[]{6, 22}, new OooO0O0(15, new OooO00o(1, 55)), new OooO0O0(26, new OooO00o(1, 44)), new OooO0O0(18, new OooO00o(2, 17)), new OooO0O0(22, new OooO00o(2, 13))), new gt(4, new int[]{6, 26}, new OooO0O0(20, new OooO00o(1, 80)), new OooO0O0(18, new OooO00o(2, 32)), new OooO0O0(26, new OooO00o(2, 24)), new OooO0O0(16, new OooO00o(4, 9))), new gt(5, new int[]{6, 30}, new OooO0O0(26, new OooO00o(1, 108)), new OooO0O0(24, new OooO00o(2, 43)), new OooO0O0(18, new OooO00o(2, 15), new OooO00o(2, 16)), new OooO0O0(22, new OooO00o(2, 11), new OooO00o(2, 12))), new gt(6, new int[]{6, 34}, new OooO0O0(18, new OooO00o(2, 68)), new OooO0O0(16, new OooO00o(4, 27)), new OooO0O0(24, new OooO00o(4, 19)), new OooO0O0(28, new OooO00o(4, 15))), new gt(7, new int[]{6, 22, 38}, new OooO0O0(20, new OooO00o(2, 78)), new OooO0O0(18, new OooO00o(4, 31)), new OooO0O0(18, new OooO00o(2, 14), new OooO00o(4, 15)), new OooO0O0(26, new OooO00o(4, 13), new OooO00o(1, 14))), new gt(8, new int[]{6, 24, 42}, new OooO0O0(24, new OooO00o(2, 97)), new OooO0O0(22, new OooO00o(2, 38), new OooO00o(2, 39)), new OooO0O0(22, new OooO00o(4, 18), new OooO00o(2, 19)), new OooO0O0(26, new OooO00o(4, 14), new OooO00o(2, 15))), new gt(9, new int[]{6, 26, 46}, new OooO0O0(30, new OooO00o(2, 116)), new OooO0O0(22, new OooO00o(3, 36), new OooO00o(2, 37)), new OooO0O0(20, new OooO00o(4, 16), new OooO00o(4, 17)), new OooO0O0(24, new OooO00o(4, 12), new OooO00o(4, 13))), new gt(10, new int[]{6, 28, 50}, new OooO0O0(18, new OooO00o(2, 68), new OooO00o(2, 69)), new OooO0O0(26, new OooO00o(4, 43), new OooO00o(1, 44)), new OooO0O0(24, new OooO00o(6, 19), new OooO00o(2, 20)), new OooO0O0(28, new OooO00o(6, 15), new OooO00o(2, 16))), new gt(11, new int[]{6, 30, 54}, new OooO0O0(20, new OooO00o(4, 81)), new OooO0O0(30, new OooO00o(1, 50), new OooO00o(4, 51)), new OooO0O0(28, new OooO00o(4, 22), new OooO00o(4, 23)), new OooO0O0(24, new OooO00o(3, 12), new OooO00o(8, 13))), new gt(12, new int[]{6, 32, 58}, new OooO0O0(24, new OooO00o(2, 92), new OooO00o(2, 93)), new OooO0O0(22, new OooO00o(6, 36), new OooO00o(2, 37)), new OooO0O0(26, new OooO00o(4, 20), new OooO00o(6, 21)), new OooO0O0(28, new OooO00o(7, 14), new OooO00o(4, 15))), new gt(13, new int[]{6, 34, 62}, new OooO0O0(26, new OooO00o(4, 107)), new OooO0O0(22, new OooO00o(8, 37), new OooO00o(1, 38)), new OooO0O0(24, new OooO00o(8, 20), new OooO00o(4, 21)), new OooO0O0(22, new OooO00o(12, 11), new OooO00o(4, 12))), new gt(14, new int[]{6, 26, 46, 66}, new OooO0O0(30, new OooO00o(3, 115), new OooO00o(1, 116)), new OooO0O0(24, new OooO00o(4, 40), new OooO00o(5, 41)), new OooO0O0(20, new OooO00o(11, 16), new OooO00o(5, 17)), new OooO0O0(24, new OooO00o(11, 12), new OooO00o(5, 13))), new gt(15, new int[]{6, 26, 48, 70}, new OooO0O0(22, new OooO00o(5, 87), new OooO00o(1, 88)), new OooO0O0(24, new OooO00o(5, 41), new OooO00o(5, 42)), new OooO0O0(30, new OooO00o(5, 24), new OooO00o(7, 25)), new OooO0O0(24, new OooO00o(11, 12), new OooO00o(7, 13))), new gt(16, new int[]{6, 26, 50, 74}, new OooO0O0(24, new OooO00o(5, 98), new OooO00o(1, 99)), new OooO0O0(28, new OooO00o(7, 45), new OooO00o(3, 46)), new OooO0O0(24, new OooO00o(15, 19), new OooO00o(2, 20)), new OooO0O0(30, new OooO00o(3, 15), new OooO00o(13, 16))), new gt(17, new int[]{6, 30, 54, 78}, new OooO0O0(28, new OooO00o(1, 107), new OooO00o(5, 108)), new OooO0O0(28, new OooO00o(10, 46), new OooO00o(1, 47)), new OooO0O0(28, new OooO00o(1, 22), new OooO00o(15, 23)), new OooO0O0(28, new OooO00o(2, 14), new OooO00o(17, 15))), new gt(18, new int[]{6, 30, 56, 82}, new OooO0O0(30, new OooO00o(5, 120), new OooO00o(1, com.anythink.expressad.video.module.a.a.L)), new OooO0O0(26, new OooO00o(9, 43), new OooO00o(4, 44)), new OooO0O0(28, new OooO00o(17, 22), new OooO00o(1, 23)), new OooO0O0(28, new OooO00o(2, 14), new OooO00o(19, 15))), new gt(19, new int[]{6, 30, 58, 86}, new OooO0O0(28, new OooO00o(3, 113), new OooO00o(4, 114)), new OooO0O0(26, new OooO00o(3, 44), new OooO00o(11, 45)), new OooO0O0(26, new OooO00o(17, 21), new OooO00o(4, 22)), new OooO0O0(26, new OooO00o(9, 13), new OooO00o(16, 14))), new gt(20, new int[]{6, 34, 62, 90}, new OooO0O0(28, new OooO00o(3, 107), new OooO00o(5, 108)), new OooO0O0(26, new OooO00o(3, 41), new OooO00o(13, 42)), new OooO0O0(30, new OooO00o(15, 24), new OooO00o(5, 25)), new OooO0O0(28, new OooO00o(15, 15), new OooO00o(10, 16))), new gt(21, new int[]{6, 28, 50, 72, 94}, new OooO0O0(28, new OooO00o(4, 116), new OooO00o(4, 117)), new OooO0O0(26, new OooO00o(17, 42)), new OooO0O0(28, new OooO00o(17, 22), new OooO00o(6, 23)), new OooO0O0(30, new OooO00o(19, 16), new OooO00o(6, 17))), new gt(22, new int[]{6, 26, 50, 74, 98}, new OooO0O0(28, new OooO00o(2, 111), new OooO00o(7, 112)), new OooO0O0(28, new OooO00o(17, 46)), new OooO0O0(30, new OooO00o(7, 24), new OooO00o(16, 25)), new OooO0O0(24, new OooO00o(34, 13))), new gt(23, new int[]{6, 30, 54, 78, 102}, new OooO0O0(30, new OooO00o(4, com.anythink.expressad.video.module.a.a.L), new OooO00o(5, com.anythink.expressad.video.module.a.a.H)), new OooO0O0(28, new OooO00o(4, 47), new OooO00o(14, 48)), new OooO0O0(30, new OooO00o(11, 24), new OooO00o(14, 25)), new OooO0O0(30, new OooO00o(16, 15), new OooO00o(14, 16))), new gt(24, new int[]{6, 28, 54, 80, 106}, new OooO0O0(30, new OooO00o(6, 117), new OooO00o(4, 118)), new OooO0O0(28, new OooO00o(6, 45), new OooO00o(14, 46)), new OooO0O0(30, new OooO00o(11, 24), new OooO00o(16, 25)), new OooO0O0(30, new OooO00o(30, 16), new OooO00o(2, 17))), new gt(25, new int[]{6, 32, 58, 84, 110}, new OooO0O0(26, new OooO00o(8, 106), new OooO00o(4, 107)), new OooO0O0(28, new OooO00o(8, 47), new OooO00o(13, 48)), new OooO0O0(30, new OooO00o(7, 24), new OooO00o(22, 25)), new OooO0O0(30, new OooO00o(22, 15), new OooO00o(13, 16))), new gt(26, new int[]{6, 30, 58, 86, 114}, new OooO0O0(28, new OooO00o(10, 114), new OooO00o(2, 115)), new OooO0O0(28, new OooO00o(19, 46), new OooO00o(4, 47)), new OooO0O0(28, new OooO00o(28, 22), new OooO00o(6, 23)), new OooO0O0(30, new OooO00o(33, 16), new OooO00o(4, 17))), new gt(27, new int[]{6, 34, 62, 90, 118}, new OooO0O0(30, new OooO00o(8, com.anythink.expressad.video.module.a.a.H), new OooO00o(4, com.anythink.expressad.video.module.a.a.N)), new OooO0O0(28, new OooO00o(22, 45), new OooO00o(3, 46)), new OooO0O0(30, new OooO00o(8, 23), new OooO00o(26, 24)), new OooO0O0(30, new OooO00o(12, 15), new OooO00o(28, 16))), new gt(28, new int[]{6, 26, 50, 74, 98, com.anythink.expressad.video.module.a.a.H}, new OooO0O0(30, new OooO00o(3, 117), new OooO00o(10, 118)), new OooO0O0(28, new OooO00o(3, 45), new OooO00o(23, 46)), new OooO0O0(30, new OooO00o(4, 24), new OooO00o(31, 25)), new OooO0O0(30, new OooO00o(11, 15), new OooO00o(31, 16))), new gt(29, new int[]{6, 30, 54, 78, 102, 126}, new OooO0O0(30, new OooO00o(7, 116), new OooO00o(7, 117)), new OooO0O0(28, new OooO00o(21, 45), new OooO00o(7, 46)), new OooO0O0(30, new OooO00o(1, 23), new OooO00o(37, 24)), new OooO0O0(30, new OooO00o(19, 15), new OooO00o(26, 16))), new gt(30, new int[]{6, 26, 52, 78, 104, 130}, new OooO0O0(30, new OooO00o(5, 115), new OooO00o(10, 116)), new OooO0O0(28, new OooO00o(19, 47), new OooO00o(10, 48)), new OooO0O0(30, new OooO00o(15, 24), new OooO00o(25, 25)), new OooO0O0(30, new OooO00o(23, 15), new OooO00o(25, 16))), new gt(31, new int[]{6, 30, 56, 82, 108, 134}, new OooO0O0(30, new OooO00o(13, 115), new OooO00o(3, 116)), new OooO0O0(28, new OooO00o(2, 46), new OooO00o(29, 47)), new OooO0O0(30, new OooO00o(42, 24), new OooO00o(1, 25)), new OooO0O0(30, new OooO00o(23, 15), new OooO00o(28, 16))), new gt(32, new int[]{6, 34, 60, 86, 112, 138}, new OooO0O0(30, new OooO00o(17, 115)), new OooO0O0(28, new OooO00o(10, 46), new OooO00o(23, 47)), new OooO0O0(30, new OooO00o(10, 24), new OooO00o(35, 25)), new OooO0O0(30, new OooO00o(19, 15), new OooO00o(35, 16))), new gt(33, new int[]{6, 30, 58, 86, 114, 142}, new OooO0O0(30, new OooO00o(17, 115), new OooO00o(1, 116)), new OooO0O0(28, new OooO00o(14, 46), new OooO00o(21, 47)), new OooO0O0(30, new OooO00o(29, 24), new OooO00o(19, 25)), new OooO0O0(30, new OooO00o(11, 15), new OooO00o(46, 16))), new gt(34, new int[]{6, 34, 62, 90, 118, 146}, new OooO0O0(30, new OooO00o(13, 115), new OooO00o(6, 116)), new OooO0O0(28, new OooO00o(14, 46), new OooO00o(23, 47)), new OooO0O0(30, new OooO00o(44, 24), new OooO00o(7, 25)), new OooO0O0(30, new OooO00o(59, 16), new OooO00o(1, 17))), new gt(35, new int[]{6, 30, 54, 78, 102, 126, 150}, new OooO0O0(30, new OooO00o(12, com.anythink.expressad.video.module.a.a.L), new OooO00o(7, com.anythink.expressad.video.module.a.a.H)), new OooO0O0(28, new OooO00o(12, 47), new OooO00o(26, 48)), new OooO0O0(30, new OooO00o(39, 24), new OooO00o(14, 25)), new OooO0O0(30, new OooO00o(22, 15), new OooO00o(41, 16))), new gt(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new OooO0O0(30, new OooO00o(6, com.anythink.expressad.video.module.a.a.L), new OooO00o(14, com.anythink.expressad.video.module.a.a.H)), new OooO0O0(28, new OooO00o(6, 47), new OooO00o(34, 48)), new OooO0O0(30, new OooO00o(46, 24), new OooO00o(10, 25)), new OooO0O0(30, new OooO00o(2, 15), new OooO00o(64, 16))), new gt(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new OooO0O0(30, new OooO00o(17, com.anythink.expressad.video.module.a.a.H), new OooO00o(4, com.anythink.expressad.video.module.a.a.N)), new OooO0O0(28, new OooO00o(29, 46), new OooO00o(14, 47)), new OooO0O0(30, new OooO00o(49, 24), new OooO00o(10, 25)), new OooO0O0(30, new OooO00o(24, 15), new OooO00o(46, 16))), new gt(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new OooO0O0(30, new OooO00o(4, com.anythink.expressad.video.module.a.a.H), new OooO00o(18, com.anythink.expressad.video.module.a.a.N)), new OooO0O0(28, new OooO00o(13, 46), new OooO00o(32, 47)), new OooO0O0(30, new OooO00o(48, 24), new OooO00o(14, 25)), new OooO0O0(30, new OooO00o(42, 15), new OooO00o(32, 16))), new gt(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new OooO0O0(30, new OooO00o(20, 117), new OooO00o(4, 118)), new OooO0O0(28, new OooO00o(40, 47), new OooO00o(7, 48)), new OooO0O0(30, new OooO00o(43, 24), new OooO00o(22, 25)), new OooO0O0(30, new OooO00o(10, 15), new OooO00o(67, 16))), new gt(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new OooO0O0(30, new OooO00o(19, 118), new OooO00o(6, 119)), new OooO0O0(28, new OooO00o(18, 47), new OooO00o(31, 48)), new OooO0O0(30, new OooO00o(34, 24), new OooO00o(34, 25)), new OooO0O0(30, new OooO00o(20, 15), new OooO00o(61, 16)))};
    }

    public static gt OooO0OO(int i) {
        int i2 = 0;
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        while (true) {
            int[] iArr = OooO0o0;
            if (i2 >= iArr.length) {
                if (i4 <= 3) {
                    return OooO(i3);
                }
                return null;
            }
            int i5 = iArr[i2];
            if (i5 == i) {
                return OooO(i2 + 7);
            }
            int iOooO0o0 = et.OooO0o0(i, i5);
            if (iOooO0o0 < i4) {
                i3 = i2 + 7;
                i4 = iOooO0o0;
            }
            i2++;
        }
    }

    public static gt OooO0oO(int i) throws FormatException {
        if (i % 4 != 1) {
            throw FormatException.getFormatInstance();
        }
        try {
            return OooO((i - 17) / 4);
        } catch (IllegalArgumentException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    public final eo OooO00o() {
        int iOooO0o0 = OooO0o0();
        eo eoVar = new eo(iOooO0o0);
        eoVar.OooOOo(0, 0, 9, 9);
        int i = iOooO0o0 - 8;
        eoVar.OooOOo(i, 0, 8, 9);
        eoVar.OooOOo(0, i, 9, 8);
        int length = this.OooO0O0.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.OooO0O0[i2] - 2;
            for (int i4 = 0; i4 < length; i4++) {
                if ((i2 != 0 || (i4 != 0 && i4 != length - 1)) && (i2 != length - 1 || i4 != 0)) {
                    eoVar.OooOOo(this.OooO0O0[i4] - 2, i3, 5, 5);
                }
            }
        }
        int i5 = iOooO0o0 - 17;
        eoVar.OooOOo(6, 9, 1, i5);
        eoVar.OooOOo(9, 6, i5, 1);
        if (this.OooO00o > 6) {
            int i6 = iOooO0o0 - 11;
            eoVar.OooOOo(i6, 0, 3, 6);
            eoVar.OooOOo(0, i6, 6, 3);
        }
        return eoVar;
    }

    public final int[] OooO0Oo() {
        return this.OooO0O0;
    }

    public final OooO0O0 OooO0o(ErrorCorrectionLevel errorCorrectionLevel) {
        return this.OooO0OO[errorCorrectionLevel.ordinal()];
    }

    public final int OooO0o0() {
        return (this.OooO00o * 4) + 17;
    }

    public final int OooO0oo() {
        return this.OooO0Oo;
    }

    public final int OooOO0() {
        return this.OooO00o;
    }

    public final String toString() {
        return String.valueOf(this.OooO00o);
    }
}

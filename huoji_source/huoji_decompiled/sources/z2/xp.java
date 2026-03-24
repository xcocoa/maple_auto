package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class xp extends nq {
    private static final int OooO = 3;
    private static final float OooO0Oo = 2.0f;
    private static final float OooO0o0 = 1.5f;
    private final StringBuilder OooO00o = new StringBuilder(20);
    private int[] OooO0O0 = new int[80];
    private int OooO0OO = 0;
    private static final String OooO0o = "0123456789-$:/.+ABCD";
    public static final char[] OooO0oO = OooO0o.toCharArray();
    public static final int[] OooO0oo = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};
    private static final char[] OooOO0 = {'A', 'B', 'C', 'D'};

    private void OooO(int i) {
        int[] iArr = this.OooO0O0;
        int i2 = this.OooO0OO;
        iArr[i2] = i;
        int i3 = i2 + 1;
        this.OooO0OO = i3;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[i3 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.OooO0O0 = iArr2;
        }
    }

    public static boolean OooO0oo(char[] cArr, char c) {
        if (cArr != null) {
            for (char c2 : cArr) {
                if (c2 == c) {
                    return true;
                }
            }
        }
        return false;
    }

    private int OooOO0() throws NotFoundException {
        for (int i = 1; i < this.OooO0OO; i += 2) {
            int iOooOO0o = OooOO0o(i);
            if (iOooOO0o != -1 && OooO0oo(OooOO0, OooO0oO[iOooOO0o])) {
                int i2 = 0;
                for (int i3 = i; i3 < i + 7; i3++) {
                    i2 += this.OooO0O0[i3];
                }
                if (i == 1 || this.OooO0O0[i - 1] >= i2 / 2) {
                    return i;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void OooOO0O(Cdo cdo) throws NotFoundException {
        int i = 0;
        this.OooO0OO = 0;
        int iOooOO0o = cdo.OooOO0o(0);
        int iOooOOO0 = cdo.OooOOO0();
        if (iOooOO0o >= iOooOOO0) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z = true;
        while (iOooOO0o < iOooOOO0) {
            if (cdo.OooO0oo(iOooOO0o) != z) {
                i++;
            } else {
                OooO(i);
                z = !z;
                i = 1;
            }
            iOooOO0o++;
        }
        OooO(i);
    }

    private int OooOO0o(int i) {
        int i2 = i + 7;
        if (i2 >= this.OooO0OO) {
            return -1;
        }
        int[] iArr = this.OooO0O0;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        int i5 = Integer.MAX_VALUE;
        int i6 = 0;
        for (int i7 = i; i7 < i2; i7 += 2) {
            int i8 = iArr[i7];
            if (i8 < i5) {
                i5 = i8;
            }
            if (i8 > i6) {
                i6 = i8;
            }
        }
        int i9 = (i5 + i6) / 2;
        int i10 = 0;
        for (int i11 = i + 1; i11 < i2; i11 += 2) {
            int i12 = iArr[i11];
            if (i12 < i3) {
                i3 = i12;
            }
            if (i12 > i10) {
                i10 = i12;
            }
        }
        int i13 = (i3 + i10) / 2;
        int i14 = 128;
        int i15 = 0;
        for (int i16 = 0; i16 < 7; i16++) {
            i14 >>= 1;
            if (iArr[i + i16] > ((i16 & 1) == 0 ? i9 : i13)) {
                i15 |= i14;
            }
        }
        while (true) {
            int[] iArr2 = OooO0oo;
            if (i4 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i4] == i15) {
                return i4;
            }
            i4++;
        }
    }

    private void OooOOO0(int i) throws NotFoundException {
        int[] iArr = {0, 0, 0, 0};
        int[] iArr2 = {0, 0, 0, 0};
        int length = this.OooO00o.length() - 1;
        int i2 = 0;
        int i3 = i;
        int i4 = 0;
        while (true) {
            int i5 = OooO0oo[this.OooO00o.charAt(i4)];
            for (int i6 = 6; i6 >= 0; i6--) {
                int i7 = (i6 & 1) + ((i5 & 1) << 1);
                iArr[i7] = iArr[i7] + this.OooO0O0[i3 + i6];
                iArr2[i7] = iArr2[i7] + 1;
                i5 >>= 1;
            }
            if (i4 >= length) {
                break;
            }
            i3 += 8;
            i4++;
        }
        float[] fArr = new float[4];
        float[] fArr2 = new float[4];
        for (int i8 = 0; i8 < 2; i8++) {
            fArr2[i8] = 0.0f;
            int i9 = i8 + 2;
            fArr2[i9] = ((iArr[i8] / iArr2[i8]) + (iArr[i9] / iArr2[i9])) / OooO0Oo;
            fArr[i8] = fArr2[i9];
            fArr[i9] = ((iArr[i9] * OooO0Oo) + 1.5f) / iArr2[i9];
        }
        loop3: while (true) {
            int i10 = OooO0oo[this.OooO00o.charAt(i2)];
            for (int i11 = 6; i11 >= 0; i11--) {
                int i12 = (i11 & 1) + ((i10 & 1) << 1);
                float f = this.OooO0O0[i + i11];
                if (f < fArr2[i12] || f > fArr[i12]) {
                    break loop3;
                }
                i10 >>= 1;
            }
            if (i2 >= length) {
                return;
            }
            i += 8;
            i2++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.nq
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException {
        Arrays.fill(this.OooO0O0, 0);
        OooOO0O(cdo);
        int iOooOO0 = OooOO0();
        this.OooO00o.setLength(0);
        int i2 = iOooOO0;
        do {
            int iOooOO0o = OooOO0o(i2);
            if (iOooOO0o == -1) {
                throw NotFoundException.getNotFoundInstance();
            }
            this.OooO00o.append((char) iOooOO0o);
            i2 += 8;
            if (this.OooO00o.length() > 1 && OooO0oo(OooOO0, OooO0oO[iOooOO0o])) {
                break;
            }
        } while (i2 < this.OooO0OO);
        int i3 = i2 - 1;
        int i4 = this.OooO0O0[i3];
        int i5 = 0;
        for (int i6 = -8; i6 < -1; i6++) {
            i5 += this.OooO0O0[i2 + i6];
        }
        if (i2 < this.OooO0OO && i4 < i5 / 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        OooOOO0(iOooOO0);
        for (int i7 = 0; i7 < this.OooO00o.length(); i7++) {
            StringBuilder sb = this.OooO00o;
            sb.setCharAt(i7, OooO0oO[sb.charAt(i7)]);
        }
        char cCharAt = this.OooO00o.charAt(0);
        char[] cArr = OooOO0;
        if (!OooO0oo(cArr, cCharAt)) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb2 = this.OooO00o;
        if (!OooO0oo(cArr, sb2.charAt(sb2.length() - 1))) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (this.OooO00o.length() <= 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (map == null || !map.containsKey(DecodeHintType.RETURN_CODABAR_START_END)) {
            StringBuilder sb3 = this.OooO00o;
            sb3.deleteCharAt(sb3.length() - 1);
            this.OooO00o.deleteCharAt(0);
        }
        int i8 = 0;
        for (int i9 = 0; i9 < iOooOO0; i9++) {
            i8 += this.OooO0O0[i9];
        }
        float f = i8;
        while (iOooOO0 < i3) {
            i8 += this.OooO0O0[iOooOO0];
            iOooOO0++;
        }
        float f2 = i;
        return new em(this.OooO00o.toString(), null, new fm[]{new fm(f, f2), new fm(i8, f2)}, BarcodeFormat.CODABAR);
    }
}

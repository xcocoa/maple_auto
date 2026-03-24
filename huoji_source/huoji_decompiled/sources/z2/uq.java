package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.ResultMetadataType;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class uq extends nq {
    public static final int[][] OooO;
    private static final float OooO0Oo = 0.48f;
    private static final float OooO0o0 = 0.7f;
    public static final int[][] OooOO0;
    private final StringBuilder OooO00o = new StringBuilder(20);
    private final tq OooO0O0 = new tq();
    private final iq OooO0OO = new iq();
    public static final int[] OooO0o = {1, 1, 1};
    public static final int[] OooO0oO = {1, 1, 1, 1, 1};
    public static final int[] OooO0oo = {1, 1, 1, 1, 1, 1};

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        OooO = iArr;
        int[][] iArr2 = new int[20][];
        OooOO0 = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr3 = OooO[i - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i2 = 0; i2 < iArr3.length; i2++) {
                iArr4[i2] = iArr3[(iArr3.length - i2) - 1];
            }
            OooOO0[i] = iArr4;
        }
    }

    public static boolean OooO(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i = length - 1;
        return OooOOo(charSequence.subSequence(0, i)) == Character.digit(charSequence.charAt(i), 10);
    }

    public static int OooOO0(Cdo cdo, int[] iArr, int i, int[][] iArr2) throws NotFoundException {
        nq.OooO0o(cdo, i, iArr);
        int length = iArr2.length;
        float f = OooO0Oo;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            float fOooO0o0 = nq.OooO0o0(iArr, iArr2[i3], OooO0o0);
            if (fOooO0o0 < f) {
                i2 = i3;
                f = fOooO0o0;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static int[] OooOOO(Cdo cdo, int i, boolean z, int[] iArr) throws NotFoundException {
        return OooOOOO(cdo, i, z, iArr, new int[iArr.length]);
    }

    private static int[] OooOOOO(Cdo cdo, int i, boolean z, int[] iArr, int[] iArr2) throws NotFoundException {
        int iOooOOO0 = cdo.OooOOO0();
        int iOooOO0o = z ? cdo.OooOO0o(i) : cdo.OooOO0O(i);
        int length = iArr.length;
        boolean z3 = z;
        int i2 = 0;
        int i3 = iOooOO0o;
        while (iOooOO0o < iOooOOO0) {
            if (cdo.OooO0oo(iOooOO0o) != z3) {
                iArr2[i2] = iArr2[i2] + 1;
            } else {
                if (i2 != length - 1) {
                    i2++;
                } else {
                    if (nq.OooO0o0(iArr2, iArr, OooO0o0) < OooO0Oo) {
                        return new int[]{i3, iOooOO0o};
                    }
                    i3 += iArr2[0] + iArr2[1];
                    int i4 = i2 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i4);
                    iArr2[i4] = 0;
                    iArr2[i2] = 0;
                    i2--;
                }
                iArr2[i2] = 1;
                z3 = !z3;
            }
            iOooOO0o++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static int[] OooOOOo(Cdo cdo) throws NotFoundException {
        int[] iArr = new int[OooO0o.length];
        int[] iArrOooOOOO = null;
        boolean zOooOOOO = false;
        int i = 0;
        while (!zOooOOOO) {
            int[] iArr2 = OooO0o;
            Arrays.fill(iArr, 0, iArr2.length, 0);
            iArrOooOOOO = OooOOOO(cdo, i, false, iArr2, iArr);
            int i2 = iArrOooOOOO[0];
            int i3 = iArrOooOOOO[1];
            int i4 = i2 - (i3 - i2);
            if (i4 >= 0) {
                zOooOOOO = cdo.OooOOOO(i4, i2, false);
            }
            i = i3;
        }
        return iArrOooOOOO;
    }

    public static int OooOOo(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            int iCharAt = charSequence.charAt(i2) - '0';
            if (iCharAt < 0 || iCharAt > 9) {
                throw FormatException.getFormatInstance();
            }
            i += iCharAt;
        }
        int i3 = i * 3;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            int iCharAt2 = charSequence.charAt(i4) - '0';
            if (iCharAt2 < 0 || iCharAt2 > 9) {
                throw FormatException.getFormatInstance();
            }
            i3 += iCharAt2;
        }
        return (1000 - i3) % 10;
    }

    @Override // z2.nq
    public em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        return OooOOO0(i, cdo, OooOOOo(cdo), map);
    }

    public boolean OooO0oo(String str) throws FormatException {
        return OooO(str);
    }

    public int[] OooOO0O(Cdo cdo, int i) throws NotFoundException {
        return OooOOO(cdo, i, false, OooO0o);
    }

    public abstract int OooOO0o(Cdo cdo, int[] iArr, StringBuilder sb) throws NotFoundException;

    public em OooOOO0(int i, Cdo cdo, int[] iArr, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int length;
        String strOooO0OO;
        gm gmVar = map == null ? null : (gm) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        boolean z = true;
        if (gmVar != null) {
            gmVar.OooO00o(new fm((iArr[0] + iArr[1]) / 2.0f, i));
        }
        StringBuilder sb = this.OooO00o;
        sb.setLength(0);
        int iOooOO0o = OooOO0o(cdo, iArr, sb);
        if (gmVar != null) {
            gmVar.OooO00o(new fm(iOooOO0o, i));
        }
        int[] iArrOooOO0O = OooOO0O(cdo, iOooOO0o);
        if (gmVar != null) {
            gmVar.OooO00o(new fm((iArrOooOO0O[0] + iArrOooOO0O[1]) / 2.0f, i));
        }
        int i2 = iArrOooOO0O[1];
        int i3 = (i2 - iArrOooOO0O[0]) + i2;
        if (i3 >= cdo.OooOOO0() || !cdo.OooOOOO(i2, i3, false)) {
            throw NotFoundException.getNotFoundInstance();
        }
        String string = sb.toString();
        if (string.length() < 8) {
            throw FormatException.getFormatInstance();
        }
        if (!OooO0oo(string)) {
            throw ChecksumException.getChecksumInstance();
        }
        BarcodeFormat barcodeFormatOooOOo0 = OooOOo0();
        float f = i;
        em emVar = new em(string, null, new fm[]{new fm((iArr[1] + iArr[0]) / 2.0f, f), new fm((iArrOooOO0O[1] + iArrOooOO0O[0]) / 2.0f, f)}, barcodeFormatOooOOo0);
        try {
            em emVarOooO00o = this.OooO0O0.OooO00o(i, cdo, iArrOooOO0O[1]);
            emVar.OooOO0(ResultMetadataType.UPC_EAN_EXTENSION, emVarOooO00o.OooO0oO());
            emVar.OooO(emVarOooO00o.OooO0o0());
            emVar.OooO00o(emVarOooO00o.OooO0o());
            length = emVarOooO00o.OooO0oO().length();
        } catch (ReaderException unused) {
            length = 0;
        }
        int[] iArr2 = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_EAN_EXTENSIONS) : null;
        if (iArr2 != null) {
            int length2 = iArr2.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length2) {
                    z = false;
                    break;
                }
                if (length == iArr2[i4]) {
                    break;
                }
                i4++;
            }
            if (!z) {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        if ((barcodeFormatOooOOo0 == BarcodeFormat.EAN_13 || barcodeFormatOooOOo0 == BarcodeFormat.UPC_A) && (strOooO0OO = this.OooO0OO.OooO0OO(string)) != null) {
            emVar.OooOO0(ResultMetadataType.POSSIBLE_COUNTRY, strOooO0OO);
        }
        return emVar;
    }

    public abstract BarcodeFormat OooOOo0();
}

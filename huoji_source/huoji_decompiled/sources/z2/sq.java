package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.EnumMap;
import java.util.Map;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class sq {
    private static final int[] OooO0OO = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};
    private final int[] OooO00o = new int[4];
    private final StringBuilder OooO0O0 = new StringBuilder();

    private int OooO00o(Cdo cdo, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.OooO00o;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iOooOOO0 = cdo.OooOOO0();
        int iOooOO0o = iArr[1];
        int i = 0;
        for (int i2 = 0; i2 < 5 && iOooOO0o < iOooOOO0; i2++) {
            int iOooOO0 = uq.OooOO0(cdo, iArr2, iOooOO0o, uq.OooOO0);
            sb.append((char) ((iOooOO0 % 10) + 48));
            for (int i3 : iArr2) {
                iOooOO0o += i3;
            }
            if (iOooOO0 >= 10) {
                i |= 1 << (4 - i2);
            }
            if (i2 != 4) {
                iOooOO0o = cdo.OooOO0o(cdo.OooOO0O(iOooOO0o));
            }
        }
        if (sb.length() != 5) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (OooO0Oo(sb.toString()) == OooO0OO(i)) {
            return iOooOO0o;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int OooO0OO(int i) throws NotFoundException {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == OooO0OO[i2]) {
                return i2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int OooO0Oo(CharSequence charSequence) {
        int length = charSequence.length();
        int iCharAt = 0;
        for (int i = length - 2; i >= 0; i -= 2) {
            iCharAt += charSequence.charAt(i) - '0';
        }
        int iCharAt2 = iCharAt * 3;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            iCharAt2 += charSequence.charAt(i2) - '0';
        }
        return (iCharAt2 * 3) % 10;
    }

    private static Map<ResultMetadataType, Object> OooO0o(String str) {
        String strOooO0o0;
        if (str.length() != 5 || (strOooO0o0 = OooO0o0(str)) == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put(ResultMetadataType.SUGGESTED_PRICE, strOooO0o0);
        return enumMap;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String OooO0o0(String str) {
        char cCharAt = str.charAt(0);
        String str2 = "";
        if (cCharAt == '0') {
            str2 = "£";
        } else if (cCharAt == '5') {
            str2 = "$";
        } else if (cCharAt == '9') {
            str.hashCode();
            switch (str) {
                case "90000":
                    return null;
                case "99990":
                    return "Used";
                case "99991":
                    return "0.00";
            }
        }
        int i = Integer.parseInt(str.substring(1));
        String strValueOf = String.valueOf(i / 100);
        int i2 = i % 100;
        return str2 + strValueOf + FilenameUtils.EXTENSION_SEPARATOR + (i2 < 10 ? "0".concat(String.valueOf(i2)) : String.valueOf(i2));
    }

    public final em OooO0O0(int i, Cdo cdo, int[] iArr) throws NotFoundException {
        StringBuilder sb = this.OooO0O0;
        sb.setLength(0);
        int iOooO00o = OooO00o(cdo, iArr, sb);
        String string = sb.toString();
        Map<ResultMetadataType, Object> mapOooO0o = OooO0o(string);
        float f = i;
        em emVar = new em(string, null, new fm[]{new fm((iArr[0] + iArr[1]) / 2.0f, f), new fm(iOooO00o, f)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (mapOooO0o != null) {
            emVar.OooO(mapOooO0o);
        }
        return emVar;
    }
}

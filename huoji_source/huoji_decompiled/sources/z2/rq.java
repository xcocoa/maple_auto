package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class rq {
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
        for (int i2 = 0; i2 < 2 && iOooOO0o < iOooOOO0; i2++) {
            int iOooOO0 = uq.OooOO0(cdo, iArr2, iOooOO0o, uq.OooOO0);
            sb.append((char) ((iOooOO0 % 10) + 48));
            for (int i3 : iArr2) {
                iOooOO0o += i3;
            }
            if (iOooOO0 >= 10) {
                i |= 1 << (1 - i2);
            }
            if (i2 != 1) {
                iOooOO0o = cdo.OooOO0o(cdo.OooOO0O(iOooOO0o));
            }
        }
        if (sb.length() != 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (Integer.parseInt(sb.toString()) % 4 == i) {
            return iOooOO0o;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static Map<ResultMetadataType, Object> OooO0OO(String str) {
        if (str.length() != 2) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put(ResultMetadataType.ISSUE_NUMBER, Integer.valueOf(str));
        return enumMap;
    }

    public final em OooO0O0(int i, Cdo cdo, int[] iArr) throws NotFoundException {
        StringBuilder sb = this.OooO0O0;
        sb.setLength(0);
        int iOooO00o = OooO00o(cdo, iArr, sb);
        String string = sb.toString();
        Map<ResultMetadataType, Object> mapOooO0OO = OooO0OO(string);
        float f = i;
        em emVar = new em(string, null, new fm[]{new fm((iArr[0] + iArr[1]) / 2.0f, f), new fm(iOooO00o, f)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (mapOooO0OO != null) {
            emVar.OooO(mapOooO0OO);
        }
        return emVar;
    }
}

package z2;

import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import z2.gt;

/* JADX INFO: loaded from: classes2.dex */
public final class ot {
    private static final int[] OooO00o = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};
    public static final String OooO0O0 = "ISO-8859-1";

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[Mode.values().length];
            OooO00o = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private ot() {
    }

    private static int OooO(Mode mode, Cdo cdo, Cdo cdo2, gt gtVar) {
        return cdo.OooOOO0() + mode.getCharacterCountBits(gtVar) + cdo2.OooOOO0();
    }

    public static void OooO00o(String str, Cdo cdo, String str2) throws WriterException {
        try {
            for (byte b : str.getBytes(str2)) {
                cdo.OooO0OO(b, 8);
            }
        } catch (UnsupportedEncodingException e) {
            throw new WriterException(e);
        }
    }

    public static void OooO0O0(CharSequence charSequence, Cdo cdo) throws WriterException {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iOooOOo = OooOOo(charSequence.charAt(i));
            if (iOooOOo == -1) {
                throw new WriterException();
            }
            int i2 = i + 1;
            if (i2 < length) {
                int iOooOOo2 = OooOOo(charSequence.charAt(i2));
                if (iOooOOo2 == -1) {
                    throw new WriterException();
                }
                cdo.OooO0OO((iOooOOo * 45) + iOooOOo2, 11);
                i += 2;
            } else {
                cdo.OooO0OO(iOooOOo, 6);
                i = i2;
            }
        }
    }

    public static void OooO0OO(String str, Mode mode, Cdo cdo, String str2) throws WriterException {
        int i = OooO00o.OooO00o[mode.ordinal()];
        if (i == 1) {
            OooO0oo(str, cdo);
            return;
        }
        if (i == 2) {
            OooO0O0(str, cdo);
        } else if (i == 3) {
            OooO00o(str, cdo, str2);
        } else {
            if (i != 4) {
                throw new WriterException("Invalid mode: ".concat(String.valueOf(mode)));
            }
            OooO0o0(str, cdo);
        }
    }

    private static void OooO0Oo(CharacterSetECI characterSetECI, Cdo cdo) {
        cdo.OooO0OO(Mode.ECI.getBits(), 4);
        cdo.OooO0OO(characterSetECI.getValue(), 8);
    }

    public static void OooO0o(int i, gt gtVar, Mode mode, Cdo cdo) throws WriterException {
        int characterCountBits = mode.getCharacterCountBits(gtVar);
        int i2 = 1 << characterCountBits;
        if (i < i2) {
            cdo.OooO0OO(i, characterCountBits);
            return;
        }
        throw new WriterException(i + " is bigger than " + (i2 - 1));
    }

    public static void OooO0o0(String str, Cdo cdo) throws WriterException {
        int i;
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            for (int i2 = 0; i2 < length; i2 += 2) {
                int i3 = ((bytes[i2] & 255) << 8) | (bytes[i2 + 1] & 255);
                int i4 = 33088;
                if (i3 >= 33088 && i3 <= 40956) {
                    i = i3 - i4;
                } else if (i3 < 57408 || i3 > 60351) {
                    i = -1;
                } else {
                    i4 = 49472;
                    i = i3 - i4;
                }
                if (i == -1) {
                    throw new WriterException("Invalid byte sequence");
                }
                cdo.OooO0OO(((i >> 8) * 192) + (i & 255), 13);
            }
        } catch (UnsupportedEncodingException e) {
            throw new WriterException(e);
        }
    }

    public static void OooO0oO(Mode mode, Cdo cdo) {
        cdo.OooO0OO(mode.getBits(), 4);
    }

    public static void OooO0oo(CharSequence charSequence, Cdo cdo) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iCharAt = charSequence.charAt(i) - '0';
            int i2 = i + 2;
            if (i2 < length) {
                cdo.OooO0OO((iCharAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i2) - '0'), 10);
                i += 3;
            } else {
                i++;
                if (i < length) {
                    cdo.OooO0OO((iCharAt * 10) + (charSequence.charAt(i) - '0'), 7);
                    i = i2;
                } else {
                    cdo.OooO0OO(iCharAt, 4);
                }
            }
        }
    }

    private static int OooOO0(nt ntVar) {
        return pt.OooO00o(ntVar) + pt.OooO0OO(ntVar) + pt.OooO0Oo(ntVar) + pt.OooO0o0(ntVar);
    }

    private static int OooOO0O(Cdo cdo, ErrorCorrectionLevel errorCorrectionLevel, gt gtVar, nt ntVar) throws WriterException {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < 8; i3++) {
            qt.OooO00o(cdo, errorCorrectionLevel, gtVar, i3, ntVar);
            int iOooOO0 = OooOO0(ntVar);
            if (iOooOO0 < i) {
                i2 = i3;
                i = iOooOO0;
            }
        }
        return i2;
    }

    public static Mode OooOO0o(String str) {
        return OooOOO0(str, null);
    }

    private static gt OooOOO(int i, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        for (int i2 = 1; i2 <= 40; i2++) {
            gt gtVarOooO = gt.OooO(i2);
            if (OooOo(i, gtVarOooO, errorCorrectionLevel)) {
                return gtVarOooO;
            }
        }
        throw new WriterException("Data too big");
    }

    private static Mode OooOOO0(String str, String str2) {
        if ("Shift_JIS".equals(str2) && OooOo0(str)) {
            return Mode.KANJI;
        }
        boolean z = false;
        boolean z3 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z3 = true;
            } else {
                if (OooOOo(cCharAt) == -1) {
                    return Mode.BYTE;
                }
                z = true;
            }
        }
        return z ? Mode.ALPHANUMERIC : z3 ? Mode.NUMERIC : Mode.BYTE;
    }

    public static rt OooOOOO(String str, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        return OooOOOo(str, errorCorrectionLevel, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static rt OooOOOo(String str, ErrorCorrectionLevel errorCorrectionLevel, Map<EncodeHintType, ?> map) throws WriterException {
        gt gtVarOooOo0O;
        CharacterSetECI characterSetECIByName;
        boolean z = map != null && map.containsKey(EncodeHintType.CHARACTER_SET);
        String string = z ? map.get(EncodeHintType.CHARACTER_SET).toString() : "ISO-8859-1";
        Mode modeOooOOO0 = OooOOO0(str, string);
        Cdo cdo = new Cdo();
        Mode mode = Mode.BYTE;
        if (modeOooOOO0 == mode && z && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(string)) != null) {
            OooO0Oo(characterSetECIByName, cdo);
        }
        if ((map != null && map.containsKey(EncodeHintType.GS1_FORMAT)) && Boolean.valueOf(map.get(EncodeHintType.GS1_FORMAT).toString()).booleanValue()) {
            OooO0oO(Mode.FNC1_FIRST_POSITION, cdo);
        }
        OooO0oO(modeOooOOO0, cdo);
        Cdo cdo2 = new Cdo();
        OooO0OO(str, modeOooOOO0, cdo2, string);
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.QR_VERSION;
            if (map.containsKey(encodeHintType)) {
                gtVarOooOo0O = gt.OooO(Integer.parseInt(map.get(encodeHintType).toString()));
                if (!OooOo(OooO(modeOooOOO0, cdo, cdo2, gtVarOooOo0O), gtVarOooOo0O, errorCorrectionLevel)) {
                    throw new WriterException("Data too big for requested version");
                }
            } else {
                gtVarOooOo0O = OooOo0O(errorCorrectionLevel, modeOooOOO0, cdo, cdo2);
            }
        }
        Cdo cdo3 = new Cdo();
        cdo3.OooO0O0(cdo);
        OooO0o(modeOooOOO0 == mode ? cdo2.OooOOO() : str.length(), gtVarOooOo0O, modeOooOOO0, cdo3);
        cdo3.OooO0O0(cdo2);
        gt.OooO0O0 oooO0O0OooO0o = gtVarOooOo0O.OooO0o(errorCorrectionLevel);
        int iOooO0oo = gtVarOooOo0O.OooO0oo() - oooO0O0OooO0o.OooO0Oo();
        OooOo0o(iOooO0oo, cdo3);
        Cdo cdoOooOo00 = OooOo00(cdo3, gtVarOooOo0O.OooO0oo(), iOooO0oo, oooO0O0OooO0o.OooO0OO());
        rt rtVar = new rt();
        rtVar.OooO0oO(errorCorrectionLevel);
        rtVar.OooOO0(modeOooOOO0);
        rtVar.OooOO0O(gtVarOooOo0O);
        int iOooO0o0 = gtVarOooOo0O.OooO0o0();
        nt ntVar = new nt(iOooO0o0, iOooO0o0);
        int iOooOO0O = OooOO0O(cdoOooOo00, errorCorrectionLevel, gtVarOooOo0O, ntVar);
        rtVar.OooO0oo(iOooOO0O);
        qt.OooO00o(cdoOooOo00, errorCorrectionLevel, gtVarOooOo0O, iOooOO0O, ntVar);
        rtVar.OooO(ntVar);
        return rtVar;
    }

    public static int OooOOo(int i) {
        int[] iArr = OooO00o;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    public static byte[] OooOOo0(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new vo(so.OooOO0o).OooO0O0(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    public static void OooOOoo(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) throws WriterException {
        if (i4 >= i3) {
            throw new WriterException("Block ID too large");
        }
        int i5 = i % i3;
        int i6 = i3 - i5;
        int i7 = i / i3;
        int i8 = i7 + 1;
        int i9 = i2 / i3;
        int i10 = i9 + 1;
        int i11 = i7 - i9;
        int i12 = i8 - i10;
        if (i11 != i12) {
            throw new WriterException("EC bytes mismatch");
        }
        if (i3 != i6 + i5) {
            throw new WriterException("RS blocks mismatch");
        }
        if (i != ((i9 + i11) * i6) + ((i10 + i12) * i5)) {
            throw new WriterException("Total bytes mismatch");
        }
        if (i4 < i6) {
            iArr[0] = i9;
            iArr2[0] = i11;
        } else {
            iArr[0] = i10;
            iArr2[0] = i12;
        }
    }

    private static boolean OooOo(int i, gt gtVar, ErrorCorrectionLevel errorCorrectionLevel) {
        return gtVar.OooO0oo() - gtVar.OooO0o(errorCorrectionLevel).OooO0Oo() >= (i + 7) / 8;
    }

    private static boolean OooOo0(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & 255;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    public static Cdo OooOo00(Cdo cdo, int i, int i2, int i3) throws WriterException {
        if (cdo.OooOOO() != i2) {
            throw new WriterException("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            OooOOoo(i, i2, i3, i5, iArr, iArr2);
            int i6 = iArr[0];
            byte[] bArr = new byte[i6];
            cdo.OooOo0(i4 << 3, bArr, 0, i6);
            byte[] bArrOooOOo0 = OooOOo0(bArr, iArr2[0]);
            arrayList.add(new mt(bArr, bArrOooOOo0));
            iMax = Math.max(iMax, i6);
            iMax2 = Math.max(iMax2, bArrOooOOo0.length);
            i4 += iArr[0];
        }
        if (i2 != i4) {
            throw new WriterException("Data bytes does not match offset");
        }
        Cdo cdo2 = new Cdo();
        for (int i7 = 0; i7 < iMax; i7++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArrOooO00o = ((mt) it.next()).OooO00o();
                if (i7 < bArrOooO00o.length) {
                    cdo2.OooO0OO(bArrOooO00o[i7], 8);
                }
            }
        }
        for (int i8 = 0; i8 < iMax2; i8++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArrOooO0O0 = ((mt) it2.next()).OooO0O0();
                if (i8 < bArrOooO0O0.length) {
                    cdo2.OooO0OO(bArrOooO0O0[i8], 8);
                }
            }
        }
        if (i == cdo2.OooOOO()) {
            return cdo2;
        }
        throw new WriterException("Interleaving error: " + i + " and " + cdo2.OooOOO() + " differ.");
    }

    private static gt OooOo0O(ErrorCorrectionLevel errorCorrectionLevel, Mode mode, Cdo cdo, Cdo cdo2) throws WriterException {
        return OooOOO(OooO(mode, cdo, cdo2, OooOOO(OooO(mode, cdo, cdo2, gt.OooO(1)), errorCorrectionLevel)), errorCorrectionLevel);
    }

    public static void OooOo0o(int i, Cdo cdo) throws WriterException {
        int i2 = i << 3;
        if (cdo.OooOOO0() > i2) {
            throw new WriterException("data bits cannot fit in the QR Code" + cdo.OooOOO0() + " > " + i2);
        }
        for (int i3 = 0; i3 < 4 && cdo.OooOOO0() < i2; i3++) {
            cdo.OooO00o(false);
        }
        int iOooOOO0 = cdo.OooOOO0() & 7;
        if (iOooOOO0 > 0) {
            while (iOooOOO0 < 8) {
                cdo.OooO00o(false);
                iOooOOO0++;
            }
        }
        int iOooOOO = i - cdo.OooOOO();
        for (int i4 = 0; i4 < iOooOOO; i4++) {
            cdo.OooO0OO((i4 & 1) == 0 ? 236 : 17, 8);
        }
        if (cdo.OooOOO0() != i2) {
            throw new WriterException("Bits size does not equal capacity");
        }
    }
}

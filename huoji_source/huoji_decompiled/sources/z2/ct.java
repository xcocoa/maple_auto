package z2;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ct {
    private static final char[] OooO00o = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();
    private static final int OooO0O0 = 1;

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
            try {
                OooO00o[Mode.TERMINATOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO00o[Mode.FNC1_FIRST_POSITION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                OooO00o[Mode.FNC1_SECOND_POSITION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                OooO00o[Mode.STRUCTURED_APPEND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                OooO00o[Mode.ECI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                OooO00o[Mode.HANZI.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private ct() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d9 A[LOOP:0: B:52:0x001e->B:49:0x00d9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static go OooO00o(byte[] bArr, gt gtVar, ErrorCorrectionLevel errorCorrectionLevel, Map<DecodeHintType, ?> map) throws FormatException {
        Mode mode;
        fo foVar = new fo(bArr);
        StringBuilder sb = new StringBuilder(50);
        int i = 1;
        ArrayList arrayList = new ArrayList(1);
        CharacterSetECI characterSetECIByValue = null;
        boolean z = false;
        int i2 = -1;
        int iOooO0Oo = -1;
        while (true) {
            try {
                Mode modeForBits = foVar.OooO00o() < 4 ? Mode.TERMINATOR : Mode.forBits(foVar.OooO0Oo(4));
                int[] iArr = OooO00o.OooO00o;
                switch (iArr[modeForBits.ordinal()]) {
                    case 5:
                        mode = modeForBits;
                        if (mode != Mode.TERMINATOR) {
                            return new go(bArr, sb.toString(), arrayList.isEmpty() ? null : arrayList, errorCorrectionLevel == null ? null : errorCorrectionLevel.toString(), i2, iOooO0Oo);
                        }
                        i = 1;
                        break;
                    case 6:
                    case 7:
                        mode = modeForBits;
                        z = true;
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                    case 8:
                        if (foVar.OooO00o() < 16) {
                            throw FormatException.getFormatInstance();
                        }
                        int iOooO0Oo2 = foVar.OooO0Oo(8);
                        iOooO0Oo = foVar.OooO0Oo(8);
                        i2 = iOooO0Oo2;
                        mode = modeForBits;
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                    case 9:
                        characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(OooO0oO(foVar));
                        if (characterSetECIByValue == null) {
                            throw FormatException.getFormatInstance();
                        }
                        mode = modeForBits;
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                    case 10:
                        int iOooO0Oo3 = foVar.OooO0Oo(4);
                        int iOooO0Oo4 = foVar.OooO0Oo(modeForBits.getCharacterCountBits(gtVar));
                        if (iOooO0Oo3 == i) {
                            OooO0Oo(foVar, sb, iOooO0Oo4);
                        }
                        mode = modeForBits;
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                    default:
                        int iOooO0Oo5 = foVar.OooO0Oo(modeForBits.getCharacterCountBits(gtVar));
                        int i3 = iArr[modeForBits.ordinal()];
                        if (i3 == i) {
                            mode = modeForBits;
                            OooO0o(foVar, sb, iOooO0Oo5);
                        } else if (i3 == 2) {
                            mode = modeForBits;
                            OooO0O0(foVar, sb, iOooO0Oo5, z);
                        } else if (i3 == 3) {
                            mode = modeForBits;
                            OooO0OO(foVar, sb, iOooO0Oo5, characterSetECIByValue, arrayList, map);
                        } else {
                            if (i3 != 4) {
                                throw FormatException.getFormatInstance();
                            }
                            OooO0o0(foVar, sb, iOooO0Oo5);
                            mode = modeForBits;
                        }
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                }
            } catch (IllegalArgumentException unused) {
                throw FormatException.getFormatInstance();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void OooO0O0(fo foVar, StringBuilder sb, int i, boolean z) throws FormatException {
        while (i > 1) {
            if (foVar.OooO00o() < 11) {
                throw FormatException.getFormatInstance();
            }
            int iOooO0Oo = foVar.OooO0Oo(11);
            sb.append(OooO0oo(iOooO0Oo / 45));
            sb.append(OooO0oo(iOooO0Oo % 45));
            i -= 2;
        }
        if (i == 1) {
            if (foVar.OooO00o() < 6) {
                throw FormatException.getFormatInstance();
            }
            sb.append(OooO0oo(foVar.OooO0Oo(6)));
        }
        if (z) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i2 = length + 1;
                        if (sb.charAt(i2) == '%') {
                            sb.deleteCharAt(i2);
                        } else {
                            sb.setCharAt(length, (char) 29);
                        }
                    }
                }
            }
        }
    }

    private static void OooO0OO(fo foVar, StringBuilder sb, int i, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) throws FormatException {
        if ((i << 3) > foVar.OooO00o()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) foVar.OooO0Oo(8);
        }
        try {
            sb.append(new String(bArr, characterSetECI == null ? no.OooO00o(bArr, map) : characterSetECI.name()));
            collection.add(bArr);
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void OooO0Oo(fo foVar, StringBuilder sb, int i) throws FormatException {
        if (i * 13 > foVar.OooO00o()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int iOooO0Oo = foVar.OooO0Oo(13);
            int i3 = (iOooO0Oo % 96) | ((iOooO0Oo / 96) << 8);
            int i4 = i3 + (i3 < 959 ? 41377 : 42657);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, no.OooO0OO));
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void OooO0o(fo foVar, StringBuilder sb, int i) throws FormatException {
        while (i >= 3) {
            if (foVar.OooO00o() < 10) {
                throw FormatException.getFormatInstance();
            }
            int iOooO0Oo = foVar.OooO0Oo(10);
            if (iOooO0Oo >= 1000) {
                throw FormatException.getFormatInstance();
            }
            sb.append(OooO0oo(iOooO0Oo / 100));
            sb.append(OooO0oo((iOooO0Oo / 10) % 10));
            sb.append(OooO0oo(iOooO0Oo % 10));
            i -= 3;
        }
        if (i == 2) {
            if (foVar.OooO00o() < 7) {
                throw FormatException.getFormatInstance();
            }
            int iOooO0Oo2 = foVar.OooO0Oo(7);
            if (iOooO0Oo2 >= 100) {
                throw FormatException.getFormatInstance();
            }
            sb.append(OooO0oo(iOooO0Oo2 / 10));
            sb.append(OooO0oo(iOooO0Oo2 % 10));
            return;
        }
        if (i == 1) {
            if (foVar.OooO00o() < 4) {
                throw FormatException.getFormatInstance();
            }
            int iOooO0Oo3 = foVar.OooO0Oo(4);
            if (iOooO0Oo3 >= 10) {
                throw FormatException.getFormatInstance();
            }
            sb.append(OooO0oo(iOooO0Oo3));
        }
    }

    private static void OooO0o0(fo foVar, StringBuilder sb, int i) throws FormatException {
        if (i * 13 > foVar.OooO00o()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int iOooO0Oo = foVar.OooO0Oo(13);
            int i3 = (iOooO0Oo % 192) | ((iOooO0Oo / 192) << 8);
            int i4 = i3 + (i3 < 7936 ? 33088 : 49472);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, no.OooO0O0));
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    private static int OooO0oO(fo foVar) throws FormatException {
        int iOooO0Oo = foVar.OooO0Oo(8);
        if ((iOooO0Oo & 128) == 0) {
            return iOooO0Oo & 127;
        }
        if ((iOooO0Oo & 192) == 128) {
            return foVar.OooO0Oo(8) | ((iOooO0Oo & 63) << 8);
        }
        if ((iOooO0Oo & 224) == 192) {
            return foVar.OooO0Oo(16) | ((iOooO0Oo & 31) << 16);
        }
        throw FormatException.getFormatInstance();
    }

    private static char OooO0oo(int i) throws FormatException {
        char[] cArr = OooO00o;
        if (i < cArr.length) {
            return cArr[i];
        }
        throw FormatException.getFormatInstance();
    }
}

package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import z2.cs;
import z2.go;

/* JADX INFO: loaded from: classes2.dex */
public final class DecodedBitStreamParser {
    private static final int OooO = 923;
    private static final int OooO00o = 900;
    private static final int OooO0O0 = 901;
    private static final int OooO0OO = 902;
    private static final int OooO0Oo = 924;
    private static final int OooO0o = 926;
    private static final int OooO0o0 = 925;
    private static final int OooO0oO = 927;
    private static final int OooO0oo = 928;
    private static final int OooOO0 = 922;
    private static final int OooOO0O = 913;
    private static final int OooOO0o = 15;
    private static final int OooOOO = 1;
    private static final int OooOOO0 = 0;
    private static final int OooOOOO = 2;
    private static final int OooOOOo = 3;
    private static final int OooOOo = 5;
    private static final int OooOOo0 = 4;
    private static final int OooOOoo = 6;
    private static final int OooOo = 28;
    private static final int OooOo0 = 27;
    private static final int OooOo00 = 25;
    private static final int OooOo0O = 27;
    private static final int OooOo0o = 28;
    private static final int OooOoO = 29;
    private static final int OooOoO0 = 29;
    private static final BigInteger[] OooOoo;
    private static final int OooOooO = 2;
    private static final char[] OooOoOO = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();
    private static final char[] OooOoo0 = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    public enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[Mode.values().length];
            OooO00o = iArr;
            try {
                iArr[Mode.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[Mode.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[Mode.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[Mode.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[Mode.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO00o[Mode.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        OooOoo = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = OooOoo;
            if (i >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(bigIntegerValueOf);
            i++;
        }
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x0077. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:34:0x007a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0021 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:29:0x0065
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int OooO00o(int r16, int[] r17, java.nio.charset.Charset r18, int r19, java.lang.StringBuilder r20) {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.OooO00o(int, int[], java.nio.charset.Charset, int, java.lang.StringBuilder):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static go OooO0O0(int[] iArr, String str) throws FormatException {
        int iOooO0oO;
        StringBuilder sb = new StringBuilder(iArr.length << 1);
        Charset charsetForName = StandardCharsets.ISO_8859_1;
        int i = iArr[1];
        cs csVar = new cs();
        int i2 = 2;
        while (i2 < iArr[0]) {
            if (i != OooOO0O) {
                switch (i) {
                    case 900:
                        iOooO0oO = OooO0oO(iArr, i2, sb);
                        break;
                    case OooO0O0 /* 901 */:
                        iOooO0oO = OooO00o(i, iArr, charsetForName, i2, sb);
                        break;
                    case OooO0OO /* 902 */:
                        iOooO0oO = OooO0o(iArr, i2, sb);
                        break;
                    default:
                        switch (i) {
                            case OooOO0 /* 922 */:
                            case OooO /* 923 */:
                                throw FormatException.getFormatInstance();
                            case OooO0Oo /* 924 */:
                                break;
                            case OooO0o0 /* 925 */:
                                iOooO0oO = i2 + 1;
                                break;
                            case OooO0o /* 926 */:
                                iOooO0oO = i2 + 2;
                                break;
                            case OooO0oO /* 927 */:
                                iOooO0oO = i2 + 1;
                                charsetForName = Charset.forName(CharacterSetECI.getCharacterSetECIByValue(iArr[i2]).name());
                                break;
                            case 928:
                                iOooO0oO = OooO0Oo(iArr, i2, csVar);
                                break;
                            default:
                                i2--;
                                iOooO0oO = OooO0oO(iArr, i2, sb);
                                break;
                        }
                        break;
                }
            } else {
                iOooO0oO = i2 + 1;
                sb.append((char) iArr[i2]);
            }
            if (iOooO0oO >= iArr.length) {
                throw FormatException.getFormatInstance();
            }
            i2 = iOooO0oO + 1;
            i = iArr[iOooO0oO];
        }
        if (sb.length() == 0) {
            throw FormatException.getFormatInstance();
        }
        go goVar = new go(null, sb.toString(), null, str);
        goVar.OooOOOO(csVar);
        return goVar;
    }

    private static String OooO0OO(int[] iArr, int i) throws FormatException {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigIntegerAdd = bigIntegerAdd.add(OooOoo[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw FormatException.getFormatInstance();
    }

    public static int OooO0Oo(int[] iArr, int i, cs csVar) throws FormatException {
        if (i + 2 > iArr[0]) {
            throw FormatException.getFormatInstance();
        }
        int[] iArr2 = new int[2];
        int i2 = 0;
        while (i2 < 2) {
            iArr2[i2] = iArr[i];
            i2++;
            i++;
        }
        csVar.OooOo00(Integer.parseInt(OooO0OO(iArr2, 2)));
        StringBuilder sb = new StringBuilder();
        int iOooO0oO = OooO0oO(iArr, i, sb);
        csVar.OooOOO(sb.toString());
        int i3 = iArr[iOooO0oO] == OooO ? iOooO0oO + 1 : -1;
        while (iOooO0oO < iArr[0]) {
            int i4 = iArr[iOooO0oO];
            if (i4 == OooOO0) {
                iOooO0oO++;
                csVar.OooOOo0(true);
            } else {
                if (i4 != OooO) {
                    throw FormatException.getFormatInstance();
                }
                int i5 = iOooO0oO + 1;
                switch (iArr[i5]) {
                    case 0:
                        StringBuilder sb2 = new StringBuilder();
                        iOooO0oO = OooO0oO(iArr, i5 + 1, sb2);
                        csVar.OooOOOO(sb2.toString());
                        break;
                    case 1:
                        StringBuilder sb3 = new StringBuilder();
                        iOooO0oO = OooO0o(iArr, i5 + 1, sb3);
                        csVar.OooOOoo(Integer.parseInt(sb3.toString()));
                        break;
                    case 2:
                        StringBuilder sb4 = new StringBuilder();
                        iOooO0oO = OooO0o(iArr, i5 + 1, sb4);
                        csVar.OooOo0O(Long.parseLong(sb4.toString()));
                        break;
                    case 3:
                        StringBuilder sb5 = new StringBuilder();
                        iOooO0oO = OooO0oO(iArr, i5 + 1, sb5);
                        csVar.OooOo0(sb5.toString());
                        break;
                    case 4:
                        StringBuilder sb6 = new StringBuilder();
                        iOooO0oO = OooO0oO(iArr, i5 + 1, sb6);
                        csVar.OooOO0o(sb6.toString());
                        break;
                    case 5:
                        StringBuilder sb7 = new StringBuilder();
                        iOooO0oO = OooO0o(iArr, i5 + 1, sb7);
                        csVar.OooOOOo(Long.parseLong(sb7.toString()));
                        break;
                    case 6:
                        StringBuilder sb8 = new StringBuilder();
                        iOooO0oO = OooO0o(iArr, i5 + 1, sb8);
                        csVar.OooOOO0(Integer.parseInt(sb8.toString()));
                        break;
                    default:
                        throw FormatException.getFormatInstance();
                }
            }
        }
        if (i3 != -1) {
            int i6 = iOooO0oO - i3;
            if (csVar.OooOO0O()) {
                i6--;
            }
            csVar.OooOOo(Arrays.copyOfRange(iArr, i3, i6 + i3));
        }
        return iOooO0oO;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int OooO0o(int[] iArr, int i, StringBuilder sb) throws FormatException {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i3 == iArr[0]) {
                z = true;
            }
            if (i4 < 900) {
                iArr2[i2] = i4;
                i2++;
            } else if (i4 == 900 || i4 == OooO0O0 || i4 == 928) {
                i3--;
                z = true;
            } else {
                switch (i4) {
                }
            }
            if ((i2 % 15 == 0 || i4 == OooO0OO || z) && i2 > 0) {
                sb.append(OooO0OO(iArr2, i2));
                i2 = 0;
            }
            i = i3;
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a5 A[PHI: r0
      0x00a5: PHI (r0v2 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode) = 
      (r0v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v3 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v4 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v6 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v7 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
      (r0v8 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
     binds: [B:5:0x001b, B:51:0x008e, B:55:0x0099, B:42:0x007a, B:56:0x009c, B:33:0x0064, B:36:0x006b, B:58:0x00a1, B:25:0x0050, B:35:0x0068, B:14:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void OooO0o0(int[] iArr, int[] iArr2, int i, StringBuilder sb) {
        int i2;
        int i3;
        Mode mode;
        Mode mode2 = Mode.ALPHA;
        Mode mode3 = mode2;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = iArr[i4];
            char c = ' ';
            switch (OooO00o.OooO00o[mode2.ordinal()]) {
                case 1:
                    if (i5 < 26) {
                        i3 = i5 + 65;
                        c = (char) i3;
                    } else {
                        if (i5 == 900) {
                            mode2 = Mode.ALPHA;
                        } else if (i5 != OooOO0O) {
                            switch (i5) {
                                case 27:
                                    mode2 = Mode.LOWER;
                                    break;
                                case 28:
                                    mode2 = Mode.MIXED;
                                    break;
                                case 29:
                                    mode = Mode.PUNCT_SHIFT;
                                    c = 0;
                                    Mode mode4 = mode;
                                    mode3 = mode2;
                                    mode2 = mode4;
                                    break;
                            }
                        } else {
                            i2 = iArr2[i4];
                            sb.append((char) i2);
                        }
                        c = 0;
                    }
                    break;
                case 2:
                    if (i5 < 26) {
                        i3 = i5 + 97;
                        c = (char) i3;
                    } else {
                        if (i5 != 900) {
                            if (i5 != OooOO0O) {
                                switch (i5) {
                                    case 27:
                                        mode = Mode.ALPHA_SHIFT;
                                        c = 0;
                                        Mode mode42 = mode;
                                        mode3 = mode2;
                                        mode2 = mode42;
                                }
                            } else {
                                i2 = iArr2[i4];
                                sb.append((char) i2);
                            }
                            break;
                        }
                        c = 0;
                    }
                    break;
                case 3:
                    if (i5 < 25) {
                        c = OooOoo0[i5];
                        break;
                    } else if (i5 != 900) {
                        if (i5 == OooOO0O) {
                            i2 = iArr2[i4];
                            sb.append((char) i2);
                            c = 0;
                            break;
                        } else {
                            switch (i5) {
                                case 25:
                                    mode2 = Mode.PUNCT;
                                    c = 0;
                                    break;
                                case 26:
                                    break;
                                case 27:
                                    break;
                                case 28:
                                    break;
                                case 29:
                                    break;
                                default:
                                    c = 0;
                                    break;
                            }
                        }
                    }
                    break;
                case 4:
                    if (i5 < 29) {
                        c = OooOoOO[i5];
                    } else {
                        if (i5 != 29 && i5 != 900) {
                            if (i5 == OooOO0O) {
                                i2 = iArr2[i4];
                                sb.append((char) i2);
                            }
                        }
                        c = 0;
                    }
                    break;
                case 5:
                    if (i5 < 26) {
                        c = (char) (i5 + 65);
                    } else if (i5 != 26) {
                        if (i5 != 900) {
                            mode2 = mode3;
                        }
                        c = 0;
                    }
                    mode2 = mode3;
                    break;
                case 6:
                    if (i5 < 29) {
                        c = OooOoOO[i5];
                        mode2 = mode3;
                    } else {
                        if (i5 != 29 && i5 != 900) {
                            if (i5 == OooOO0O) {
                                sb.append((char) iArr2[i4]);
                            }
                            mode2 = mode3;
                            c = 0;
                        }
                        mode2 = Mode.ALPHA;
                        c = 0;
                    }
                    break;
            }
            if (c != 0) {
                sb.append(c);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0034. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0037. Please report as an issue. */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1067)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1092)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1092)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1092)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private static int OooO0oO(int[] r9, int r10, java.lang.StringBuilder r11) {
        /*
            r0 = 0
            r1 = r9[r0]
            int r1 = r1 - r10
            r2 = 1
            int r1 = r1 << r2
            int[] r1 = new int[r1]
            r3 = r9[r0]
            int r3 = r3 - r10
            int r3 = r3 << r2
            int[] r3 = new int[r3]
            r4 = 0
            r5 = 0
        L10:
            r6 = r9[r0]
            if (r10 >= r6) goto L50
            if (r4 != 0) goto L50
            int r6 = r10 + 1
            r10 = r9[r10]
            r7 = 900(0x384, float:1.261E-42)
            if (r10 >= r7) goto L2c
            int r7 = r10 / 30
            r1[r5] = r7
            int r7 = r5 + 1
            int r10 = r10 % 30
            r1[r7] = r10
            int r5 = r5 + 2
        L2a:
            r10 = r6
            goto L10
        L2c:
            r8 = 913(0x391, float:1.28E-42)
            if (r10 == r8) goto L45
            r8 = 928(0x3a0, float:1.3E-42)
            if (r10 == r8) goto L41
            switch(r10) {
                case 900: goto L3b;
                case 901: goto L41;
                case 902: goto L41;
                default: goto L37;
            }
        L37:
            switch(r10) {
                case 922: goto L41;
                case 923: goto L41;
                case 924: goto L41;
                default: goto L3a;
            }
        L3a:
            goto L2a
        L3b:
            int r10 = r5 + 1
            r1[r5] = r7
            r5 = r10
            goto L2a
        L41:
            int r10 = r6 + (-1)
            r4 = 1
            goto L10
        L45:
            r1[r5] = r8
            int r10 = r6 + 1
            r6 = r9[r6]
            r3[r5] = r6
            int r5 = r5 + 1
            goto L10
        L50:
            OooO0o0(r1, r3, r5, r11)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.OooO0oO(int[], int, java.lang.StringBuilder):int");
    }
}

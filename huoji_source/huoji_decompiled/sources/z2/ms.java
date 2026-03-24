package z2;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.pdf417.decoder.DecodedBitStreamParser;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Formatter;

/* JADX INFO: loaded from: classes2.dex */
public final class ms {
    private static final int OooO00o = 2;
    private static final int OooO0O0 = 3;
    private static final int OooO0OO = 512;
    private static final ns OooO0Oo = new ns();

    private ms() {
    }

    public static go OooO(eo eoVar, fm fmVar, fm fmVar2, fm fmVar3, fm fmVar4, int i, int i2) throws NotFoundException, ChecksumException, FormatException {
        int i3;
        int i4;
        int i5;
        ks ksVarOooOOoo = null;
        ks ksVarOooOOoo2 = null;
        is isVarOooOo0O = null;
        gs gsVar = new gs(eoVar, fmVar, fmVar2, fmVar3, fmVar4);
        for (int i6 = 0; i6 < 2; i6++) {
            if (fmVar != null) {
                ksVarOooOOoo = OooOOoo(eoVar, gsVar, fmVar, true, i, i2);
            }
            if (fmVar3 != null) {
                ksVarOooOOoo2 = OooOOoo(eoVar, gsVar, fmVar3, false, i, i2);
            }
            isVarOooOo0O = OooOo0O(ksVarOooOOoo, ksVarOooOOoo2);
            if (isVarOooOo0O == null) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (i6 != 0 || isVarOooOo0O.OooOOO0() == null || (isVarOooOo0O.OooOOO0().OooO0oO() >= gsVar.OooO0oO() && isVarOooOo0O.OooOOO0().OooO0o0() <= gsVar.OooO0o0())) {
                isVarOooOo0O.OooOOOo(gsVar);
                break;
            }
            gsVar = isVarOooOo0O.OooOOO0();
        }
        int iOooOO0 = isVarOooOo0O.OooOO0() + 1;
        isVarOooOo0O.OooOOo0(0, ksVarOooOOoo);
        isVarOooOo0O.OooOOo0(iOooOO0, ksVarOooOOoo2);
        boolean z = ksVarOooOOoo != null;
        int iMin = i;
        int iMax = i2;
        for (int i7 = 1; i7 <= iOooOO0; i7++) {
            int i8 = z ? i7 : iOooOO0 - i7;
            if (isVarOooOo0O.OooOOO(i8) == null) {
                js ksVar = (i8 == 0 || i8 == iOooOO0) ? new ks(gsVar, i8 == 0) : new js(gsVar);
                isVarOooOo0O.OooOOo0(i8, ksVar);
                int i9 = -1;
                int iOooO0oO = gsVar.OooO0oO();
                int i10 = -1;
                while (iOooO0oO <= gsVar.OooO0o0()) {
                    int iOooOo00 = OooOo00(isVarOooOo0O, i8, iOooO0oO, z);
                    if (iOooOo00 >= 0 && iOooOo00 <= gsVar.OooO0Oo()) {
                        i5 = iOooOo00;
                    } else if (i10 != i9) {
                        i5 = i10;
                    } else {
                        i3 = i10;
                        i4 = iOooO0oO;
                        i10 = i3;
                        iOooO0oO = i4 + 1;
                        i9 = -1;
                    }
                    i3 = i10;
                    int i11 = iOooO0oO;
                    hs hsVarOooOO0O = OooOO0O(eoVar, gsVar.OooO0o(), gsVar.OooO0Oo(), z, i5, i11, iMin, iMax);
                    i4 = i11;
                    if (hsVarOooOO0O != null) {
                        ksVar.OooO0o(i4, hsVarOooOO0O);
                        iMin = Math.min(iMin, hsVarOooOO0O.OooO0o());
                        iMax = Math.max(iMax, hsVarOooOO0O.OooO0o());
                        i10 = i5;
                    } else {
                        i10 = i3;
                    }
                    iOooO0oO = i4 + 1;
                    i9 = -1;
                }
            }
        }
        return OooO0oO(isVarOooOo0O);
    }

    private static gs OooO00o(ks ksVar) throws NotFoundException {
        int[] iArrOooOO0;
        if (ksVar == null || (iArrOooOO0 = ksVar.OooOO0()) == null) {
            return null;
        }
        int iOooOOOo = OooOOOo(iArrOooOO0);
        int i = 0;
        int i2 = 0;
        for (int i3 : iArrOooOO0) {
            i2 += iOooOOOo - i3;
            if (i3 > 0) {
                break;
            }
        }
        hs[] hsVarArrOooO0Oo = ksVar.OooO0Oo();
        for (int i4 = 0; i2 > 0 && hsVarArrOooO0Oo[i4] == null; i4++) {
            i2--;
        }
        for (int length = iArrOooOO0.length - 1; length >= 0; length--) {
            i += iOooOOOo - iArrOooOO0[length];
            if (iArrOooOO0[length] > 0) {
                break;
            }
        }
        for (int length2 = hsVarArrOooO0Oo.length - 1; i > 0 && hsVarArrOooO0Oo[length2] == null; length2--) {
            i--;
        }
        return ksVar.OooO00o().OooO00o(i2, i, ksVar.OooOO0O());
    }

    private static void OooO0O0(is isVar, fs[][] fsVarArr) throws NotFoundException {
        fs fsVar = fsVarArr[0][1];
        int[] iArrOooO0O0 = fsVar.OooO0O0();
        int iOooOO0 = (isVar.OooOO0() * isVar.OooOO0o()) - OooOOo(isVar.OooOO0O());
        if (iArrOooO0O0.length != 0) {
            if (iArrOooO0O0[0] != iOooOO0) {
                fsVar.OooO0OO(iOooOO0);
            }
        } else {
            if (iOooOO0 <= 0 || iOooOO0 > 928) {
                throw NotFoundException.getNotFoundInstance();
            }
            fsVar.OooO0OO(iOooOO0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0022, code lost:
    
        r0 = -r0;
        r8 = !r8;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int OooO0OO(eo eoVar, int i, int i2, boolean z, int i3, int i4) {
        int i5 = z ? -1 : 1;
        int i6 = 0;
        int i7 = i3;
        while (i6 < 2) {
            while (true) {
                if (z) {
                    if (i7 >= i) {
                        if (z == eoVar.OooO0o0(i7, i4)) {
                            if (Math.abs(i3 - i7) > 2) {
                                return i3;
                            }
                            i7 += i5;
                        }
                    }
                } else if (i7 < i2) {
                }
            }
        }
        return i7;
    }

    private static boolean OooO0Oo(int i, int i2, int i3) {
        return i2 + (-2) <= i && i <= i3 + 2;
    }

    private static fs[][] OooO0o(is isVar) {
        int iOooO0OO;
        fs[][] fsVarArr = (fs[][]) Array.newInstance((Class<?>) fs.class, isVar.OooOO0o(), isVar.OooOO0() + 2);
        for (int i = 0; i < fsVarArr.length; i++) {
            for (int i2 = 0; i2 < fsVarArr[i].length; i2++) {
                fsVarArr[i][i2] = new fs();
            }
        }
        int i3 = 0;
        for (js jsVar : isVar.OooOOOO()) {
            if (jsVar != null) {
                for (hs hsVar : jsVar.OooO0Oo()) {
                    if (hsVar != null && (iOooO0OO = hsVar.OooO0OO()) >= 0 && iOooO0OO < fsVarArr.length) {
                        fsVarArr[iOooO0OO][i3].OooO0OO(hsVar.OooO0o0());
                    }
                }
            }
            i3++;
        }
        return fsVarArr;
    }

    private static int OooO0o0(int[] iArr, int[] iArr2, int i) throws ChecksumException {
        if ((iArr2 == null || iArr2.length <= (i / 2) + 3) && i >= 0 && i <= 512) {
            return OooO0Oo.OooO00o(iArr, i, iArr2);
        }
        throw ChecksumException.getChecksumInstance();
    }

    private static go OooO0oO(is isVar) throws NotFoundException, ChecksumException, FormatException {
        fs[][] fsVarArrOooO0o = OooO0o(isVar);
        OooO0O0(isVar, fsVarArrOooO0o);
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[isVar.OooOO0o() * isVar.OooOO0()];
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < isVar.OooOO0o(); i++) {
            int i2 = 0;
            while (i2 < isVar.OooOO0()) {
                int i3 = i2 + 1;
                int[] iArrOooO0O0 = fsVarArrOooO0o[i][i3].OooO0O0();
                int iOooOO0 = (isVar.OooOO0() * i) + i2;
                if (iArrOooO0O0.length == 0) {
                    arrayList.add(Integer.valueOf(iOooOO0));
                } else if (iArrOooO0O0.length == 1) {
                    iArr[iOooOO0] = iArrOooO0O0[0];
                } else {
                    arrayList3.add(Integer.valueOf(iOooOO0));
                    arrayList2.add(iArrOooO0O0);
                }
                i2 = i3;
            }
        }
        int size = arrayList2.size();
        int[][] iArr2 = new int[size][];
        for (int i4 = 0; i4 < size; i4++) {
            iArr2[i4] = (int[]) arrayList2.get(i4);
        }
        return OooO0oo(isVar.OooOO0O(), iArr, as.OooO0OO(arrayList), as.OooO0OO(arrayList3), iArr2);
    }

    private static go OooO0oo(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) throws ChecksumException, FormatException {
        int length = iArr3.length;
        int[] iArr5 = new int[length];
        int i2 = 100;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                throw ChecksumException.getChecksumInstance();
            }
            for (int i4 = 0; i4 < length; i4++) {
                iArr[iArr3[i4]] = iArr4[i4][iArr5[i4]];
            }
            try {
                return OooOO0(iArr, i, iArr2);
            } catch (ChecksumException unused) {
                if (length == 0) {
                    throw ChecksumException.getChecksumInstance();
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        break;
                    }
                    if (iArr5[i5] < iArr4[i5].length - 1) {
                        iArr5[i5] = iArr5[i5] + 1;
                        break;
                    }
                    iArr5[i5] = 0;
                    if (i5 == length - 1) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    i5++;
                }
                i2 = i3;
            }
        }
    }

    private static go OooOO0(int[] iArr, int i, int[] iArr2) throws ChecksumException, FormatException {
        if (iArr.length == 0) {
            throw FormatException.getFormatInstance();
        }
        int i2 = 1 << (i + 1);
        int iOooO0o0 = OooO0o0(iArr, iArr2, i2);
        OooOo(iArr, i2);
        go goVarOooO0O0 = DecodedBitStreamParser.OooO0O0(iArr, String.valueOf(i));
        goVarOooO0O0.OooOOO0(Integer.valueOf(iOooO0o0));
        goVarOooO0O0.OooOO0o(Integer.valueOf(iArr2.length));
        return goVarOooO0O0;
    }

    private static hs OooOO0O(eo eoVar, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        int iOooO0Oo;
        int iOooO0O0;
        int iOooO0OO = OooO0OO(eoVar, i, i2, z, i3, i4);
        int[] iArrOooOOo0 = OooOOo0(eoVar, i, i2, z, iOooO0OO, i4);
        if (iArrOooOOo0 == null) {
            return null;
        }
        int iOooO0Oo2 = po.OooO0Oo(iArrOooOOo0);
        if (z) {
            i7 = iOooO0OO + iOooO0Oo2;
        } else {
            for (int i8 = 0; i8 < iArrOooOOo0.length / 2; i8++) {
                int i9 = iArrOooOOo0[i8];
                iArrOooOOo0[i8] = iArrOooOOo0[(iArrOooOOo0.length - 1) - i8];
                iArrOooOOo0[(iArrOooOOo0.length - 1) - i8] = i9;
            }
            iOooO0OO -= iOooO0Oo2;
            i7 = iOooO0OO;
        }
        if (OooO0Oo(iOooO0Oo2, i5, i6) && (iOooO0O0 = as.OooO0O0((iOooO0Oo = ls.OooO0Oo(iArrOooOOo0)))) != -1) {
            return new hs(iOooO0OO, i7, OooOOO(iOooO0Oo), iOooO0O0);
        }
        return null;
    }

    private static es OooOO0o(ks ksVar, ks ksVar2) {
        es esVarOooO;
        es esVarOooO2;
        if (ksVar == null || (esVarOooO = ksVar.OooO()) == null) {
            if (ksVar2 == null) {
                return null;
            }
            return ksVar2.OooO();
        }
        if (ksVar2 == null || (esVarOooO2 = ksVar2.OooO()) == null || esVarOooO.OooO00o() == esVarOooO2.OooO00o() || esVarOooO.OooO0O0() == esVarOooO2.OooO0O0() || esVarOooO.OooO0OO() == esVarOooO2.OooO0OO()) {
            return esVarOooO;
        }
        return null;
    }

    private static int OooOOO(int i) {
        return OooOOOO(OooOOO0(i));
    }

    private static int[] OooOOO0(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i & 1;
            if (i4 != i2) {
                i3--;
                if (i3 < 0) {
                    return iArr;
                }
                i2 = i4;
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }

    private static int OooOOOO(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    private static int OooOOOo(int[] iArr) {
        int iMax = -1;
        for (int i : iArr) {
            iMax = Math.max(iMax, i);
        }
        return iMax;
    }

    private static int OooOOo(int i) {
        return 2 << i;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int[] OooOOo0(eo eoVar, int i, int i2, boolean z, int i3, int i4) {
        int[] iArr = new int[8];
        int i5 = z ? 1 : -1;
        int i6 = 0;
        boolean z3 = z;
        while (true) {
            if (!z) {
                if (i3 < i) {
                    break;
                }
            } else {
                if (i3 >= i2) {
                    break;
                }
                if (i6 >= 8) {
                    break;
                }
                if (eoVar.OooO0o0(i3, i4) == z3) {
                    iArr[i6] = iArr[i6] + 1;
                    i3 += i5;
                } else {
                    i6++;
                    z3 = !z3;
                }
            }
        }
        if (i6 != 8) {
            if (z) {
                i = i2;
            }
            if (i3 != i || i6 != 7) {
                return null;
            }
        }
        return iArr;
    }

    private static ks OooOOoo(eo eoVar, gs gsVar, fm fmVar, boolean z, int i, int i2) {
        ks ksVar = new ks(gsVar, z);
        int i3 = 0;
        while (i3 < 2) {
            int i4 = i3 == 0 ? 1 : -1;
            int iOooO0OO = (int) fmVar.OooO0OO();
            for (int iOooO0Oo = (int) fmVar.OooO0Oo(); iOooO0Oo <= gsVar.OooO0o0() && iOooO0Oo >= gsVar.OooO0oO(); iOooO0Oo += i4) {
                hs hsVarOooOO0O = OooOO0O(eoVar, 0, eoVar.OooOOO0(), z, iOooO0OO, iOooO0Oo, i, i2);
                if (hsVarOooOO0O != null) {
                    ksVar.OooO0o(iOooO0Oo, hsVarOooOO0O);
                    iOooO0OO = z ? hsVarOooOO0O.OooO0Oo() : hsVarOooOO0O.OooO0O0();
                }
            }
            i3++;
        }
        return ksVar;
    }

    private static void OooOo(int[] iArr, int i) throws FormatException {
        if (iArr.length < 4) {
            throw FormatException.getFormatInstance();
        }
        int i2 = iArr[0];
        if (i2 > iArr.length) {
            throw FormatException.getFormatInstance();
        }
        if (i2 == 0) {
            if (i >= iArr.length) {
                throw FormatException.getFormatInstance();
            }
            iArr[0] = iArr.length - i;
        }
    }

    private static boolean OooOo0(is isVar, int i) {
        return i >= 0 && i <= isVar.OooOO0() + 1;
    }

    private static int OooOo00(is isVar, int i, int i2, boolean z) {
        int i3 = z ? 1 : -1;
        int i4 = i - i3;
        hs hsVarOooO0O0 = OooOo0(isVar, i4) ? isVar.OooOOO(i4).OooO0O0(i2) : null;
        if (hsVarOooO0O0 != null) {
            return z ? hsVarOooO0O0.OooO0O0() : hsVarOooO0O0.OooO0Oo();
        }
        hs hsVarOooO0OO = isVar.OooOOO(i).OooO0OO(i2);
        if (hsVarOooO0OO != null) {
            return z ? hsVarOooO0OO.OooO0Oo() : hsVarOooO0OO.OooO0O0();
        }
        if (OooOo0(isVar, i4)) {
            hsVarOooO0OO = isVar.OooOOO(i4).OooO0OO(i2);
        }
        if (hsVarOooO0OO != null) {
            return z ? hsVarOooO0OO.OooO0O0() : hsVarOooO0OO.OooO0Oo();
        }
        int i5 = 0;
        while (true) {
            i -= i3;
            if (!OooOo0(isVar, i)) {
                gs gsVarOooOOO0 = isVar.OooOOO0();
                return z ? gsVarOooOOO0.OooO0o() : gsVarOooOOO0.OooO0Oo();
            }
            for (hs hsVar : isVar.OooOOO(i).OooO0Oo()) {
                if (hsVar != null) {
                    return (z ? hsVar.OooO0O0() : hsVar.OooO0Oo()) + (i3 * i5 * (hsVar.OooO0O0() - hsVar.OooO0Oo()));
                }
            }
            i5++;
        }
    }

    private static is OooOo0O(ks ksVar, ks ksVar2) throws NotFoundException {
        es esVarOooOO0o;
        if ((ksVar == null && ksVar2 == null) || (esVarOooOO0o = OooOO0o(ksVar, ksVar2)) == null) {
            return null;
        }
        return new is(esVarOooOO0o, gs.OooOO0(OooO00o(ksVar), OooO00o(ksVar2)));
    }

    public static String OooOo0o(fs[][] fsVarArr) {
        Formatter formatter = new Formatter();
        for (int i = 0; i < fsVarArr.length; i++) {
            try {
                formatter.format("Row %2d: ", Integer.valueOf(i));
                for (int i2 = 0; i2 < fsVarArr[i].length; i2++) {
                    fs fsVar = fsVarArr[i][i2];
                    if (fsVar.OooO0O0().length == 0) {
                        formatter.format("        ", null);
                    } else {
                        formatter.format("%4d(%2d)", Integer.valueOf(fsVar.OooO0O0()[0]), fsVar.OooO00o(fsVar.OooO0O0()[0]));
                    }
                }
                formatter.format("%n", new Object[0]);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        formatter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        String string = formatter.toString();
        formatter.close();
        return string;
    }
}

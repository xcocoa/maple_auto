package z2;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class qs {
    private static final int OooO = 25;
    private static final float OooO0OO = 0.42f;
    private static final float OooO0Oo = 0.8f;
    private static final int OooO0oO = 3;
    private static final int OooO0oo = 5;
    private static final int OooOO0 = 5;
    private static final int OooOO0O = 10;
    private static final int[] OooO00o = {0, 4, 1, 5};
    private static final int[] OooO0O0 = {6, 2, 7, 3};
    private static final int[] OooO0o0 = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] OooO0o = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private qs() {
    }

    private static void OooO00o(fm[] fmVarArr, fm[] fmVarArr2, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            fmVarArr[iArr[i]] = fmVarArr2[i];
        }
    }

    public static rs OooO0O0(vl vlVar, Map<DecodeHintType, ?> map, boolean z) throws NotFoundException {
        eo eoVarOooO0O0 = vlVar.OooO0O0();
        List<fm[]> listOooO0OO = OooO0OO(z, eoVarOooO0O0);
        if (listOooO0OO.isEmpty()) {
            eoVarOooO0O0 = eoVarOooO0O0.clone();
            eoVarOooO0O0.OooOOOo();
            listOooO0OO = OooO0OO(z, eoVarOooO0O0);
        }
        return new rs(eoVarOooO0O0, listOooO0OO);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        if (r5 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        r4 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
    
        if (r4.hasNext() == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
    
        r5 = (z2.fm[]) r4.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r5[1] == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        r3 = (int) java.lang.Math.max(r3, r5[1].OooO0Oo());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
    
        if (r5[3] == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        r3 = java.lang.Math.max(r3, (int) r5[3].OooO0Oo());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static List<fm[]> OooO0OO(boolean z, eo eoVar) {
        int iOooO0OO;
        fm fmVar;
        ArrayList arrayList = new ArrayList();
        int iOooO0Oo = 0;
        loop0: while (true) {
            int i = 0;
            boolean z3 = false;
            while (true) {
                if (iOooO0Oo >= eoVar.OooO0oo()) {
                    break loop0;
                }
                fm[] fmVarArrOooO0o = OooO0o(eoVar, iOooO0Oo, i);
                if (fmVarArrOooO0o[0] != null || fmVarArrOooO0o[3] != null) {
                    arrayList.add(fmVarArrOooO0o);
                    if (!z) {
                        break loop0;
                    }
                    if (fmVarArrOooO0o[2] != null) {
                        iOooO0OO = (int) fmVarArrOooO0o[2].OooO0OO();
                        fmVar = fmVarArrOooO0o[2];
                    } else {
                        iOooO0OO = (int) fmVarArrOooO0o[4].OooO0OO();
                        fmVar = fmVarArrOooO0o[4];
                    }
                    iOooO0Oo = (int) fmVar.OooO0Oo();
                    i = iOooO0OO;
                    z3 = true;
                } else {
                    break;
                }
            }
            iOooO0Oo += 5;
        }
        return arrayList;
    }

    private static int[] OooO0Oo(eo eoVar, int i, int i2, int i3, boolean z, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i4 = 0;
        while (eoVar.OooO0o0(i, i2) && i > 0) {
            int i5 = i4 + 1;
            if (i4 >= 3) {
                break;
            }
            i--;
            i4 = i5;
        }
        int length = iArr.length;
        boolean z3 = z;
        int i6 = 0;
        int i7 = i;
        while (i < i3) {
            if (eoVar.OooO0o0(i, i2) != z3) {
                iArr2[i6] = iArr2[i6] + 1;
            } else {
                if (i6 != length - 1) {
                    i6++;
                } else {
                    if (OooO0oO(iArr2, iArr, OooO0Oo) < OooO0OO) {
                        return new int[]{i7, i};
                    }
                    i7 += iArr2[0] + iArr2[1];
                    int i8 = i6 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i8);
                    iArr2[i8] = 0;
                    iArr2[i6] = 0;
                    i6--;
                }
                iArr2[i6] = 1;
                z3 = !z3;
            }
            i++;
        }
        if (i6 != length - 1 || OooO0oO(iArr2, iArr, OooO0Oo) >= OooO0OO) {
            return null;
        }
        return new int[]{i7, i - 1};
    }

    private static fm[] OooO0o(eo eoVar, int i, int i2) {
        int iOooO0oo = eoVar.OooO0oo();
        int iOooOOO0 = eoVar.OooOOO0();
        fm[] fmVarArr = new fm[8];
        OooO00o(fmVarArr, OooO0o0(eoVar, iOooO0oo, iOooOOO0, i, i2, OooO0o0), OooO00o);
        if (fmVarArr[4] != null) {
            i2 = (int) fmVarArr[4].OooO0OO();
            i = (int) fmVarArr[4].OooO0Oo();
        }
        OooO00o(fmVarArr, OooO0o0(eoVar, iOooO0oo, iOooOOO0, i, i2, OooO0o), OooO0O0);
        return fmVarArr;
    }

    private static fm[] OooO0o0(eo eoVar, int i, int i2, int i3, int i4, int[] iArr) {
        boolean z;
        int i5;
        int i6;
        int i7;
        fm[] fmVarArr = new fm[4];
        int[] iArr2 = new int[iArr.length];
        int i8 = i3;
        while (true) {
            if (i8 >= i) {
                z = false;
                break;
            }
            int[] iArrOooO0Oo = OooO0Oo(eoVar, i4, i8, i2, false, iArr, iArr2);
            if (iArrOooO0Oo != null) {
                int i9 = i8;
                int[] iArr3 = iArrOooO0Oo;
                int i10 = i9;
                while (true) {
                    if (i10 <= 0) {
                        i7 = i10;
                        break;
                    }
                    int i11 = i10 - 1;
                    int[] iArrOooO0Oo2 = OooO0Oo(eoVar, i4, i11, i2, false, iArr, iArr2);
                    if (iArrOooO0Oo2 == null) {
                        i7 = i11 + 1;
                        break;
                    }
                    iArr3 = iArrOooO0Oo2;
                    i10 = i11;
                }
                float f = i7;
                fmVarArr[0] = new fm(iArr3[0], f);
                fmVarArr[1] = new fm(iArr3[1], f);
                i8 = i7;
                z = true;
            } else {
                i8 += 5;
            }
        }
        int i12 = i8 + 1;
        if (z) {
            int[] iArr4 = {(int) fmVarArr[0].OooO0OO(), (int) fmVarArr[1].OooO0OO()};
            int i13 = i12;
            int i14 = 0;
            while (true) {
                if (i13 >= i) {
                    i5 = i14;
                    i6 = i13;
                    break;
                }
                i5 = i14;
                i6 = i13;
                int[] iArrOooO0Oo3 = OooO0Oo(eoVar, iArr4[0], i13, i2, false, iArr, iArr2);
                if (iArrOooO0Oo3 != null && Math.abs(iArr4[0] - iArrOooO0Oo3[0]) < 5 && Math.abs(iArr4[1] - iArrOooO0Oo3[1]) < 5) {
                    iArr4 = iArrOooO0Oo3;
                    i14 = 0;
                } else {
                    if (i5 > 25) {
                        break;
                    }
                    i14 = i5 + 1;
                }
                i13 = i6 + 1;
            }
            i12 = i6 - (i5 + 1);
            float f2 = i12;
            fmVarArr[2] = new fm(iArr4[0], f2);
            fmVarArr[3] = new fm(iArr4[1], f2);
        }
        if (i12 - i8 < 10) {
            Arrays.fill(fmVarArr, (Object) null);
        }
        return fmVarArr;
    }

    private static float OooO0oO(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = i;
        float f3 = f2 / i2;
        float f4 = f * f3;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f6 = iArr2[i4] * f3;
            float f7 = iArr[i4];
            float f8 = f7 > f6 ? f7 - f6 : f6 - f7;
            if (f8 > f4) {
                return Float.POSITIVE_INFINITY;
            }
            f5 += f8;
        }
        return f5 / f2;
    }
}

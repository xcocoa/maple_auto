package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.qrcode.detector.FinderPatternFinder;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import z2.eo;
import z2.fm;
import z2.gm;
import z2.kt;
import z2.lt;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiFinderPatternFinder extends FinderPatternFinder {
    private static final lt[] OooO = new lt[0];
    private static final float OooOO0 = 180.0f;
    private static final float OooOO0O = 9.0f;
    private static final float OooOO0o = 0.05f;
    private static final float OooOOO0 = 0.5f;

    public static final class ModuleSizeComparator implements Serializable, Comparator<kt> {
        private ModuleSizeComparator() {
        }

        @Override // java.util.Comparator
        public final int compare(kt ktVar, kt ktVar2) {
            double dOooO = ktVar2.OooO() - ktVar.OooO();
            if (dOooO < 0.0d) {
                return -1;
            }
            return dOooO > 0.0d ? 1 : 0;
        }
    }

    public MultiFinderPatternFinder(eo eoVar) {
        super(eoVar);
    }

    public MultiFinderPatternFinder(eo eoVar, gm gmVar) {
        super(eoVar, gmVar);
    }

    private kt[][] OooOOoo() throws NotFoundException {
        List<kt> listOooOO0o = OooOO0o();
        int size = listOooOO0o.size();
        int i = 3;
        if (size < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        char c = 0;
        if (size == 3) {
            return new kt[][]{new kt[]{listOooOO0o.get(0), listOooOO0o.get(1), listOooOO0o.get(2)}};
        }
        Collections.sort(listOooOO0o, new ModuleSizeComparator());
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < size - 2) {
            kt ktVar = listOooOO0o.get(i2);
            if (ktVar != null) {
                int i3 = i2 + 1;
                while (i3 < size - 1) {
                    kt ktVar2 = listOooOO0o.get(i3);
                    if (ktVar2 != null) {
                        float fOooO = (ktVar.OooO() - ktVar2.OooO()) / Math.min(ktVar.OooO(), ktVar2.OooO());
                        float fAbs = Math.abs(ktVar.OooO() - ktVar2.OooO());
                        float f = OooOO0o;
                        float f2 = 0.5f;
                        if (fAbs <= 0.5f || fOooO < OooOO0o) {
                            int i4 = i3 + 1;
                            while (i4 < size) {
                                kt ktVar3 = listOooOO0o.get(i4);
                                if (ktVar3 != null) {
                                    float fOooO2 = (ktVar2.OooO() - ktVar3.OooO()) / Math.min(ktVar2.OooO(), ktVar3.OooO());
                                    if (Math.abs(ktVar2.OooO() - ktVar3.OooO()) <= f2 || fOooO2 < f) {
                                        kt[] ktVarArr = new kt[i];
                                        ktVarArr[c] = ktVar;
                                        ktVarArr[1] = ktVar2;
                                        ktVarArr[2] = ktVar3;
                                        fm.OooO0o0(ktVarArr);
                                        lt ltVar = new lt(ktVarArr);
                                        float fOooO0O0 = fm.OooO0O0(ltVar.OooO0O0(), ltVar.OooO00o());
                                        float fOooO0O02 = fm.OooO0O0(ltVar.OooO0OO(), ltVar.OooO00o());
                                        float fOooO0O03 = fm.OooO0O0(ltVar.OooO0O0(), ltVar.OooO0OO());
                                        float fOooO3 = (fOooO0O0 + fOooO0O03) / (ktVar.OooO() * 2.0f);
                                        if (fOooO3 <= OooOO0 && fOooO3 >= OooOO0O && Math.abs((fOooO0O0 - fOooO0O03) / Math.min(fOooO0O0, fOooO0O03)) < 0.1f) {
                                            float fSqrt = (float) Math.sqrt((fOooO0O0 * fOooO0O0) + (fOooO0O03 * fOooO0O03));
                                            if (Math.abs((fOooO0O02 - fSqrt) / Math.min(fOooO0O02, fSqrt)) < 0.1f) {
                                                arrayList.add(ktVarArr);
                                            }
                                        }
                                    }
                                }
                                i4++;
                                i = 3;
                                c = 0;
                                f = OooOO0o;
                                f2 = 0.5f;
                            }
                        }
                    }
                    i3++;
                    i = 3;
                    c = 0;
                }
            }
            i2++;
            i = 3;
            c = 0;
        }
        if (arrayList.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (kt[][]) arrayList.toArray(new kt[arrayList.size()][]);
    }

    public final lt[] OooOOo(Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        eo eoVarOooOO0O = OooOO0O();
        int iOooO0oo = eoVarOooOO0O.OooO0oo();
        int iOooOOO0 = eoVarOooOO0O.OooOOO0();
        int i = (iOooO0oo * 3) / 388;
        if (i < 3 || z) {
            i = 3;
        }
        int[] iArr = new int[5];
        for (int i2 = i - 1; i2 < iOooO0oo; i2 += i) {
            OooO0O0(iArr);
            int i3 = 0;
            for (int i4 = 0; i4 < iOooOOO0; i4++) {
                if (eoVarOooOO0O.OooO0o0(i4, i2)) {
                    if ((i3 & 1) == 1) {
                        i3++;
                    }
                    iArr[i3] = iArr[i3] + 1;
                } else if ((i3 & 1) != 0) {
                    iArr[i3] = iArr[i3] + 1;
                } else if (i3 != 4) {
                    i3++;
                    iArr[i3] = iArr[i3] + 1;
                } else if (FinderPatternFinder.OooO0oo(iArr) && OooOOO0(iArr, i2, i4)) {
                    OooO0O0(iArr);
                    i3 = 0;
                } else {
                    OooOOo0(iArr);
                    i3 = 3;
                }
            }
            if (FinderPatternFinder.OooO0oo(iArr)) {
                OooOOO0(iArr, i2, iOooOOO0);
            }
        }
        kt[][] ktVarArrOooOOoo = OooOOoo();
        ArrayList arrayList = new ArrayList();
        for (kt[] ktVarArr : ktVarArrOooOOoo) {
            fm.OooO0o0(ktVarArr);
            arrayList.add(new lt(ktVarArr));
        }
        return arrayList.isEmpty() ? OooO : (lt[]) arrayList.toArray(new lt[arrayList.size()]);
    }
}

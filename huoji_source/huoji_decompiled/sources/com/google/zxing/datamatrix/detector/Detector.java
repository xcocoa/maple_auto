package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.io.IOUtils;
import z2.eo;
import z2.fm;
import z2.io;
import z2.ko;
import z2.po;
import z2.ro;

/* JADX INFO: loaded from: classes2.dex */
public final class Detector {
    private final eo OooO00o;
    private final ro OooO0O0;

    public static final class OooO0O0 {
        private final fm OooO00o;
        private final fm OooO0O0;
        private final int OooO0OO;

        private OooO0O0(fm fmVar, fm fmVar2, int i) {
            this.OooO00o = fmVar;
            this.OooO0O0 = fmVar2;
            this.OooO0OO = i;
        }

        public final fm OooO00o() {
            return this.OooO00o;
        }

        public final fm OooO0O0() {
            return this.OooO0O0;
        }

        public final int OooO0OO() {
            return this.OooO0OO;
        }

        public final String toString() {
            return this.OooO00o + "/" + this.OooO0O0 + IOUtils.DIR_SEPARATOR_UNIX + this.OooO0OO;
        }
    }

    public static final class ResultPointsAndTransitionsComparator implements Serializable, Comparator<OooO0O0> {
        private ResultPointsAndTransitionsComparator() {
        }

        @Override // java.util.Comparator
        public final int compare(OooO0O0 oooO0O0, OooO0O0 oooO0O02) {
            return oooO0O0.OooO0OO() - oooO0O02.OooO0OO();
        }
    }

    public Detector(eo eoVar) throws NotFoundException {
        this.OooO00o = eoVar;
        this.OooO0O0 = new ro(eoVar);
    }

    private fm OooO00o(fm fmVar, fm fmVar2, fm fmVar3, fm fmVar4, int i) {
        float f = i;
        float fOooO0Oo = OooO0Oo(fmVar, fmVar2) / f;
        float fOooO0Oo2 = OooO0Oo(fmVar3, fmVar4);
        fm fmVar5 = new fm(fmVar4.OooO0OO() + (((fmVar4.OooO0OO() - fmVar3.OooO0OO()) / fOooO0Oo2) * fOooO0Oo), fmVar4.OooO0Oo() + (fOooO0Oo * ((fmVar4.OooO0Oo() - fmVar3.OooO0Oo()) / fOooO0Oo2)));
        float fOooO0Oo3 = OooO0Oo(fmVar, fmVar3) / f;
        float fOooO0Oo4 = OooO0Oo(fmVar2, fmVar4);
        fm fmVar6 = new fm(fmVar4.OooO0OO() + (((fmVar4.OooO0OO() - fmVar2.OooO0OO()) / fOooO0Oo4) * fOooO0Oo3), fmVar4.OooO0Oo() + (fOooO0Oo3 * ((fmVar4.OooO0Oo() - fmVar2.OooO0Oo()) / fOooO0Oo4)));
        if (OooO0o(fmVar5)) {
            return (OooO0o(fmVar6) && Math.abs(OooO0oo(fmVar3, fmVar5).OooO0OO() - OooO0oo(fmVar2, fmVar5).OooO0OO()) > Math.abs(OooO0oo(fmVar3, fmVar6).OooO0OO() - OooO0oo(fmVar2, fmVar6).OooO0OO())) ? fmVar6 : fmVar5;
        }
        if (OooO0o(fmVar6)) {
            return fmVar6;
        }
        return null;
    }

    private fm OooO0O0(fm fmVar, fm fmVar2, fm fmVar3, fm fmVar4, int i, int i2) {
        float fOooO0Oo = OooO0Oo(fmVar, fmVar2) / i;
        float fOooO0Oo2 = OooO0Oo(fmVar3, fmVar4);
        fm fmVar5 = new fm(fmVar4.OooO0OO() + (((fmVar4.OooO0OO() - fmVar3.OooO0OO()) / fOooO0Oo2) * fOooO0Oo), fmVar4.OooO0Oo() + (fOooO0Oo * ((fmVar4.OooO0Oo() - fmVar3.OooO0Oo()) / fOooO0Oo2)));
        float fOooO0Oo3 = OooO0Oo(fmVar, fmVar3) / i2;
        float fOooO0Oo4 = OooO0Oo(fmVar2, fmVar4);
        fm fmVar6 = new fm(fmVar4.OooO0OO() + (((fmVar4.OooO0OO() - fmVar2.OooO0OO()) / fOooO0Oo4) * fOooO0Oo3), fmVar4.OooO0Oo() + (fOooO0Oo3 * ((fmVar4.OooO0Oo() - fmVar2.OooO0Oo()) / fOooO0Oo4)));
        if (OooO0o(fmVar5)) {
            return (OooO0o(fmVar6) && Math.abs(i - OooO0oo(fmVar3, fmVar5).OooO0OO()) + Math.abs(i2 - OooO0oo(fmVar2, fmVar5).OooO0OO()) > Math.abs(i - OooO0oo(fmVar3, fmVar6).OooO0OO()) + Math.abs(i2 - OooO0oo(fmVar2, fmVar6).OooO0OO())) ? fmVar6 : fmVar5;
        }
        if (OooO0o(fmVar6)) {
            return fmVar6;
        }
        return null;
    }

    private static int OooO0Oo(fm fmVar, fm fmVar2) {
        return po.OooO0OO(fm.OooO0O0(fmVar, fmVar2));
    }

    private boolean OooO0o(fm fmVar) {
        return fmVar.OooO0OO() >= 0.0f && fmVar.OooO0OO() < ((float) this.OooO00o.OooOOO0()) && fmVar.OooO0Oo() > 0.0f && fmVar.OooO0Oo() < ((float) this.OooO00o.OooO0oo());
    }

    private static void OooO0o0(Map<fm, Integer> map, fm fmVar) {
        Integer num = map.get(fmVar);
        map.put(fmVar, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    private static eo OooO0oO(eo eoVar, fm fmVar, fm fmVar2, fm fmVar3, fm fmVar4, int i, int i2) throws NotFoundException {
        float f = i - 0.5f;
        float f2 = i2 - 0.5f;
        return ko.OooO0O0().OooO0OO(eoVar, i, i2, 0.5f, 0.5f, f, 0.5f, f, f2, 0.5f, f2, fmVar.OooO0OO(), fmVar.OooO0Oo(), fmVar4.OooO0OO(), fmVar4.OooO0Oo(), fmVar3.OooO0OO(), fmVar3.OooO0Oo(), fmVar2.OooO0OO(), fmVar2.OooO0Oo());
    }

    private OooO0O0 OooO0oo(fm fmVar, fm fmVar2) {
        int iOooO0OO = (int) fmVar.OooO0OO();
        int iOooO0Oo = (int) fmVar.OooO0Oo();
        int iOooO0OO2 = (int) fmVar2.OooO0OO();
        int iOooO0Oo2 = (int) fmVar2.OooO0Oo();
        int i = 0;
        boolean z = Math.abs(iOooO0Oo2 - iOooO0Oo) > Math.abs(iOooO0OO2 - iOooO0OO);
        if (z) {
            iOooO0Oo = iOooO0OO;
            iOooO0OO = iOooO0Oo;
            iOooO0Oo2 = iOooO0OO2;
            iOooO0OO2 = iOooO0Oo2;
        }
        int iAbs = Math.abs(iOooO0OO2 - iOooO0OO);
        int iAbs2 = Math.abs(iOooO0Oo2 - iOooO0Oo);
        int i2 = (-iAbs) / 2;
        int i3 = iOooO0Oo < iOooO0Oo2 ? 1 : -1;
        int i4 = iOooO0OO >= iOooO0OO2 ? -1 : 1;
        boolean zOooO0o0 = this.OooO00o.OooO0o0(z ? iOooO0Oo : iOooO0OO, z ? iOooO0OO : iOooO0Oo);
        while (iOooO0OO != iOooO0OO2) {
            boolean zOooO0o02 = this.OooO00o.OooO0o0(z ? iOooO0Oo : iOooO0OO, z ? iOooO0OO : iOooO0Oo);
            if (zOooO0o02 != zOooO0o0) {
                i++;
                zOooO0o0 = zOooO0o02;
            }
            i2 += iAbs2;
            if (i2 > 0) {
                if (iOooO0Oo == iOooO0Oo2) {
                    break;
                }
                iOooO0Oo += i3;
                i2 -= iAbs;
            }
            iOooO0OO += i4;
        }
        return new OooO0O0(fmVar, fmVar2, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final io OooO0OO() throws NotFoundException {
        fm fmVar;
        eo eoVarOooO0oO;
        fm[] fmVarArrOooO0OO = this.OooO0O0.OooO0OO();
        fm fmVar2 = fmVarArrOooO0OO[0];
        fm fmVar3 = fmVarArrOooO0OO[1];
        fm fmVar4 = fmVarArrOooO0OO[2];
        fm fmVar5 = fmVarArrOooO0OO[3];
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(OooO0oo(fmVar2, fmVar3));
        arrayList.add(OooO0oo(fmVar2, fmVar4));
        arrayList.add(OooO0oo(fmVar3, fmVar5));
        arrayList.add(OooO0oo(fmVar4, fmVar5));
        fm fmVar6 = null;
        Collections.sort(arrayList, new ResultPointsAndTransitionsComparator());
        OooO0O0 oooO0O0 = (OooO0O0) arrayList.get(0);
        OooO0O0 oooO0O02 = (OooO0O0) arrayList.get(1);
        HashMap map = new HashMap();
        OooO0o0(map, oooO0O0.OooO00o());
        OooO0o0(map, oooO0O0.OooO0O0());
        OooO0o0(map, oooO0O02.OooO00o());
        OooO0o0(map, oooO0O02.OooO0O0());
        fm fmVar7 = null;
        fm fmVar8 = null;
        for (Map.Entry entry : map.entrySet()) {
            fm fmVar9 = (fm) entry.getKey();
            if (((Integer) entry.getValue()).intValue() == 2) {
                fmVar7 = fmVar9;
            } else if (fmVar6 == null) {
                fmVar6 = fmVar9;
            } else {
                fmVar8 = fmVar9;
            }
        }
        if (fmVar6 == null || fmVar7 == null || fmVar8 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        fm[] fmVarArr = {fmVar6, fmVar7, fmVar8};
        fm.OooO0o0(fmVarArr);
        fm fmVar10 = fmVarArr[0];
        fm fmVar11 = fmVarArr[1];
        fm fmVar12 = fmVarArr[2];
        fm fmVar13 = !map.containsKey(fmVar2) ? fmVar2 : !map.containsKey(fmVar3) ? fmVar3 : !map.containsKey(fmVar4) ? fmVar4 : fmVar5;
        int iOooO0OO = OooO0oo(fmVar12, fmVar13).OooO0OO();
        int iOooO0OO2 = OooO0oo(fmVar10, fmVar13).OooO0OO();
        if ((iOooO0OO & 1) == 1) {
            iOooO0OO++;
        }
        int i = iOooO0OO + 2;
        if ((iOooO0OO2 & 1) == 1) {
            iOooO0OO2++;
        }
        int i2 = iOooO0OO2 + 2;
        if (i * 4 >= i2 * 7 || i2 * 4 >= i * 7) {
            fmVar = fmVar12;
            fm fmVarOooO0O0 = OooO0O0(fmVar11, fmVar10, fmVar12, fmVar13, i, i2);
            if (fmVarOooO0O0 != null) {
                fmVar13 = fmVarOooO0O0;
            }
            int iOooO0OO3 = OooO0oo(fmVar, fmVar13).OooO0OO();
            int iOooO0OO4 = OooO0oo(fmVar10, fmVar13).OooO0OO();
            if ((iOooO0OO3 & 1) == 1) {
                iOooO0OO3++;
            }
            int i3 = iOooO0OO3;
            if ((iOooO0OO4 & 1) == 1) {
                iOooO0OO4++;
            }
            eoVarOooO0oO = OooO0oO(this.OooO00o, fmVar, fmVar11, fmVar10, fmVar13, i3, iOooO0OO4);
        } else {
            fm fmVarOooO00o = OooO00o(fmVar11, fmVar10, fmVar12, fmVar13, Math.min(i2, i));
            if (fmVarOooO00o != null) {
                fmVar13 = fmVarOooO00o;
            }
            int iMax = Math.max(OooO0oo(fmVar12, fmVar13).OooO0OO(), OooO0oo(fmVar10, fmVar13).OooO0OO()) + 1;
            if ((iMax & 1) == 1) {
                iMax++;
            }
            int i4 = iMax;
            eoVarOooO0oO = OooO0oO(this.OooO00o, fmVar12, fmVar11, fmVar10, fmVar13, i4, i4);
            fmVar = fmVar12;
        }
        return new io(eoVarOooO0oO, new fm[]{fmVar, fmVar11, fmVar10, fmVar13});
    }
}

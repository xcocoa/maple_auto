package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class cr extends yq {
    private final List<br> OooOO0O = new ArrayList();
    private final List<br> OooOO0o = new ArrayList();
    private static final int[] OooOOO0 = {1, 10, 34, 70, 126};
    private static final int[] OooOOO = {4, 20, 48, 81};
    private static final int[] OooOOOO = {0, 161, 961, 2015, 2715};
    private static final int[] OooOOOo = {0, 336, 1036, 1516};
    private static final int[] OooOOo0 = {8, 6, 4, 3, 1};
    private static final int[] OooOOo = {2, 4, 6, 8};
    private static final int[][] OooOOoo = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    private static void OooOOoo(Collection<br> collection, br brVar) {
        if (brVar == null) {
            return;
        }
        boolean z = false;
        Iterator<br> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            br next = it.next();
            if (next.OooO0O0() == brVar.OooO0O0()) {
                next.OooO0o0();
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        collection.add(brVar);
    }

    private br OooOo(Cdo cdo, boolean z, int i, Map<DecodeHintType, ?> map) {
        try {
            ar arVarOooOoO = OooOoO(cdo, i, z, OooOoO0(cdo, z));
            gm gmVar = map == null ? null : (gm) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
            if (gmVar != null) {
                float fOooOOO0 = (r1[0] + r1[1]) / 2.0f;
                if (z) {
                    fOooOOO0 = (cdo.OooOOO0() - 1) - fOooOOO0;
                }
                gmVar.OooO00o(new fm(fOooOOO0, i));
            }
            zq zqVarOooOo0o = OooOo0o(cdo, arVarOooOoO, true);
            zq zqVarOooOo0o2 = OooOo0o(cdo, arVarOooOoO, false);
            return new br((zqVarOooOo0o.OooO0O0() * 1597) + zqVarOooOo0o2.OooO0O0(), zqVarOooOo0o.OooO00o() + (zqVarOooOo0o2.OooO00o() * 4), arVarOooOoO);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private static boolean OooOo0(br brVar, br brVar2) {
        int iOooO00o = (brVar.OooO00o() + (brVar2.OooO00o() * 16)) % 79;
        int iOooO0OO = (brVar.OooO0Oo().OooO0OO() * 9) + brVar2.OooO0Oo().OooO0OO();
        if (iOooO0OO > 72) {
            iOooO0OO--;
        }
        if (iOooO0OO > 8) {
            iOooO0OO--;
        }
        return iOooO00o == iOooO0OO;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x003f A[PHI: r6 r7
      0x003f: PHI (r6v6 boolean) = (r6v3 boolean), (r6v13 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]
      0x003f: PHI (r7v4 boolean) = (r7v1 boolean), (r7v11 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0041 A[PHI: r6 r7
      0x0041: PHI (r6v9 boolean) = (r6v3 boolean), (r6v13 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]
      0x0041: PHI (r7v9 boolean) = (r7v1 boolean), (r7v11 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void OooOo00(boolean z, int i) throws NotFoundException {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int iOooO0Oo = po.OooO0Oo(OooOOO());
        int iOooO0Oo2 = po.OooO0Oo(OooOO0o());
        boolean z7 = true;
        if (z) {
            if (iOooO0Oo > 12) {
                z3 = false;
                z4 = true;
            } else {
                z3 = iOooO0Oo < 4;
                z4 = false;
            }
            if (iOooO0Oo2 <= 12) {
                z5 = iOooO0Oo2 < 4;
                z6 = false;
            }
            z5 = false;
            z6 = true;
        } else {
            if (iOooO0Oo > 11) {
                z3 = false;
                z4 = true;
            } else {
                z3 = iOooO0Oo < 5;
                z4 = false;
            }
            if (iOooO0Oo2 <= 10) {
                if (iOooO0Oo2 < 4) {
                }
                z6 = false;
            }
            z5 = false;
            z6 = true;
        }
        int i2 = (iOooO0Oo + iOooO0Oo2) - i;
        boolean z8 = (iOooO0Oo & 1) == z;
        boolean z9 = (iOooO0Oo2 & 1) == 1;
        if (i2 == 1) {
            if (z8) {
                if (z9) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z7 = z3;
                z4 = true;
            } else {
                if (!z9) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z7 = z3;
                z6 = true;
            }
        } else if (i2 == -1) {
            if (z8) {
                if (z9) {
                    throw NotFoundException.getNotFoundInstance();
                }
            } else {
                if (!z9) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z7 = z3;
                z5 = true;
            }
        } else {
            if (i2 != 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (z8) {
                if (!z9) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (iOooO0Oo >= iOooO0Oo2) {
                    z7 = z3;
                    z5 = true;
                    z4 = true;
                }
                z6 = true;
            } else {
                if (z9) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z7 = z3;
            }
        }
        if (z7) {
            if (z4) {
                throw NotFoundException.getNotFoundInstance();
            }
            yq.OooOOOo(OooOOO(), OooOOOO());
        }
        if (z4) {
            yq.OooO(OooOOO(), OooOOOO());
        }
        if (z5) {
            if (z6) {
                throw NotFoundException.getNotFoundInstance();
            }
            yq.OooOOOo(OooOO0o(), OooOOOO());
        }
        if (z6) {
            yq.OooO(OooOO0o(), OooOOO0());
        }
    }

    private static em OooOo0O(br brVar, br brVar2) {
        String strValueOf = String.valueOf((((long) brVar.OooO0O0()) * 4537077) + ((long) brVar2.OooO0O0()));
        StringBuilder sb = new StringBuilder(14);
        for (int length = 13 - strValueOf.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(strValueOf);
        int i = 0;
        for (int i2 = 0; i2 < 13; i2++) {
            int iCharAt = sb.charAt(i2) - '0';
            if ((i2 & 1) == 0) {
                iCharAt *= 3;
            }
            i += iCharAt;
        }
        int i3 = 10 - (i % 10);
        if (i3 == 10) {
            i3 = 0;
        }
        sb.append(i3);
        fm[] fmVarArrOooO00o = brVar.OooO0Oo().OooO00o();
        fm[] fmVarArrOooO00o2 = brVar2.OooO0Oo().OooO00o();
        return new em(sb.toString(), null, new fm[]{fmVarArrOooO00o[0], fmVarArrOooO00o[1], fmVarArrOooO00o2[0], fmVarArrOooO00o2[1]}, BarcodeFormat.RSS_14);
    }

    private zq OooOo0o(Cdo cdo, ar arVar, boolean z) throws NotFoundException {
        int[] iArrOooOO0 = OooOO0();
        for (int i = 0; i < iArrOooOO0.length; i++) {
            iArrOooOO0[i] = 0;
        }
        int[] iArrOooO0O0 = arVar.OooO0O0();
        if (z) {
            nq.OooO0oO(cdo, iArrOooO0O0[0], iArrOooOO0);
        } else {
            nq.OooO0o(cdo, iArrOooO0O0[1] + 1, iArrOooOO0);
            int i2 = 0;
            for (int length = iArrOooOO0.length - 1; i2 < length; length--) {
                int i3 = iArrOooOO0[i2];
                iArrOooOO0[i2] = iArrOooOO0[length];
                iArrOooOO0[length] = i3;
                i2++;
            }
        }
        int i4 = z ? 16 : 15;
        float fOooO0Oo = po.OooO0Oo(iArrOooOO0) / i4;
        int[] iArrOooOOO = OooOOO();
        int[] iArrOooOO0o = OooOO0o();
        float[] fArrOooOOOO = OooOOOO();
        float[] fArrOooOOO0 = OooOOO0();
        for (int i5 = 0; i5 < iArrOooOO0.length; i5++) {
            float f = iArrOooOO0[i5] / fOooO0Oo;
            int i6 = (int) (0.5f + f);
            if (i6 <= 0) {
                i6 = 1;
            } else if (i6 > 8) {
                i6 = 8;
            }
            int i7 = i5 / 2;
            if ((i5 & 1) == 0) {
                iArrOooOOO[i7] = i6;
                fArrOooOOOO[i7] = f - i6;
            } else {
                iArrOooOO0o[i7] = i6;
                fArrOooOOO0[i7] = f - i6;
            }
        }
        OooOo00(z, i4);
        int i8 = 0;
        int i9 = 0;
        for (int length2 = iArrOooOOO.length - 1; length2 >= 0; length2--) {
            i8 = (i8 * 9) + iArrOooOOO[length2];
            i9 += iArrOooOOO[length2];
        }
        int i10 = 0;
        int i11 = 0;
        for (int length3 = iArrOooOO0o.length - 1; length3 >= 0; length3--) {
            i10 = (i10 * 9) + iArrOooOO0o[length3];
            i11 += iArrOooOO0o[length3];
        }
        int i12 = i8 + (i10 * 3);
        if (!z) {
            if ((i11 & 1) != 0 || i11 > 10 || i11 < 4) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i13 = (10 - i11) / 2;
            int i14 = OooOOo[i13];
            return new zq((dr.OooO0O0(iArrOooOO0o, 9 - i14, false) * OooOOO[i13]) + dr.OooO0O0(iArrOooOOO, i14, true) + OooOOOo[i13], i12);
        }
        if ((i9 & 1) != 0 || i9 > 12 || i9 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i15 = (12 - i9) / 2;
        int i16 = OooOOo0[i15];
        return new zq((dr.OooO0O0(iArrOooOOO, i16, false) * OooOOO0[i15]) + dr.OooO0O0(iArrOooOO0o, 9 - i16, true) + OooOOOO[i15], i12);
    }

    private ar OooOoO(Cdo cdo, int i, boolean z, int[] iArr) throws NotFoundException {
        int iOooOOO0;
        int i2;
        boolean zOooO0oo = cdo.OooO0oo(iArr[0]);
        int i3 = iArr[0] - 1;
        while (i3 >= 0 && zOooO0oo != cdo.OooO0oo(i3)) {
            i3--;
        }
        int i4 = i3 + 1;
        int i5 = iArr[0] - i4;
        int[] iArrOooOO0O = OooOO0O();
        System.arraycopy(iArrOooOO0O, 0, iArrOooOO0O, 1, iArrOooOO0O.length - 1);
        iArrOooOO0O[0] = i5;
        int iOooOOo = yq.OooOOo(iArrOooOO0O, OooOOoo);
        int i6 = iArr[1];
        if (z) {
            int iOooOOO02 = (cdo.OooOOO0() - 1) - i4;
            iOooOOO0 = (cdo.OooOOO0() - 1) - i6;
            i2 = iOooOOO02;
        } else {
            iOooOOO0 = i6;
            i2 = i4;
        }
        return new ar(iOooOOo, new int[]{i4, iArr[1]}, i2, iOooOOO0, i);
    }

    private int[] OooOoO0(Cdo cdo, boolean z) throws NotFoundException {
        int[] iArrOooOO0O = OooOO0O();
        iArrOooOO0O[0] = 0;
        iArrOooOO0O[1] = 0;
        iArrOooOO0O[2] = 0;
        iArrOooOO0O[3] = 0;
        int iOooOOO0 = cdo.OooOOO0();
        int i = 0;
        boolean z3 = false;
        while (i < iOooOOO0) {
            z3 = !cdo.OooO0oo(i);
            if (z == z3) {
                break;
            }
            i++;
        }
        int i2 = i;
        int i3 = 0;
        while (i < iOooOOO0) {
            if (cdo.OooO0oo(i) != z3) {
                iArrOooOO0O[i3] = iArrOooOO0O[i3] + 1;
            } else {
                if (i3 != 3) {
                    i3++;
                } else {
                    if (yq.OooOOo0(iArrOooOO0O)) {
                        return new int[]{i2, i};
                    }
                    i2 += iArrOooOO0O[0] + iArrOooOO0O[1];
                    iArrOooOO0O[0] = iArrOooOO0O[2];
                    iArrOooOO0O[1] = iArrOooOO0O[3];
                    iArrOooOO0O[2] = 0;
                    iArrOooOO0O[3] = 0;
                    i3--;
                }
                iArrOooOO0O[i3] = 1;
                z3 = !z3;
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.nq
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException {
        OooOOoo(this.OooOO0O, OooOo(cdo, false, i, map));
        cdo.OooOOo0();
        OooOOoo(this.OooOO0o, OooOo(cdo, true, i, map));
        cdo.OooOOo0();
        for (br brVar : this.OooOO0O) {
            if (brVar.OooO0OO() > 1) {
                for (br brVar2 : this.OooOO0o) {
                    if (brVar2.OooO0OO() > 1 && OooOo0(brVar, brVar2)) {
                        return OooOo0O(brVar, brVar2);
                    }
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.nq, z2.dm
    public final void reset() {
        this.OooOO0O.clear();
        this.OooOO0o.clear();
    }
}

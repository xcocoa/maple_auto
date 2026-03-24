package z2;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.qrcode.detector.FinderPatternFinder;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class jt {
    private final eo OooO00o;
    private gm OooO0O0;

    public jt(eo eoVar) {
        this.OooO00o = eoVar;
    }

    private float OooO0O0(fm fmVar, fm fmVar2) {
        float fOooOOO0 = OooOOO0((int) fmVar.OooO0OO(), (int) fmVar.OooO0Oo(), (int) fmVar2.OooO0OO(), (int) fmVar2.OooO0Oo());
        float fOooOOO02 = OooOOO0((int) fmVar2.OooO0OO(), (int) fmVar2.OooO0Oo(), (int) fmVar.OooO0OO(), (int) fmVar.OooO0Oo());
        return Float.isNaN(fOooOOO0) ? fOooOOO02 / 7.0f : Float.isNaN(fOooOOO02) ? fOooOOO0 / 7.0f : (fOooOOO0 + fOooOOO02) / 14.0f;
    }

    private static int OooO0OO(fm fmVar, fm fmVar2, fm fmVar3, float f) throws NotFoundException {
        int iOooO0OO = ((po.OooO0OO(fm.OooO0O0(fmVar, fmVar2) / f) + po.OooO0OO(fm.OooO0O0(fmVar, fmVar3) / f)) / 2) + 7;
        int i = iOooO0OO & 3;
        if (i == 0) {
            return iOooO0OO + 1;
        }
        if (i == 2) {
            return iOooO0OO - 1;
        }
        if (i != 3) {
            return iOooO0OO;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static mo OooO0Oo(fm fmVar, fm fmVar2, fm fmVar3, fm fmVar4, int i) {
        float fOooO0OO;
        float fOooO0Oo;
        float f;
        float f2 = i - 3.5f;
        if (fmVar4 != null) {
            fOooO0OO = fmVar4.OooO0OO();
            fOooO0Oo = fmVar4.OooO0Oo();
            f = f2 - 3.0f;
        } else {
            fOooO0OO = (fmVar2.OooO0OO() - fmVar.OooO0OO()) + fmVar3.OooO0OO();
            fOooO0Oo = (fmVar2.OooO0Oo() - fmVar.OooO0Oo()) + fmVar3.OooO0Oo();
            f = f2;
        }
        return mo.OooO0O0(3.5f, 3.5f, f2, 3.5f, f, f, 3.5f, f2, fmVar.OooO0OO(), fmVar.OooO0Oo(), fmVar2.OooO0OO(), fmVar2.OooO0Oo(), fOooO0OO, fOooO0Oo, fmVar3.OooO0OO(), fmVar3.OooO0Oo());
    }

    private static eo OooOO0O(eo eoVar, mo moVar, int i) throws NotFoundException {
        return ko.OooO0O0().OooO0Oo(eoVar, i, i, moVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0084, code lost:
    
        if (r15 != 2) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008c, code lost:
    
        return z2.po.OooO0O0(r19, r6, r1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008d, code lost:
    
        return Float.NaN;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float OooOO0o(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        jt jtVar;
        boolean z;
        boolean z3;
        int i10 = 1;
        boolean z4 = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z4) {
            i6 = i;
            i5 = i2;
            i8 = i3;
            i7 = i4;
        } else {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
        }
        int iAbs = Math.abs(i7 - i5);
        int iAbs2 = Math.abs(i8 - i6);
        int i11 = (-iAbs) / 2;
        int i12 = i5 < i7 ? 1 : -1;
        int i13 = i6 < i8 ? 1 : -1;
        int i14 = i7 + i12;
        int i15 = i5;
        int i16 = i6;
        int i17 = 0;
        while (true) {
            if (i15 == i14) {
                i9 = i14;
                break;
            }
            int i18 = z4 ? i16 : i15;
            int i19 = z4 ? i15 : i16;
            if (i17 == i10) {
                jtVar = this;
                z = z4;
                i9 = i14;
                z3 = true;
            } else {
                jtVar = this;
                z = z4;
                i9 = i14;
                z3 = false;
            }
            if (z3 == jtVar.OooO00o.OooO0o0(i18, i19)) {
                if (i17 == 2) {
                    return po.OooO0O0(i15, i16, i5, i6);
                }
                i17++;
            }
            i11 += iAbs2;
            if (i11 > 0) {
                if (i16 == i8) {
                    break;
                }
                i16 += i13;
                i11 -= iAbs;
            }
            i15 += i12;
            i14 = i9;
            z4 = z;
            i10 = 1;
        }
    }

    private float OooOOO0(int i, int i2, int i3, int i4) {
        float fOooOOO0;
        float fOooO0oo;
        float fOooOO0o = OooOO0o(i, i2, i3, i4);
        int iOooOOO0 = i - (i3 - i);
        int iOooO0oo = 0;
        if (iOooOOO0 < 0) {
            fOooOOO0 = i / (i - iOooOOO0);
            iOooOOO0 = 0;
        } else if (iOooOOO0 >= this.OooO00o.OooOOO0()) {
            fOooOOO0 = ((this.OooO00o.OooOOO0() - 1) - i) / (iOooOOO0 - i);
            iOooOOO0 = this.OooO00o.OooOOO0() - 1;
        } else {
            fOooOOO0 = 1.0f;
        }
        float f = i2;
        int i5 = (int) (f - ((i4 - i2) * fOooOOO0));
        if (i5 < 0) {
            fOooO0oo = f / (i2 - i5);
        } else if (i5 >= this.OooO00o.OooO0oo()) {
            fOooO0oo = ((this.OooO00o.OooO0oo() - 1) - i2) / (i5 - i2);
            iOooO0oo = this.OooO00o.OooO0oo() - 1;
        } else {
            iOooO0oo = i5;
            fOooO0oo = 1.0f;
        }
        return (fOooOO0o + OooOO0o(i, i2, (int) (i + ((iOooOOO0 - i) * fOooO0oo)), iOooO0oo)) - 1.0f;
    }

    public final gm OooO() {
        return this.OooO0O0;
    }

    public final float OooO00o(fm fmVar, fm fmVar2, fm fmVar3) {
        return (OooO0O0(fmVar, fmVar2) + OooO0O0(fmVar, fmVar3)) / 2.0f;
    }

    public final io OooO0o(Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        gm gmVar = map == null ? null : (gm) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        this.OooO0O0 = gmVar;
        return OooOO0(new FinderPatternFinder(this.OooO00o, gmVar).OooO0o(map));
    }

    public io OooO0o0() throws NotFoundException, FormatException {
        return OooO0o(null);
    }

    public final ht OooO0oO(float f, int i, int i2, float f2) throws NotFoundException {
        int i3 = (int) (f2 * f);
        int iMax = Math.max(0, i - i3);
        int iMin = Math.min(this.OooO00o.OooOOO0() - 1, i + i3) - iMax;
        float f3 = 3.0f * f;
        if (iMin < f3) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iMax2 = Math.max(0, i2 - i3);
        int iMin2 = Math.min(this.OooO00o.OooO0oo() - 1, i2 + i3) - iMax2;
        if (iMin2 >= f3) {
            return new it(this.OooO00o, iMax, iMax2, iMin, iMin2, f, this.OooO0O0).OooO0OO();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final eo OooO0oo() {
        return this.OooO00o;
    }

    public final io OooOO0(lt ltVar) throws NotFoundException, FormatException {
        kt ktVarOooO0O0 = ltVar.OooO0O0();
        kt ktVarOooO0OO = ltVar.OooO0OO();
        kt ktVarOooO00o = ltVar.OooO00o();
        float fOooO00o = OooO00o(ktVarOooO0O0, ktVarOooO0OO, ktVarOooO00o);
        if (fOooO00o < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iOooO0OO = OooO0OO(ktVarOooO0O0, ktVarOooO0OO, ktVarOooO00o, fOooO00o);
        gt gtVarOooO0oO = gt.OooO0oO(iOooO0OO);
        int iOooO0o0 = gtVarOooO0oO.OooO0o0() - 7;
        ht htVarOooO0oO = null;
        if (gtVarOooO0oO.OooO0Oo().length > 0) {
            float fOooO0OO = (ktVarOooO0OO.OooO0OO() - ktVarOooO0O0.OooO0OO()) + ktVarOooO00o.OooO0OO();
            float fOooO0Oo = (ktVarOooO0OO.OooO0Oo() - ktVarOooO0O0.OooO0Oo()) + ktVarOooO00o.OooO0Oo();
            float f = 1.0f - (3.0f / iOooO0o0);
            int iOooO0OO2 = (int) (ktVarOooO0O0.OooO0OO() + ((fOooO0OO - ktVarOooO0O0.OooO0OO()) * f));
            int iOooO0Oo = (int) (ktVarOooO0O0.OooO0Oo() + (f * (fOooO0Oo - ktVarOooO0O0.OooO0Oo())));
            for (int i = 4; i <= 16; i <<= 1) {
                try {
                    htVarOooO0oO = OooO0oO(fOooO00o, iOooO0OO2, iOooO0Oo, i);
                    break;
                } catch (NotFoundException unused) {
                }
            }
        }
        return new io(OooOO0O(this.OooO00o, OooO0Oo(ktVarOooO0O0, ktVarOooO0OO, ktVarOooO00o, htVarOooO0oO, iOooO0OO), iOooO0OO), htVarOooO0oO == null ? new fm[]{ktVarOooO00o, ktVarOooO0O0, ktVarOooO0OO} : new fm[]{ktVarOooO00o, ktVarOooO0O0, ktVarOooO0OO, htVarOooO0oO});
    }
}

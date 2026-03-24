package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class xo implements hm {
    private static eo OooO0OO(nt ntVar, int i, int i2) {
        eo eoVar;
        int iOooO0o0 = ntVar.OooO0o0();
        int iOooO0Oo = ntVar.OooO0Oo();
        int iMax = Math.max(i, iOooO0o0);
        int iMax2 = Math.max(i2, iOooO0Oo);
        int iMin = Math.min(iMax / iOooO0o0, iMax2 / iOooO0Oo);
        int i3 = (iMax - (iOooO0o0 * iMin)) / 2;
        int i4 = (iMax2 - (iOooO0Oo * iMin)) / 2;
        if (i2 < iOooO0Oo || i < iOooO0o0) {
            eoVar = new eo(iOooO0o0, iOooO0Oo);
            i3 = 0;
            i4 = 0;
        } else {
            eoVar = new eo(i, i2);
        }
        eoVar.OooO0O0();
        int i5 = 0;
        while (i5 < iOooO0Oo) {
            int i6 = i3;
            int i7 = 0;
            while (i7 < iOooO0o0) {
                if (ntVar.OooO0O0(i7, i5) == 1) {
                    eoVar.OooOOo(i6, i4, iMin, iMin);
                }
                i7++;
                i6 += iMin;
            }
            i5++;
            i4 += iMin;
        }
        return eoVar;
    }

    private static eo OooO0Oo(gp gpVar, mp mpVar, int i, int i2) {
        int iOooO = mpVar.OooO();
        int iOooO0oo = mpVar.OooO0oo();
        nt ntVar = new nt(mpVar.OooOO0O(), mpVar.OooOO0());
        int i3 = 0;
        for (int i4 = 0; i4 < iOooO0oo; i4++) {
            if (i4 % mpVar.OooO0o0 == 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < mpVar.OooOO0O(); i6++) {
                    ntVar.OooO0oo(i5, i3, i6 % 2 == 0);
                    i5++;
                }
                i3++;
            }
            int i7 = 0;
            for (int i8 = 0; i8 < iOooO; i8++) {
                if (i8 % mpVar.OooO0Oo == 0) {
                    ntVar.OooO0oo(i7, i3, true);
                    i7++;
                }
                ntVar.OooO0oo(i7, i3, gpVar.OooO0o0(i8, i4));
                i7++;
                int i9 = mpVar.OooO0Oo;
                if (i8 % i9 == i9 - 1) {
                    ntVar.OooO0oo(i7, i3, i4 % 2 == 0);
                    i7++;
                }
            }
            i3++;
            int i10 = mpVar.OooO0o0;
            if (i4 % i10 == i10 - 1) {
                int i11 = 0;
                for (int i12 = 0; i12 < mpVar.OooOO0O(); i12++) {
                    ntVar.OooO0oo(i11, i3, true);
                    i11++;
                }
                i3++;
            }
        }
        return OooO0OO(ntVar, i, i2);
    }

    @Override // z2.hm
    public final eo OooO00o(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return OooO0O0(str, barcodeFormat, i, i2, null);
    }

    @Override // z2.hm
    public final eo OooO0O0(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        wl wlVar;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(barcodeFormat)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i + 'x' + i2);
        }
        SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
        wl wlVar2 = null;
        if (map != null) {
            SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) map.get(EncodeHintType.DATA_MATRIX_SHAPE);
            if (symbolShapeHint2 != null) {
                symbolShapeHint = symbolShapeHint2;
            }
            wl wlVar3 = (wl) map.get(EncodeHintType.MIN_SIZE);
            if (wlVar3 == null) {
                wlVar3 = null;
            }
            wlVar = (wl) map.get(EncodeHintType.MAX_SIZE);
            if (wlVar == null) {
                wlVar = null;
            }
            wlVar2 = wlVar3;
        } else {
            wlVar = null;
        }
        String strOooO0OO = lp.OooO0OO(str, symbolShapeHint, wlVar2, wlVar);
        mp mpVarOooOOOO = mp.OooOOOO(strOooO0OO.length(), symbolShapeHint, wlVar2, wlVar, true);
        gp gpVar = new gp(kp.OooO0OO(strOooO0OO, mpVarOooOOOO), mpVarOooOOOO.OooO(), mpVarOooOOOO.OooO0oo());
        gpVar.OooOO0O();
        return OooO0Oo(gpVar, mpVarOooOOOO, i, i2);
    }
}

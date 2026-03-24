package z2;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class up implements vp {
    private static final int OooO0O0 = 100;
    private static final int OooO0OO = 4;
    private final dm OooO00o;

    public up(dm dmVar) {
        this.OooO00o = dmVar;
    }

    private void OooO00o(vl vlVar, Map<DecodeHintType, ?> map, List<em> list, int i, int i2, int i3) {
        boolean z;
        float f;
        float f2;
        float f3;
        int i4;
        vl vlVarOooO00o = vlVar;
        int i5 = i2;
        for (int i6 = i3; i6 <= 4; i6++) {
            try {
                em emVarOooO00o = this.OooO00o.OooO00o(vlVarOooO00o, map);
                Iterator<em> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().OooO0oO().equals(emVarOooO00o.OooO0oO())) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    list.add(OooO0O0(emVarOooO00o, i, i5));
                }
                fm[] fmVarArrOooO0o = emVarOooO00o.OooO0o();
                if (fmVarArrOooO0o == null || fmVarArrOooO0o.length == 0) {
                    return;
                }
                int iOooO0o0 = vlVarOooO00o.OooO0o0();
                int iOooO0Oo = vlVarOooO00o.OooO0Oo();
                float f4 = iOooO0o0;
                float f5 = 0.0f;
                float f6 = iOooO0Oo;
                float f7 = 0.0f;
                for (fm fmVar : fmVarArrOooO0o) {
                    if (fmVar != null) {
                        float fOooO0OO = fmVar.OooO0OO();
                        float fOooO0Oo = fmVar.OooO0Oo();
                        if (fOooO0OO < f4) {
                            f4 = fOooO0OO;
                        }
                        if (fOooO0Oo < f6) {
                            f6 = fOooO0Oo;
                        }
                        if (fOooO0OO > f5) {
                            f5 = fOooO0OO;
                        }
                        if (fOooO0Oo > f7) {
                            f7 = fOooO0Oo;
                        }
                    }
                }
                if (f4 > 100.0f) {
                    f = f7;
                    f2 = f5;
                    f3 = f6;
                    i4 = iOooO0Oo;
                    OooO00o(vlVarOooO00o.OooO00o(0, 0, (int) f4, iOooO0Oo), map, list, i, i5, i6 + 1);
                } else {
                    f = f7;
                    f2 = f5;
                    f3 = f6;
                    i4 = iOooO0Oo;
                }
                if (f3 > 100.0f) {
                    OooO00o(vlVarOooO00o.OooO00o(0, 0, iOooO0o0, (int) f3), map, list, i, i5, i6 + 1);
                }
                float f8 = f2;
                if (f8 < iOooO0o0 - 100) {
                    int i7 = (int) f8;
                    OooO00o(vlVarOooO00o.OooO00o(i7, 0, iOooO0o0 - i7, i4), map, list, i + i7, i5, i6 + 1);
                }
                float f9 = f;
                if (f9 >= i4 - 100) {
                    return;
                }
                int i8 = (int) f9;
                vlVarOooO00o = vlVarOooO00o.OooO00o(0, i8, iOooO0o0, i4 - i8);
                i5 += i8;
            } catch (ReaderException unused) {
                return;
            }
        }
    }

    private static em OooO0O0(em emVar, int i, int i2) {
        fm[] fmVarArrOooO0o = emVar.OooO0o();
        if (fmVarArrOooO0o == null) {
            return emVar;
        }
        fm[] fmVarArr = new fm[fmVarArrOooO0o.length];
        for (int i3 = 0; i3 < fmVarArrOooO0o.length; i3++) {
            fm fmVar = fmVarArrOooO0o[i3];
            if (fmVar != null) {
                fmVarArr[i3] = new fm(fmVar.OooO0OO() + i, fmVar.OooO0Oo() + i2);
            }
        }
        em emVar2 = new em(emVar.OooO0oO(), emVar.OooO0Oo(), emVar.OooO0OO(), fmVarArr, emVar.OooO0O0(), emVar.OooO0oo());
        emVar2.OooO(emVar.OooO0o0());
        return emVar2;
    }

    @Override // z2.vp
    public final em[] OooO0OO(vl vlVar) throws NotFoundException {
        return OooO0Oo(vlVar, null);
    }

    @Override // z2.vp
    public final em[] OooO0Oo(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException {
        ArrayList arrayList = new ArrayList();
        OooO00o(vlVar, map, arrayList, 0, 0, 0);
        if (arrayList.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (em[]) arrayList.toArray(new em[arrayList.size()]);
    }
}

package z2;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public final class ho extends ko {
    @Override // z2.ko
    public final eo OooO0OO(eo eoVar, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) throws NotFoundException {
        return OooO0Oo(eoVar, i, i2, mo.OooO0O0(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16));
    }

    @Override // z2.ko
    public final eo OooO0Oo(eo eoVar, int i, int i2, mo moVar) throws NotFoundException {
        if (i <= 0 || i2 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        eo eoVar2 = new eo(i, i2);
        int i3 = i * 2;
        float[] fArr = new float[i3];
        for (int i4 = 0; i4 < i2; i4++) {
            float f = i4 + 0.5f;
            for (int i5 = 0; i5 < i3; i5 += 2) {
                fArr[i5] = (i5 / 2) + 0.5f;
                fArr[i5 + 1] = f;
            }
            moVar.OooO0o(fArr);
            ko.OooO00o(eoVar, fArr);
            for (int i6 = 0; i6 < i3; i6 += 2) {
                try {
                    if (eoVar.OooO0o0((int) fArr[i6], (int) fArr[i6 + 1])) {
                        eoVar2.OooOOo0(i6 / 2, i4);
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw NotFoundException.getNotFoundInstance();
                }
            }
        }
        return eoVar2;
    }
}

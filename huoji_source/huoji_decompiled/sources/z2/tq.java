package z2;

import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;

/* JADX INFO: loaded from: classes2.dex */
public final class tq {
    private static final int[] OooO0OO = {1, 1, 2};
    private final rq OooO00o = new rq();
    private final sq OooO0O0 = new sq();

    public final em OooO00o(int i, Cdo cdo, int i2) throws NotFoundException {
        int[] iArrOooOOO = uq.OooOOO(cdo, i2, false, OooO0OO);
        try {
            return this.OooO0O0.OooO0O0(i, cdo, iArrOooOOO);
        } catch (ReaderException unused) {
            return this.OooO00o.OooO0O0(i, cdo, iArrOooOOO);
        }
    }
}

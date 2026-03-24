package z2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class vo {
    private final so OooO00o;
    private final List<to> OooO0O0;

    public vo(so soVar) {
        this.OooO00o = soVar;
        ArrayList arrayList = new ArrayList();
        this.OooO0O0 = arrayList;
        arrayList.add(new to(soVar, new int[]{1}));
    }

    private to OooO00o(int i) {
        if (i >= this.OooO0O0.size()) {
            List<to> list = this.OooO0O0;
            to toVarOooO = list.get(list.size() - 1);
            for (int size = this.OooO0O0.size(); size <= i; size++) {
                so soVar = this.OooO00o;
                toVarOooO = toVarOooO.OooO(new to(soVar, new int[]{1, soVar.OooO0OO((size - 1) + soVar.OooO0Oo())}));
                this.OooO0O0.add(toVarOooO);
            }
        }
        return this.OooO0O0.get(i);
    }

    public final void OooO0O0(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        to toVarOooO00o = OooO00o(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArrOooO0o0 = new to(this.OooO00o, iArr2).OooOO0(i, 1).OooO0O0(toVarOooO00o)[1].OooO0o0();
        int length2 = i - iArrOooO0o0.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(iArrOooO0o0, 0, iArr, length + length2, iArrOooO0o0.length);
    }
}

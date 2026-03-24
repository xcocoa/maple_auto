package z2;

import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public final class rm {
    public static final rm OooO0o0 = new rm(sm.OooO0O0, 0, 0, 0);
    private final int OooO00o;
    private final sm OooO0O0;
    private final int OooO0OO;
    private final int OooO0Oo;

    private rm(sm smVar, int i, int i2, int i3) {
        this.OooO0O0 = smVar;
        this.OooO00o = i;
        this.OooO0OO = i2;
        this.OooO0Oo = i3;
    }

    public final rm OooO(int i, int i2) {
        sm smVar = this.OooO0O0;
        int i3 = this.OooO00o;
        int i4 = i3 == 2 ? 4 : 5;
        return new rm(smVar.OooO00o(pm.OooOO0[i3][i], i4).OooO00o(i2, 5), this.OooO00o, 0, this.OooO0Oo + i4 + 5);
    }

    public final rm OooO00o(int i) {
        sm smVarOooO00o = this.OooO0O0;
        int i2 = this.OooO00o;
        int i3 = this.OooO0Oo;
        if (i2 == 4 || i2 == 2) {
            int i4 = pm.OooO0oo[i2][0];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            smVarOooO00o = smVarOooO00o.OooO00o(i5, i6);
            i3 += i6;
            i2 = 0;
        }
        int i7 = this.OooO0OO;
        rm rmVar = new rm(smVarOooO00o, i2, i7 + 1, i3 + ((i7 == 0 || i7 == 31) ? 18 : i7 == 62 ? 9 : 8));
        return rmVar.OooO0OO == 2078 ? rmVar.OooO0O0(i + 1) : rmVar;
    }

    public final rm OooO0O0(int i) {
        int i2 = this.OooO0OO;
        return i2 == 0 ? this : new rm(this.OooO0O0.OooO0O0(i - i2, i2), this.OooO00o, 0, this.OooO0Oo);
    }

    public final int OooO0OO() {
        return this.OooO0OO;
    }

    public final int OooO0Oo() {
        return this.OooO0Oo;
    }

    public final sm OooO0o() {
        return this.OooO0O0;
    }

    public final int OooO0o0() {
        return this.OooO00o;
    }

    public final boolean OooO0oO(rm rmVar) {
        int i;
        int i2 = this.OooO0Oo + (pm.OooO0oo[this.OooO00o][rmVar.OooO00o] >> 16);
        int i3 = rmVar.OooO0OO;
        if (i3 > 0 && ((i = this.OooO0OO) == 0 || i > i3)) {
            i2 += 10;
        }
        return i2 <= rmVar.OooO0Oo;
    }

    public final rm OooO0oo(int i, int i2) {
        int i3 = this.OooO0Oo;
        sm smVarOooO00o = this.OooO0O0;
        int i4 = this.OooO00o;
        if (i != i4) {
            int i5 = pm.OooO0oo[i4][i];
            int i6 = 65535 & i5;
            int i7 = i5 >> 16;
            smVarOooO00o = smVarOooO00o.OooO00o(i6, i7);
            i3 += i7;
        }
        int i8 = i == 2 ? 4 : 5;
        return new rm(smVarOooO00o.OooO00o(i2, i8), i, 0, i3 + i8);
    }

    public final Cdo OooOO0(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        for (sm smVarOooO0Oo = OooO0O0(bArr.length).OooO0O0; smVarOooO0Oo != null; smVarOooO0Oo = smVarOooO0Oo.OooO0Oo()) {
            linkedList.addFirst(smVarOooO0Oo);
        }
        Cdo cdo = new Cdo();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((sm) it.next()).OooO0OO(cdo, bArr);
        }
        return cdo;
    }

    public final String toString() {
        return String.format("%s bits=%d bytes=%d", pm.OooO0O0[this.OooO00o], Integer.valueOf(this.OooO0Oo), Integer.valueOf(this.OooO0OO));
    }
}

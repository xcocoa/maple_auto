package z2;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class er {
    private er() {
    }

    public static Cdo OooO00o(List<fr> list) {
        int size = (list.size() << 1) - 1;
        if (list.get(list.size() - 1).OooO0Oo() == null) {
            size--;
        }
        Cdo cdo = new Cdo(size * 12);
        int i = 0;
        int iOooO0O0 = list.get(0).OooO0Oo().OooO0O0();
        for (int i2 = 11; i2 >= 0; i2--) {
            if (((1 << i2) & iOooO0O0) != 0) {
                cdo.OooOOo(i);
            }
            i++;
        }
        for (int i3 = 1; i3 < list.size(); i3++) {
            fr frVar = list.get(i3);
            int iOooO0O02 = frVar.OooO0OO().OooO0O0();
            for (int i4 = 11; i4 >= 0; i4--) {
                if (((1 << i4) & iOooO0O02) != 0) {
                    cdo.OooOOo(i);
                }
                i++;
            }
            if (frVar.OooO0Oo() != null) {
                int iOooO0O03 = frVar.OooO0Oo().OooO0O0();
                for (int i5 = 11; i5 >= 0; i5--) {
                    if (((1 << i5) & iOooO0O03) != 0) {
                        cdo.OooOOo(i);
                    }
                    i++;
                }
            }
        }
        return cdo;
    }
}

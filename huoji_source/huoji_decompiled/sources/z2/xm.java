package z2;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class xm extends tm {
    private static String OooOOoo(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        return str + ' ' + str2;
    }

    private static String[] OooOo00(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList(3);
        if (str != null) {
            arrayList.add(str);
        }
        if (str2 != null) {
            arrayList.add(str2);
        }
        if (str3 != null) {
            arrayList.add(str3);
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[size]);
    }

    @Override // z2.mn
    /* JADX INFO: renamed from: OooOo0, reason: merged with bridge method [inline-methods] */
    public final wm OooOO0O(em emVar) {
        String strOooO0OO = mn.OooO0OO(emVar);
        if (!strOooO0OO.startsWith("BIZCARD:")) {
            return null;
        }
        String strOooOOoo = OooOOoo(tm.OooOOo("N:", strOooO0OO, true), tm.OooOOo("X:", strOooO0OO, true));
        String strOooOOo = tm.OooOOo("T:", strOooO0OO, true);
        String strOooOOo2 = tm.OooOOo("C:", strOooO0OO, true);
        return new wm(mn.OooOO0(strOooOOoo), null, null, OooOo00(tm.OooOOo("B:", strOooO0OO, true), tm.OooOOo("M:", strOooO0OO, true), tm.OooOOo("F:", strOooO0OO, true)), null, mn.OooOO0(tm.OooOOo("E:", strOooO0OO, true)), null, null, null, tm.OooOOo0("A:", strOooO0OO, true), null, strOooOOo2, null, strOooOOo, null, null);
    }
}

package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class vm extends tm {
    private static String OooOo00(String str) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf < 0) {
            return str;
        }
        return str.substring(iIndexOf + 1) + ' ' + str.substring(0, iIndexOf);
    }

    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOoo, reason: merged with bridge method [inline-methods] */
    public final wm OooOO0O(em emVar) {
        String[] strArrOooOOo0;
        String strOooO0OO = mn.OooO0OO(emVar);
        if (!strOooO0OO.startsWith("MECARD:") || (strArrOooOOo0 = tm.OooOOo0("N:", strOooO0OO, true)) == null) {
            return null;
        }
        String strOooOo00 = OooOo00(strArrOooOOo0[0]);
        String strOooOOo = tm.OooOOo("SOUND:", strOooO0OO, true);
        String[] strArrOooOOo02 = tm.OooOOo0("TEL:", strOooO0OO, true);
        String[] strArrOooOOo03 = tm.OooOOo0("EMAIL:", strOooO0OO, true);
        String strOooOOo2 = tm.OooOOo("NOTE:", strOooO0OO, false);
        String[] strArrOooOOo04 = tm.OooOOo0("ADR:", strOooO0OO, true);
        String strOooOOo3 = tm.OooOOo("BDAY:", strOooO0OO, true);
        return new wm(mn.OooOO0(strOooOo00), null, strOooOOo, strArrOooOOo02, null, strArrOooOOo03, null, null, strOooOOo2, strArrOooOOo04, null, tm.OooOOo("ORG:", strOooO0OO, true), !mn.OooO0Oo(strOooOOo3, 8) ? null : strOooOOo3, null, tm.OooOOo0("URL:", strOooO0OO, true), null);
    }
}

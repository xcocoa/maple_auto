package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class co extends mn {
    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public final bo OooOO0O(em emVar) {
        String strSubstring;
        String strOooO0oO;
        String strOooO0OO = mn.OooO0OO(emVar);
        if (!strOooO0OO.startsWith("WIFI:") || (strOooO0oO = mn.OooO0oO("S:", (strSubstring = strOooO0OO.substring(5)), ';', false)) == null || strOooO0oO.isEmpty()) {
            return null;
        }
        String strOooO0oO2 = mn.OooO0oO("P:", strSubstring, ';', false);
        String strOooO0oO3 = mn.OooO0oO("T:", strSubstring, ';', false);
        if (strOooO0oO3 == null) {
            strOooO0oO3 = "nopass";
        }
        return new bo(strOooO0oO3, strOooO0oO, strOooO0oO2, Boolean.parseBoolean(mn.OooO0oO("H:", strSubstring, ';', false)), mn.OooO0oO("I:", strSubstring, ';', false), mn.OooO0oO("A:", strSubstring, ';', false), mn.OooO0oO("E:", strSubstring, ';', false), mn.OooO0oO("H:", strSubstring, ';', false));
    }
}

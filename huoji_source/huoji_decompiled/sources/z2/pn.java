package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class pn extends mn {
    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public final on OooOO0O(em emVar) {
        String strSubstring;
        String strOooO0OO = mn.OooO0OO(emVar);
        if (!strOooO0OO.startsWith("smsto:") && !strOooO0OO.startsWith("SMSTO:") && !strOooO0OO.startsWith("mmsto:") && !strOooO0OO.startsWith("MMSTO:")) {
            return null;
        }
        String strSubstring2 = strOooO0OO.substring(6);
        int iIndexOf = strSubstring2.indexOf(58);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring2.substring(iIndexOf + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf);
        } else {
            strSubstring = null;
        }
        return new on(strSubstring2, (String) null, (String) null, strSubstring);
    }
}

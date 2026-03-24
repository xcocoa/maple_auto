package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class qn extends mn {
    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public final an OooOO0O(em emVar) {
        String strSubstring;
        String str;
        String strOooO0OO = mn.OooO0OO(emVar);
        if (!strOooO0OO.startsWith("smtp:") && !strOooO0OO.startsWith("SMTP:")) {
            return null;
        }
        String strSubstring2 = strOooO0OO.substring(5);
        int iIndexOf = strSubstring2.indexOf(58);
        if (iIndexOf >= 0) {
            String strSubstring3 = strSubstring2.substring(iIndexOf + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf);
            int iIndexOf2 = strSubstring3.indexOf(58);
            if (iIndexOf2 >= 0) {
                String strSubstring4 = strSubstring3.substring(iIndexOf2 + 1);
                strSubstring = strSubstring3.substring(0, iIndexOf2);
                str = strSubstring4;
            } else {
                str = null;
                strSubstring = strSubstring3;
            }
        } else {
            strSubstring = null;
            str = null;
        }
        return new an(new String[]{strSubstring2}, null, null, strSubstring, str);
    }
}

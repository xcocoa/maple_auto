package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class wn extends mn {
    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public final un OooOO0O(em emVar) {
        int iIndexOf;
        String strOooO0OO = mn.OooO0OO(emVar);
        if ((strOooO0OO.startsWith("urlto:") || strOooO0OO.startsWith("URLTO:")) && (iIndexOf = strOooO0OO.indexOf(58, 6)) >= 0) {
            return new un(strOooO0OO.substring(iIndexOf + 1), iIndexOf > 6 ? strOooO0OO.substring(6, iIndexOf) : null);
        }
        return null;
    }
}

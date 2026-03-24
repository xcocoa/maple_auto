package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class sn extends mn {
    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public final rn OooOO0O(em emVar) {
        String str;
        String strOooO0OO = mn.OooO0OO(emVar);
        if (!strOooO0OO.startsWith("tel:") && !strOooO0OO.startsWith("TEL:")) {
            return null;
        }
        if (strOooO0OO.startsWith("TEL:")) {
            str = "tel:" + strOooO0OO.substring(4);
        } else {
            str = strOooO0OO;
        }
        int iIndexOf = strOooO0OO.indexOf(63, 4);
        return new rn(iIndexOf < 0 ? strOooO0OO.substring(4) : strOooO0OO.substring(4, iIndexOf), str, null);
    }
}

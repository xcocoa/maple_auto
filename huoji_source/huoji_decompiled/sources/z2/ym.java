package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class ym extends tm {
    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOoo, reason: merged with bridge method [inline-methods] */
    public final un OooOO0O(em emVar) {
        String strOooO0oO = emVar.OooO0oO();
        if (!strOooO0oO.startsWith("MEBKM:")) {
            return null;
        }
        String strOooOOo = tm.OooOOo("TITLE:", strOooO0oO, true);
        String[] strArrOooOOo0 = tm.OooOOo0("URL:", strOooO0oO, true);
        if (strArrOooOOo0 == null) {
            return null;
        }
        String str = strArrOooOOo0[0];
        if (vn.OooOOo0(str)) {
            return new un(str, strOooOOo);
        }
        return null;
    }
}

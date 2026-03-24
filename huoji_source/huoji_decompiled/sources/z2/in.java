package z2;

import com.google.zxing.BarcodeFormat;

/* JADX INFO: loaded from: classes2.dex */
public final class in extends mn {
    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public final hn OooOO0O(em emVar) {
        if (emVar.OooO0O0() != BarcodeFormat.EAN_13) {
            return null;
        }
        String strOooO0OO = mn.OooO0OO(emVar);
        if (strOooO0OO.length() != 13) {
            return null;
        }
        if (strOooO0OO.startsWith("978") || strOooO0OO.startsWith("979")) {
            return new hn(strOooO0OO);
        }
        return null;
    }
}

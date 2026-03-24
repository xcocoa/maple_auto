package z2;

import com.google.zxing.BarcodeFormat;

/* JADX INFO: loaded from: classes2.dex */
public final class ln extends mn {
    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public final kn OooOO0O(em emVar) {
        BarcodeFormat barcodeFormatOooO0O0 = emVar.OooO0O0();
        if (barcodeFormatOooO0O0 != BarcodeFormat.UPC_A && barcodeFormatOooO0O0 != BarcodeFormat.UPC_E && barcodeFormatOooO0O0 != BarcodeFormat.EAN_8 && barcodeFormatOooO0O0 != BarcodeFormat.EAN_13) {
            return null;
        }
        String strOooO0OO = mn.OooO0OO(emVar);
        if (mn.OooO0Oo(strOooO0OO, strOooO0OO.length())) {
            return new kn(strOooO0OO, (barcodeFormatOooO0O0 == BarcodeFormat.UPC_E && strOooO0OO.length() == 8) ? wq.OooOOoo(strOooO0OO) : strOooO0OO);
        }
        return null;
    }
}

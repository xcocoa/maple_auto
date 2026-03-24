package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class mq extends nq {
    private final uq[] OooO00o;

    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public mq(Map<DecodeHintType, ?> map) {
        dm pqVar;
        Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(BarcodeFormat.EAN_13)) {
                pqVar = new eq();
            } else {
                pqVar = collection.contains(BarcodeFormat.UPC_A) ? new pq() : pqVar;
                if (collection.contains(BarcodeFormat.EAN_8)) {
                    arrayList.add(new gq());
                }
                if (collection.contains(BarcodeFormat.UPC_E)) {
                    arrayList.add(new wq());
                }
            }
            arrayList.add(pqVar);
            if (collection.contains(BarcodeFormat.EAN_8)) {
            }
            if (collection.contains(BarcodeFormat.UPC_E)) {
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new eq());
            arrayList.add(new gq());
            arrayList.add(new wq());
        }
        this.OooO00o = (uq[]) arrayList.toArray(new uq[arrayList.size()]);
    }

    @Override // z2.nq
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException {
        int[] iArrOooOOOo = uq.OooOOOo(cdo);
        for (uq uqVar : this.OooO00o) {
            try {
                em emVarOooOOO0 = uqVar.OooOOO0(i, cdo, iArrOooOOOo, map);
                boolean z = emVarOooOOO0.OooO0O0() == BarcodeFormat.EAN_13 && emVarOooOOO0.OooO0oO().charAt(0) == '0';
                Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
                boolean z3 = collection == null || collection.contains(BarcodeFormat.UPC_A);
                if (!z || !z3) {
                    return emVarOooOOO0;
                }
                em emVar = new em(emVarOooOOO0.OooO0oO().substring(1), emVarOooOOO0.OooO0Oo(), emVarOooOOO0.OooO0o(), BarcodeFormat.UPC_A);
                emVar.OooO(emVarOooOOO0.OooO0o0());
                return emVar;
            } catch (ReaderException unused) {
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.nq, z2.dm
    public final void reset() {
        for (uq uqVar : this.OooO00o) {
            uqVar.reset();
        }
    }
}

package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class lq extends nq {
    private final nq[] OooO00o;

    public lq(Map<DecodeHintType, ?> map) {
        Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        boolean z = (map == null || map.get(DecodeHintType.ASSUME_CODE_39_CHECK_DIGIT) == null) ? false : true;
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(BarcodeFormat.EAN_13) || collection.contains(BarcodeFormat.UPC_A) || collection.contains(BarcodeFormat.EAN_8) || collection.contains(BarcodeFormat.UPC_E)) {
                arrayList.add(new mq(map));
            }
            if (collection.contains(BarcodeFormat.CODE_39)) {
                arrayList.add(new aq(z));
            }
            if (collection.contains(BarcodeFormat.CODE_93)) {
                arrayList.add(new cq());
            }
            if (collection.contains(BarcodeFormat.CODE_128)) {
                arrayList.add(new zp());
            }
            if (collection.contains(BarcodeFormat.ITF)) {
                arrayList.add(new jq());
            }
            if (collection.contains(BarcodeFormat.CODABAR)) {
                arrayList.add(new xp());
            }
            if (collection.contains(BarcodeFormat.RSS_14)) {
                arrayList.add(new cr());
            }
            if (collection.contains(BarcodeFormat.RSS_EXPANDED)) {
                arrayList.add(new hr());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new mq(map));
            arrayList.add(new aq());
            arrayList.add(new xp());
            arrayList.add(new cq());
            arrayList.add(new zp());
            arrayList.add(new jq());
            arrayList.add(new cr());
            arrayList.add(new hr());
        }
        this.OooO00o = (nq[]) arrayList.toArray(new nq[arrayList.size()]);
    }

    @Override // z2.nq
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException {
        for (nq nqVar : this.OooO00o) {
            try {
                return nqVar.OooO0OO(i, cdo, map);
            } catch (ReaderException unused) {
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.nq, z2.dm
    public final void reset() {
        for (nq nqVar : this.OooO00o) {
            nqVar.reset();
        }
    }
}

package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zl implements dm {
    private Map<DecodeHintType, ?> OooO00o;
    private dm[] OooO0O0;

    private em OooO0OO(vl vlVar) throws NotFoundException {
        dm[] dmVarArr = this.OooO0O0;
        if (dmVarArr != null) {
            for (dm dmVar : dmVarArr) {
                try {
                    return dmVar.OooO00o(vlVar, this.OooO00o);
                } catch (ReaderException unused) {
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.dm
    public final em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException {
        OooO0o0(map);
        return OooO0OO(vlVar);
    }

    @Override // z2.dm
    public final em OooO0O0(vl vlVar) throws NotFoundException {
        OooO0o0(null);
        return OooO0OO(vlVar);
    }

    public final em OooO0Oo(vl vlVar) throws NotFoundException {
        if (this.OooO0O0 == null) {
            OooO0o0(null);
        }
        return OooO0OO(vlVar);
    }

    public final void OooO0o0(Map<DecodeHintType, ?> map) {
        this.OooO00o = map;
        boolean z = true;
        boolean z3 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (!collection.contains(BarcodeFormat.UPC_A) && !collection.contains(BarcodeFormat.UPC_E) && !collection.contains(BarcodeFormat.EAN_13) && !collection.contains(BarcodeFormat.EAN_8) && !collection.contains(BarcodeFormat.CODABAR) && !collection.contains(BarcodeFormat.CODE_39) && !collection.contains(BarcodeFormat.CODE_93) && !collection.contains(BarcodeFormat.CODE_128) && !collection.contains(BarcodeFormat.ITF) && !collection.contains(BarcodeFormat.RSS_14) && !collection.contains(BarcodeFormat.RSS_EXPANDED)) {
                z = false;
            }
            if (z && !z3) {
                arrayList.add(new lq(map));
            }
            if (collection.contains(BarcodeFormat.QR_CODE)) {
                arrayList.add(new ys());
            }
            if (collection.contains(BarcodeFormat.DATA_MATRIX)) {
                arrayList.add(new wo());
            }
            if (collection.contains(BarcodeFormat.AZTEC)) {
                arrayList.add(new jm());
            }
            if (collection.contains(BarcodeFormat.PDF_417)) {
                arrayList.add(new bs());
            }
            if (collection.contains(BarcodeFormat.MAXICODE)) {
                arrayList.add(new pp());
            }
            if (z && z3) {
                arrayList.add(new lq(map));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z3) {
                arrayList.add(new lq(map));
            }
            arrayList.add(new ys());
            arrayList.add(new wo());
            arrayList.add(new jm());
            arrayList.add(new bs());
            arrayList.add(new pp());
            if (z3) {
                arrayList.add(new lq(map));
            }
        }
        this.OooO0O0 = (dm[]) arrayList.toArray(new dm[arrayList.size()]);
    }

    @Override // z2.dm
    public final void reset() {
        dm[] dmVarArr = this.OooO0O0;
        if (dmVarArr != null) {
            for (dm dmVar : dmVarArr) {
                dmVar.reset();
            }
        }
    }
}

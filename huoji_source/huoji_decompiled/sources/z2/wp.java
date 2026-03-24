package z2;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class wp extends jt {
    private static final io[] OooO0OO = new io[0];

    public wp(eo eoVar) {
        super(eoVar);
    }

    public final io[] OooOOO(Map<DecodeHintType, ?> map) throws NotFoundException {
        lt[] ltVarArrOooOOo = new MultiFinderPatternFinder(OooO0oo(), map == null ? null : (gm) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK)).OooOOo(map);
        if (ltVarArrOooOOo.length == 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        ArrayList arrayList = new ArrayList();
        for (lt ltVar : ltVarArrOooOOo) {
            try {
                arrayList.add(OooOO0(ltVar));
            } catch (ReaderException unused) {
            }
        }
        return arrayList.isEmpty() ? OooO0OO : (io[]) arrayList.toArray(new io[arrayList.size()]);
    }
}

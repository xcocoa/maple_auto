package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class pq extends uq {
    private final uq OooOO0O = new eq();

    private static em OooOOoo(em emVar) throws FormatException {
        String strOooO0oO = emVar.OooO0oO();
        if (strOooO0oO.charAt(0) != '0') {
            throw FormatException.getFormatInstance();
        }
        em emVar2 = new em(strOooO0oO.substring(1), null, emVar.OooO0o(), BarcodeFormat.UPC_A);
        if (emVar.OooO0o0() != null) {
            emVar2.OooO(emVar.OooO0o0());
        }
        return emVar2;
    }

    @Override // z2.nq, z2.dm
    public final em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        return OooOOoo(this.OooOO0O.OooO00o(vlVar, map));
    }

    @Override // z2.nq, z2.dm
    public final em OooO0O0(vl vlVar) throws NotFoundException, FormatException {
        return OooOOoo(this.OooOO0O.OooO0O0(vlVar));
    }

    @Override // z2.uq, z2.nq
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        return OooOOoo(this.OooOO0O.OooO0OO(i, cdo, map));
    }

    @Override // z2.uq
    public final int OooOO0o(Cdo cdo, int[] iArr, StringBuilder sb) throws NotFoundException {
        return this.OooOO0O.OooOO0o(cdo, iArr, sb);
    }

    @Override // z2.uq
    public final em OooOOO0(int i, Cdo cdo, int[] iArr, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        return OooOOoo(this.OooOO0O.OooOOO0(i, cdo, iArr, map));
    }

    @Override // z2.uq
    public final BarcodeFormat OooOOo0() {
        return BarcodeFormat.UPC_A;
    }
}

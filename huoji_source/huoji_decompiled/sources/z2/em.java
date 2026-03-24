package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ResultMetadataType;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class em {
    private final String OooO00o;
    private final byte[] OooO0O0;
    private final int OooO0OO;
    private fm[] OooO0Oo;
    private Map<ResultMetadataType, Object> OooO0o;
    private final BarcodeFormat OooO0o0;
    private final long OooO0oO;

    public em(String str, byte[] bArr, int i, fm[] fmVarArr, BarcodeFormat barcodeFormat, long j) {
        this.OooO00o = str;
        this.OooO0O0 = bArr;
        this.OooO0OO = i;
        this.OooO0Oo = fmVarArr;
        this.OooO0o0 = barcodeFormat;
        this.OooO0o = null;
        this.OooO0oO = j;
    }

    public em(String str, byte[] bArr, fm[] fmVarArr, BarcodeFormat barcodeFormat) {
        this(str, bArr, fmVarArr, barcodeFormat, System.currentTimeMillis());
    }

    public em(String str, byte[] bArr, fm[] fmVarArr, BarcodeFormat barcodeFormat, long j) {
        this(str, bArr, bArr == null ? 0 : bArr.length * 8, fmVarArr, barcodeFormat, j);
    }

    public final void OooO(Map<ResultMetadataType, Object> map) {
        if (map != null) {
            Map<ResultMetadataType, Object> map2 = this.OooO0o;
            if (map2 == null) {
                this.OooO0o = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    public final void OooO00o(fm[] fmVarArr) {
        fm[] fmVarArr2 = this.OooO0Oo;
        if (fmVarArr2 == null) {
            this.OooO0Oo = fmVarArr;
            return;
        }
        if (fmVarArr == null || fmVarArr.length <= 0) {
            return;
        }
        fm[] fmVarArr3 = new fm[fmVarArr2.length + fmVarArr.length];
        System.arraycopy(fmVarArr2, 0, fmVarArr3, 0, fmVarArr2.length);
        System.arraycopy(fmVarArr, 0, fmVarArr3, fmVarArr2.length, fmVarArr.length);
        this.OooO0Oo = fmVarArr3;
    }

    public final BarcodeFormat OooO0O0() {
        return this.OooO0o0;
    }

    public final int OooO0OO() {
        return this.OooO0OO;
    }

    public final byte[] OooO0Oo() {
        return this.OooO0O0;
    }

    public final fm[] OooO0o() {
        return this.OooO0Oo;
    }

    public final Map<ResultMetadataType, Object> OooO0o0() {
        return this.OooO0o;
    }

    public final String OooO0oO() {
        return this.OooO00o;
    }

    public final long OooO0oo() {
        return this.OooO0oO;
    }

    public final void OooOO0(ResultMetadataType resultMetadataType, Object obj) {
        if (this.OooO0o == null) {
            this.OooO0o = new EnumMap(ResultMetadataType.class);
        }
        this.OooO0o.put(resultMetadataType, obj);
    }

    public final String toString() {
        return this.OooO00o;
    }
}

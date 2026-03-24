package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.oned.Code128Writer;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class am implements hm {

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[BarcodeFormat.values().length];
            OooO00o = iArr;
            try {
                iArr[BarcodeFormat.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[BarcodeFormat.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[BarcodeFormat.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[BarcodeFormat.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[BarcodeFormat.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO00o[BarcodeFormat.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                OooO00o[BarcodeFormat.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                OooO00o[BarcodeFormat.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                OooO00o[BarcodeFormat.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                OooO00o[BarcodeFormat.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                OooO00o[BarcodeFormat.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                OooO00o[BarcodeFormat.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                OooO00o[BarcodeFormat.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    @Override // z2.hm
    public final eo OooO00o(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return OooO0O0(str, barcodeFormat, i, i2, null);
    }

    @Override // z2.hm
    public final eo OooO0O0(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        hm hqVar;
        switch (OooO00o.OooO00o[barcodeFormat.ordinal()]) {
            case 1:
                hqVar = new hq();
                break;
            case 2:
                hqVar = new xq();
                break;
            case 3:
                hqVar = new fq();
                break;
            case 4:
                hqVar = new qq();
                break;
            case 5:
                hqVar = new zs();
                break;
            case 6:
                hqVar = new bq();
                break;
            case 7:
                hqVar = new dq();
                break;
            case 8:
                hqVar = new Code128Writer();
                break;
            case 9:
                hqVar = new kq();
                break;
            case 10:
                hqVar = new ds();
                break;
            case 11:
                hqVar = new yp();
                break;
            case 12:
                hqVar = new xo();
                break;
            case 13:
                hqVar = new km();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(barcodeFormat)));
        }
        return hqVar.OooO0O0(str, barcodeFormat, i, i2, map);
    }
}

package z2;

import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.ResultMetadataType;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class nq implements dm {
    /* JADX WARN: Removed duplicated region for block: B:38:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private em OooO0Oo(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException {
        nq nqVar;
        Map<DecodeHintType, ?> map2;
        int i;
        Map<DecodeHintType, ?> map3 = map;
        int iOooO0o0 = vlVar.OooO0o0();
        int iOooO0Oo = vlVar.OooO0Oo();
        Cdo cdo = new Cdo(iOooO0o0);
        char c = 0;
        int i2 = 1;
        boolean z = map3 != null && map3.containsKey(DecodeHintType.TRY_HARDER);
        int iMax = Math.max(1, iOooO0Oo >> (z ? 8 : 5));
        int i3 = z ? iOooO0Oo : 15;
        int i4 = iOooO0Oo / 2;
        int i5 = 0;
        while (i5 < i3) {
            int i6 = i5 + 1;
            int i7 = i6 / 2;
            if (!((i5 & 1) == 0)) {
                i7 = -i7;
            }
            int i8 = (i7 * iMax) + i4;
            if (i8 < 0 || i8 >= iOooO0Oo) {
                break;
            }
            try {
                cdo = vlVar.OooO0OO(i8, cdo);
                int i9 = 0;
                while (i9 < 2) {
                    if (i9 == i2) {
                        cdo.OooOOo0();
                        if (map3 != null) {
                            DecodeHintType decodeHintType = DecodeHintType.NEED_RESULT_POINT_CALLBACK;
                            if (map3.containsKey(decodeHintType)) {
                                EnumMap enumMap = new EnumMap(DecodeHintType.class);
                                enumMap.putAll(map3);
                                enumMap.remove(decodeHintType);
                                nqVar = this;
                                map3 = enumMap;
                            } else {
                                nqVar = this;
                            }
                        }
                    }
                    try {
                        em emVarOooO0OO = nqVar.OooO0OO(i8, cdo, map3);
                        if (i9 == i2) {
                            emVarOooO0OO.OooOO0(ResultMetadataType.ORIENTATION, 180);
                            fm[] fmVarArrOooO0o = emVarOooO0OO.OooO0o();
                            if (fmVarArrOooO0o != null) {
                                map2 = map3;
                                float f = iOooO0o0;
                                try {
                                    i = iOooO0o0;
                                    try {
                                        fmVarArrOooO0o[0] = new fm((f - fmVarArrOooO0o[c].OooO0OO()) - 1.0f, fmVarArrOooO0o[c].OooO0Oo());
                                        try {
                                            fmVarArrOooO0o[1] = new fm((f - fmVarArrOooO0o[1].OooO0OO()) - 1.0f, fmVarArrOooO0o[1].OooO0Oo());
                                        } catch (ReaderException unused) {
                                            continue;
                                            i9++;
                                            map3 = map2;
                                            iOooO0o0 = i;
                                            c = 0;
                                            i2 = 1;
                                        }
                                    } catch (ReaderException unused2) {
                                        i9++;
                                        map3 = map2;
                                        iOooO0o0 = i;
                                        c = 0;
                                        i2 = 1;
                                    }
                                } catch (ReaderException unused3) {
                                    i = iOooO0o0;
                                    i9++;
                                    map3 = map2;
                                    iOooO0o0 = i;
                                    c = 0;
                                    i2 = 1;
                                }
                            }
                        }
                        return emVarOooO0OO;
                    } catch (ReaderException unused4) {
                        map2 = map3;
                    }
                }
            } catch (NotFoundException unused5) {
            }
            i5 = i6;
            iOooO0o0 = iOooO0o0;
            c = 0;
            i2 = 1;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static void OooO0o(Cdo cdo, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i2 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int iOooOOO0 = cdo.OooOOO0();
        if (i >= iOooOOO0) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z = !cdo.OooO0oo(i);
        while (i < iOooOOO0) {
            if (cdo.OooO0oo(i) == z) {
                i2++;
                if (i2 == length) {
                    break;
                }
                iArr[i2] = 1;
                z = !z;
            } else {
                iArr[i2] = iArr[i2] + 1;
            }
            i++;
        }
        if (i2 != length) {
            if (i2 != length - 1 || i != iOooOOO0) {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    public static float OooO0o0(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = i;
        float f3 = f2 / i2;
        float f4 = f * f3;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f6 = iArr2[i4] * f3;
            float f7 = iArr[i4];
            float f8 = f7 > f6 ? f7 - f6 : f6 - f7;
            if (f8 > f4) {
                return Float.POSITIVE_INFINITY;
            }
            f5 += f8;
        }
        return f5 / f2;
    }

    public static void OooO0oO(Cdo cdo, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        boolean zOooO0oo = cdo.OooO0oo(i);
        while (i > 0 && length >= 0) {
            i--;
            if (cdo.OooO0oo(i) != zOooO0oo) {
                length--;
                zOooO0oo = !zOooO0oo;
            }
        }
        if (length >= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        OooO0o(cdo, i + 1, iArr);
    }

    @Override // z2.dm
    public em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        try {
            return OooO0Oo(vlVar, map);
        } catch (NotFoundException e) {
            if (!(map != null && map.containsKey(DecodeHintType.TRY_HARDER)) || !vlVar.OooO0oO()) {
                throw e;
            }
            vl vlVarOooO0oo = vlVar.OooO0oo();
            em emVarOooO0Oo = OooO0Oo(vlVarOooO0oo, map);
            Map<ResultMetadataType, Object> mapOooO0o0 = emVarOooO0Oo.OooO0o0();
            int iIntValue = SubsamplingScaleImageView.ORIENTATION_270;
            if (mapOooO0o0 != null) {
                ResultMetadataType resultMetadataType = ResultMetadataType.ORIENTATION;
                if (mapOooO0o0.containsKey(resultMetadataType)) {
                    iIntValue = (((Integer) mapOooO0o0.get(resultMetadataType)).intValue() + SubsamplingScaleImageView.ORIENTATION_270) % 360;
                }
            }
            emVarOooO0Oo.OooOO0(ResultMetadataType.ORIENTATION, Integer.valueOf(iIntValue));
            fm[] fmVarArrOooO0o = emVarOooO0Oo.OooO0o();
            if (fmVarArrOooO0o != null) {
                int iOooO0Oo = vlVarOooO0oo.OooO0Oo();
                for (int i = 0; i < fmVarArrOooO0o.length; i++) {
                    fmVarArrOooO0o[i] = new fm((iOooO0Oo - fmVarArrOooO0o[i].OooO0Oo()) - 1.0f, fmVarArrOooO0o[i].OooO0OO());
                }
            }
            return emVarOooO0Oo;
        }
    }

    @Override // z2.dm
    public em OooO0O0(vl vlVar) throws NotFoundException, FormatException {
        return OooO00o(vlVar, null);
    }

    public abstract em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException;

    @Override // z2.dm
    public void reset() {
    }
}

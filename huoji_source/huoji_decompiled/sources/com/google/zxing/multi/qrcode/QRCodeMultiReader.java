package com.google.zxing.multi.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.ResultMetadataType;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import z2.em;
import z2.fm;
import z2.ft;
import z2.go;
import z2.io;
import z2.vl;
import z2.vp;
import z2.wp;
import z2.ys;

/* JADX INFO: loaded from: classes2.dex */
public final class QRCodeMultiReader extends ys implements vp {
    private static final em[] OooO0OO = new em[0];
    private static final fm[] OooO0Oo = new fm[0];

    public static final class SAComparator implements Serializable, Comparator<em> {
        private SAComparator() {
        }

        @Override // java.util.Comparator
        public final int compare(em emVar, em emVar2) {
            Map<ResultMetadataType, Object> mapOooO0o0 = emVar.OooO0o0();
            ResultMetadataType resultMetadataType = ResultMetadataType.STRUCTURED_APPEND_SEQUENCE;
            return Integer.compare(((Integer) mapOooO0o0.get(resultMetadataType)).intValue(), ((Integer) emVar2.OooO0o0().get(resultMetadataType)).intValue());
        }
    }

    private static List<em> OooO0oo(List<em> list) {
        boolean z;
        Iterator<em> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (it.next().OooO0o0().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)) {
                z = true;
                break;
            }
        }
        if (!z) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<em> arrayList2 = new ArrayList();
        for (em emVar : list) {
            arrayList.add(emVar);
            if (emVar.OooO0o0().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)) {
                arrayList2.add(emVar);
            }
        }
        Collections.sort(arrayList2, new SAComparator());
        StringBuilder sb = new StringBuilder();
        int length = 0;
        int length2 = 0;
        for (em emVar2 : arrayList2) {
            sb.append(emVar2.OooO0oO());
            length += emVar2.OooO0Oo().length;
            Map<ResultMetadataType, Object> mapOooO0o0 = emVar2.OooO0o0();
            ResultMetadataType resultMetadataType = ResultMetadataType.BYTE_SEGMENTS;
            if (mapOooO0o0.containsKey(resultMetadataType)) {
                Iterator it2 = ((Iterable) emVar2.OooO0o0().get(resultMetadataType)).iterator();
                while (it2.hasNext()) {
                    length2 += ((byte[]) it2.next()).length;
                }
            }
        }
        byte[] bArr = new byte[length];
        byte[] bArr2 = new byte[length2];
        int length3 = 0;
        int length4 = 0;
        for (em emVar3 : arrayList2) {
            System.arraycopy(emVar3.OooO0Oo(), 0, bArr, length3, emVar3.OooO0Oo().length);
            length3 += emVar3.OooO0Oo().length;
            Map<ResultMetadataType, Object> mapOooO0o02 = emVar3.OooO0o0();
            ResultMetadataType resultMetadataType2 = ResultMetadataType.BYTE_SEGMENTS;
            if (mapOooO0o02.containsKey(resultMetadataType2)) {
                for (byte[] bArr3 : (Iterable) emVar3.OooO0o0().get(resultMetadataType2)) {
                    System.arraycopy(bArr3, 0, bArr2, length4, bArr3.length);
                    length4 += bArr3.length;
                }
            }
        }
        em emVar4 = new em(sb.toString(), bArr, OooO0Oo, BarcodeFormat.QR_CODE);
        if (length2 > 0) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(bArr2);
            emVar4.OooOO0(ResultMetadataType.BYTE_SEGMENTS, arrayList3);
        }
        arrayList.add(emVar4);
        return arrayList;
    }

    @Override // z2.vp
    public final em[] OooO0OO(vl vlVar) throws NotFoundException {
        return OooO0Oo(vlVar, null);
    }

    @Override // z2.vp
    public final em[] OooO0Oo(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException {
        ArrayList arrayList = new ArrayList();
        for (io ioVar : new wp(vlVar.OooO0O0()).OooOOO(map)) {
            try {
                go goVarOooO0OO = OooO0o().OooO0OO(ioVar.OooO00o(), map);
                fm[] fmVarArrOooO0O0 = ioVar.OooO0O0();
                if (goVarOooO0OO.OooO0o() instanceof ft) {
                    ((ft) goVarOooO0OO.OooO0o()).OooO00o(fmVarArrOooO0O0);
                }
                em emVar = new em(goVarOooO0OO.OooOO0(), goVarOooO0OO.OooO0oO(), fmVarArrOooO0O0, BarcodeFormat.QR_CODE);
                List<byte[]> listOooO00o = goVarOooO0OO.OooO00o();
                if (listOooO00o != null) {
                    emVar.OooOO0(ResultMetadataType.BYTE_SEGMENTS, listOooO00o);
                }
                String strOooO0O0 = goVarOooO0OO.OooO0O0();
                if (strOooO0O0 != null) {
                    emVar.OooOO0(ResultMetadataType.ERROR_CORRECTION_LEVEL, strOooO0O0);
                }
                if (goVarOooO0OO.OooOO0O()) {
                    emVar.OooOO0(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(goVarOooO0OO.OooO()));
                    emVar.OooOO0(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(goVarOooO0OO.OooO0oo()));
                }
                arrayList.add(emVar);
            } catch (ReaderException unused) {
            }
        }
        if (arrayList.isEmpty()) {
            return OooO0OO;
        }
        List<em> listOooO0oo = OooO0oo(arrayList);
        return (em[]) listOooO0oo.toArray(new em[listOooO0oo.size()]);
    }
}

package com.googlecode.tesseract.android;

import android.util.Log;
import android.util.Pair;
import com.anythink.expressad.video.module.a.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ResultIterator extends PageIterator {
    private final long OooO0O0;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        System.loadLibrary("tess");
    }

    public ResultIterator(long j) {
        super(j);
        this.OooO0O0 = j;
    }

    private void OooO() {
        nativeDelete(this.OooO0O0);
    }

    private List<Pair<String, Double>> OooO0o() {
        String[] strArrNativeGetSymbolChoices = nativeGetSymbolChoices(this.OooO0O0);
        ArrayList arrayList = new ArrayList();
        for (String str : strArrNativeGetSymbolChoices) {
            int iLastIndexOf = str.lastIndexOf(a.O);
            Double dValueOf = Double.valueOf(0.0d);
            if (iLastIndexOf > 0) {
                String strSubstring = str.substring(0, iLastIndexOf);
                try {
                    dValueOf = Double.valueOf(Double.parseDouble(str.substring(iLastIndexOf + 1)));
                } catch (NumberFormatException unused) {
                    Log.e("ResultIterator", "Invalid confidence level for ".concat(String.valueOf(str)));
                }
                str = strSubstring;
            }
            arrayList.add(new Pair(str, dValueOf));
        }
        return arrayList;
    }

    private String OooO0o0(int i) {
        return nativeGetUTF8Text(this.OooO0O0, i);
    }

    private boolean OooO0oO(int i, int i2) {
        return nativeIsAtFinalElement(this.OooO0O0, i, i2);
    }

    private float OooO0oo(int i) {
        return nativeConfidence(this.OooO0O0, i);
    }

    private boolean OooOO0(int i) {
        return nativeIsAtBeginningOf(this.OooO0O0, i);
    }

    private static native float nativeConfidence(long j, int i);

    private static native void nativeDelete(long j);

    private static native String[] nativeGetSymbolChoices(long j);

    private static native String nativeGetUTF8Text(long j, int i);

    private static native boolean nativeIsAtBeginningOf(long j, int i);

    private static native boolean nativeIsAtFinalElement(long j, int i, int i2);
}

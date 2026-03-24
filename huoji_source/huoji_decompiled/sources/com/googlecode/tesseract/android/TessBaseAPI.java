package com.googlecode.tesseract.android;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.googlecode.leptonica.android.Pix;
import com.googlecode.leptonica.android.Pixa;
import com.googlecode.leptonica.android.ReadFile;
import java.io.File;
import z2.k3;

/* JADX INFO: loaded from: classes2.dex */
public class TessBaseAPI {
    public static final int OooO = 0;
    public static final String OooO0Oo = "tessedit_char_whitelist";
    public static final String OooO0o = "save_blob_choices";
    public static final String OooO0o0 = "tessedit_char_blacklist";
    public static final String OooO0oO = "T";
    public static final String OooO0oo = "F";

    @Deprecated
    public static final int OooOO0 = 1;

    @Deprecated
    public static final int OooOO0O = 2;
    public static final int OooOO0o = 3;
    public long OooO00o;
    private OooO0OO OooO0O0;
    private boolean OooO0OO;

    public static final class OooO00o {
        public static final int OooO00o = 0;
        public static final int OooO0O0 = 1;
        public static final int OooO0OO = 2;
        public static final int OooO0Oo = 3;
        public static final int OooO0o0 = 4;
    }

    public static final class OooO0O0 {
        public static final int OooO = 8;
        public static final int OooO00o = 0;
        public static final int OooO0O0 = 1;
        public static final int OooO0OO = 2;
        public static final int OooO0Oo = 3;
        public static final int OooO0o = 5;
        public static final int OooO0o0 = 4;
        public static final int OooO0oO = 6;
        public static final int OooO0oo = 7;
        public static final int OooOO0 = 9;
        public static final int OooOO0O = 10;
        public static final int OooOO0o = 11;
        public static final int OooOOO = 13;
        public static final int OooOOO0 = 12;
    }

    public interface OooO0OO {
        void a();
    }

    public class OooO0o {
        private final int OooO00o;
        private final Rect OooO0O0;
        private final Rect OooO0OO;

        public OooO0o(int i, Rect rect, Rect rect2) {
            this.OooO00o = i;
            this.OooO0O0 = rect;
            this.OooO0OO = rect2;
        }

        private int OooO00o() {
            return this.OooO00o;
        }

        private Rect OooO0O0() {
            return this.OooO0O0;
        }

        private Rect OooO0OO() {
            return this.OooO0OO;
        }
    }

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        System.loadLibrary("tess");
        nativeClassInit();
    }

    public TessBaseAPI() {
        long jNativeConstruct = nativeConstruct();
        this.OooO00o = jNativeConstruct;
        if (jNativeConstruct == 0) {
            throw new RuntimeException("Can't create TessBaseApi object");
        }
        this.OooO0OO = false;
    }

    private TessBaseAPI(OooO0OO oooO0OO) {
        this();
        this.OooO0O0 = oooO0OO;
    }

    private void OooO(boolean z) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeSetDebug(this.OooO00o, z);
    }

    private void OooO0O0(int i) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeSetPageSegMode(this.OooO00o, i);
    }

    private void OooO0OO(int i, int i2, int i3, int i4) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeSetRectangle(this.OooO00o, i, i2, i3, i4);
    }

    private void OooO0o(Pix pix) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeSetImagePix(this.OooO00o, pix.OooO0O0());
    }

    private void OooO0o0(Rect rect) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        int i = rect.left;
        int i2 = rect.top;
        int iWidth = rect.width();
        int iHeight = rect.height();
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeSetRectangle(this.OooO00o, i, i2, iWidth, iHeight);
    }

    private void OooO0oO(File file) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        Pix pixOooO0O0 = ReadFile.OooO0O0(file);
        if (pixOooO0O0 == null) {
            throw new RuntimeException("Failed to read image file");
        }
        nativeSetImagePix(this.OooO00o, pixOooO0O0.OooO0O0());
        pixOooO0O0.OooO0o();
    }

    private void OooO0oo(String str) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeSetInputName(this.OooO00o, str);
    }

    private void OooOO0(byte[] bArr, int i, int i2, int i3, int i4) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeSetImageBytes(this.OooO00o, bArr, i, i2, i3, i4);
    }

    private boolean OooOO0O(Pix pix, String str, TessPdfRenderer tessPdfRenderer) {
        return nativeAddPageToDocument(this.OooO00o, pix.OooO0O0(), str, tessPdfRenderer.OooO00o());
    }

    private boolean OooOO0o(TessPdfRenderer tessPdfRenderer) {
        return nativeBeginDocument(tessPdfRenderer.OooO00o(), "");
    }

    private boolean OooOOO0(TessPdfRenderer tessPdfRenderer, String str) {
        return nativeBeginDocument(tessPdfRenderer.OooO00o(), str);
    }

    private String OooOOOO() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return nativeGetInitLanguagesAsString(this.OooO00o);
    }

    private String OooOOOo(int i) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return nativeGetHOCRText(this.OooO00o, i);
    }

    private boolean OooOOo(TessPdfRenderer tessPdfRenderer) {
        return nativeEndDocument(tessPdfRenderer.OooO00o());
    }

    private void OooOOo0(String str) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeSetOutputName(this.OooO00o, str);
    }

    private boolean OooOOoo(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Data path must not be null!");
        }
        String str3 = File.separator;
        if (!str.endsWith(str3)) {
            str = str + str3;
        }
        String str4 = str;
        if (!new File(str4).exists()) {
            throw new IllegalArgumentException("Data path does not exist!");
        }
        File file = new File(str4 + k3.o00000OO);
        if (!file.exists() || !file.isDirectory()) {
            throw new IllegalArgumentException("Data path must contain subfolder tessdata!");
        }
        for (String str5 : str2.split("\\+")) {
            if (!str5.startsWith("~")) {
                File file2 = new File(file + File.separator + str5 + ".traineddata");
                if (!file2.exists()) {
                    throw new IllegalArgumentException("Data file not found at ".concat(String.valueOf(file2)));
                }
            }
        }
        boolean zNativeInitOem = nativeInitOem(this.OooO00o, str4, str2, 3);
        if (zNativeInitOem) {
            this.OooO0OO = false;
        }
        return zNativeInitOem;
    }

    private void OooOo() {
        if (this.OooO0OO) {
            return;
        }
        nativeEnd(this.OooO00o);
        this.OooO0OO = true;
    }

    private void OooOo0() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeClear(this.OooO00o);
    }

    private String OooOo00(int i) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return nativeGetBoxText(this.OooO00o, i);
    }

    private void OooOo0O(String str) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeReadConfigFile(this.OooO00o, str);
    }

    private boolean OooOo0o(String str, String str2) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return nativeSetVariable(this.OooO00o, str, str2);
    }

    private int OooOoO() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return nativeMeanConfidence(this.OooO00o);
    }

    private int OooOoO0() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return nativeGetPageSegMode(this.OooO00o);
    }

    private int[] OooOoOO() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        int[] iArrNativeWordConfidences = nativeWordConfidences(this.OooO00o);
        return iArrNativeWordConfidences == null ? new int[0] : iArrNativeWordConfidences;
    }

    private Pixa OooOoo() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetRegions(this.OooO00o), 0, 0);
    }

    private Pix OooOoo0() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return new Pix(nativeGetThresholdedImage(this.OooO00o));
    }

    private Pixa OooOooO() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetTextlines(this.OooO00o), 0, 0);
    }

    private Pixa OooOooo() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetStrips(this.OooO00o), 0, 0);
    }

    private String Oooo0() {
        return nativeGetVersion(this.OooO00o);
    }

    private Pixa Oooo000() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetWords(this.OooO00o), 0, 0);
    }

    private Pixa Oooo00O() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        return new Pixa(nativeGetConnectedComponents(this.OooO00o), 0, 0);
    }

    private ResultIterator Oooo00o() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        long jNativeGetResultIterator = nativeGetResultIterator(this.OooO00o);
        if (jNativeGetResultIterator == 0) {
            return null;
        }
        return new ResultIterator(jNativeGetResultIterator);
    }

    private void Oooo0O0() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        nativeStop(this.OooO00o);
    }

    private long Oooo0OO() {
        return this.OooO00o;
    }

    private native boolean nativeAddPageToDocument(long j, long j2, String str, long j3);

    private native boolean nativeBeginDocument(long j, String str);

    private static native void nativeClassInit();

    private native void nativeClear(long j);

    private native long nativeConstruct();

    private native void nativeEnd(long j);

    private native boolean nativeEndDocument(long j);

    private native String nativeGetBoxText(long j, int i);

    private native long nativeGetConnectedComponents(long j);

    private native String nativeGetHOCRText(long j, int i);

    private native String nativeGetInitLanguagesAsString(long j);

    private native int nativeGetPageSegMode(long j);

    private native long nativeGetRegions(long j);

    private native long nativeGetResultIterator(long j);

    private native long nativeGetStrips(long j);

    private native long nativeGetTextlines(long j);

    private native long nativeGetThresholdedImage(long j);

    private native String nativeGetUTF8Text(long j);

    private native String nativeGetVersion(long j);

    private native long nativeGetWords(long j);

    private native boolean nativeInit(long j, String str, String str2);

    private native boolean nativeInitOem(long j, String str, String str2, int i);

    private native int nativeMeanConfidence(long j);

    private native void nativeReadConfigFile(long j, String str);

    private native void nativeSetDebug(long j, boolean z);

    private native void nativeSetImageBytes(long j, byte[] bArr, int i, int i2, int i3, int i4);

    private native void nativeSetImagePix(long j, long j2);

    private native void nativeSetInputName(long j, String str);

    private native void nativeSetOutputName(long j, String str);

    private native void nativeSetPageSegMode(long j, int i);

    private native void nativeSetRectangle(long j, int i, int i2, int i3, int i4);

    private native boolean nativeSetVariable(long j, String str, String str2);

    private native void nativeStop(long j);

    private native int[] nativeWordConfidences(long j);

    public final String OooO00o() {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        String strNativeGetUTF8Text = nativeGetUTF8Text(this.OooO00o);
        if (strNativeGetUTF8Text != null) {
            return strNativeGetUTF8Text.trim();
        }
        return null;
    }

    public final void OooO0Oo(Bitmap bitmap) {
        if (this.OooO0OO) {
            throw new IllegalStateException();
        }
        Pix pixOooO00o = ReadFile.OooO00o(bitmap);
        if (pixOooO00o == null) {
            throw new RuntimeException("Failed to read bitmap");
        }
        nativeSetImagePix(this.OooO00o, pixOooO00o.OooO0O0());
        pixOooO00o.OooO0o();
    }

    public final boolean OooOOO(String str, String str2) {
        return OooOOoo(str, str2);
    }

    public void onProgressValues(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (this.OooO0O0 != null) {
            new OooO0o(i, new Rect(i2, i8 - i4, i3, i8 - i5), new Rect(i6, i9, i7, i8));
        }
    }
}

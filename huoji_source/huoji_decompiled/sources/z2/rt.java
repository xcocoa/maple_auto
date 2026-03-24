package z2;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;

/* JADX INFO: loaded from: classes2.dex */
public final class rt {
    public static final int OooO0o = 8;
    private Mode OooO00o;
    private ErrorCorrectionLevel OooO0O0;
    private gt OooO0OO;
    private int OooO0Oo = -1;
    private nt OooO0o0;

    public static boolean OooO0o(int i) {
        return i >= 0 && i < 8;
    }

    public final void OooO(nt ntVar) {
        this.OooO0o0 = ntVar;
    }

    public final ErrorCorrectionLevel OooO00o() {
        return this.OooO0O0;
    }

    public final int OooO0O0() {
        return this.OooO0Oo;
    }

    public final nt OooO0OO() {
        return this.OooO0o0;
    }

    public final Mode OooO0Oo() {
        return this.OooO00o;
    }

    public final gt OooO0o0() {
        return this.OooO0OO;
    }

    public final void OooO0oO(ErrorCorrectionLevel errorCorrectionLevel) {
        this.OooO0O0 = errorCorrectionLevel;
    }

    public final void OooO0oo(int i) {
        this.OooO0Oo = i;
    }

    public final void OooOO0(Mode mode) {
        this.OooO00o = mode;
    }

    public final void OooOO0O(gt gtVar) {
        this.OooO0OO = gtVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.OooO00o);
        sb.append("\n ecLevel: ");
        sb.append(this.OooO0O0);
        sb.append("\n version: ");
        sb.append(this.OooO0OO);
        sb.append("\n maskPattern: ");
        sb.append(this.OooO0Oo);
        if (this.OooO0o0 == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.OooO0o0);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}

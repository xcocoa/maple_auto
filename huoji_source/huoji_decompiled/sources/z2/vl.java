package z2;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public final class vl {
    private final ul OooO00o;
    private eo OooO0O0;

    public vl(ul ulVar) {
        if (ulVar == null) {
            throw new IllegalArgumentException("Binarizer must be non-null.");
        }
        this.OooO00o = ulVar;
    }

    public final vl OooO() {
        return new vl(this.OooO00o.OooO00o(this.OooO00o.OooO0o0().OooOO0()));
    }

    public final vl OooO00o(int i, int i2, int i3, int i4) {
        return new vl(this.OooO00o.OooO00o(this.OooO00o.OooO0o0().OooO00o(i, i2, i3, i4)));
    }

    public final eo OooO0O0() throws NotFoundException {
        if (this.OooO0O0 == null) {
            this.OooO0O0 = this.OooO00o.OooO0O0();
        }
        return this.OooO0O0;
    }

    public final Cdo OooO0OO(int i, Cdo cdo) throws NotFoundException {
        return this.OooO00o.OooO0OO(i, cdo);
    }

    public final int OooO0Oo() {
        return this.OooO00o.OooO0Oo();
    }

    public final boolean OooO0o() {
        return this.OooO00o.OooO0o0().OooO0oO();
    }

    public final int OooO0o0() {
        return this.OooO00o.OooO0o();
    }

    public final boolean OooO0oO() {
        return this.OooO00o.OooO0o0().OooO0oo();
    }

    public final vl OooO0oo() {
        return new vl(this.OooO00o.OooO00o(this.OooO00o.OooO0o0().OooO()));
    }

    public final String toString() {
        try {
            return OooO0O0().toString();
        } catch (NotFoundException unused) {
            return "";
        }
    }
}

package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class hs {
    private static final int OooO0o = -1;
    private final int OooO00o;
    private final int OooO0O0;
    private final int OooO0OO;
    private final int OooO0Oo;
    private int OooO0o0 = -1;

    public hs(int i, int i2, int i3, int i4) {
        this.OooO00o = i;
        this.OooO0O0 = i2;
        this.OooO0OO = i3;
        this.OooO0Oo = i4;
    }

    public final void OooO(int i) {
        this.OooO0o0 = i;
    }

    public final int OooO00o() {
        return this.OooO0OO;
    }

    public final int OooO0O0() {
        return this.OooO0O0;
    }

    public final int OooO0OO() {
        return this.OooO0o0;
    }

    public final int OooO0Oo() {
        return this.OooO00o;
    }

    public final int OooO0o() {
        return this.OooO0O0 - this.OooO00o;
    }

    public final int OooO0o0() {
        return this.OooO0Oo;
    }

    public final boolean OooO0oO() {
        return OooO0oo(this.OooO0o0);
    }

    public final boolean OooO0oo(int i) {
        return i != -1 && this.OooO0OO == (i % 3) * 3;
    }

    public final void OooOO0() {
        this.OooO0o0 = ((this.OooO0Oo / 30) * 3) + (this.OooO0OO / 3);
    }

    public final String toString() {
        return this.OooO0o0 + com.anythink.expressad.foundation.g.a.bQ + this.OooO0Oo;
    }
}

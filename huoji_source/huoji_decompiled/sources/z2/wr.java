package z2;

import com.google.zxing.FormatException;

/* JADX INFO: loaded from: classes2.dex */
public final class wr extends xr {
    public static final int OooO0Oo = 10;
    private final int OooO0O0;
    private final int OooO0OO;

    public wr(int i, int i2, int i3) throws FormatException {
        super(i);
        if (i2 < 0 || i2 > 10 || i3 < 0 || i3 > 10) {
            throw FormatException.getFormatInstance();
        }
        this.OooO0O0 = i2;
        this.OooO0OO = i3;
    }

    public final int OooO0O0() {
        return this.OooO0O0;
    }

    public final int OooO0OO() {
        return this.OooO0OO;
    }

    public final int OooO0Oo() {
        return (this.OooO0O0 * 10) + this.OooO0OO;
    }

    public final boolean OooO0o() {
        return this.OooO0O0 == 10;
    }

    public final boolean OooO0o0() {
        return this.OooO0O0 == 10 || this.OooO0OO == 10;
    }

    public final boolean OooO0oO() {
        return this.OooO0OO == 10;
    }
}

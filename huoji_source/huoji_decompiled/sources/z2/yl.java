package z2;

import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class yl {
    private final int OooO00o;
    private final int OooO0O0;

    public yl(int i, int i2) {
        this.OooO00o = i;
        this.OooO0O0 = i2;
    }

    public yl OooO() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public yl OooO00o(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    public final int OooO0O0() {
        return this.OooO0O0;
    }

    public abstract byte[] OooO0OO();

    public abstract byte[] OooO0Oo(int i, byte[] bArr);

    public yl OooO0o() {
        return new xl(this);
    }

    public final int OooO0o0() {
        return this.OooO00o;
    }

    public boolean OooO0oO() {
        return false;
    }

    public boolean OooO0oo() {
        return false;
    }

    public yl OooOO0() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
    }

    public final String toString() {
        int i = this.OooO00o;
        byte[] bArrOooO0Oo = new byte[i];
        StringBuilder sb = new StringBuilder(this.OooO0O0 * (i + 1));
        for (int i2 = 0; i2 < this.OooO0O0; i2++) {
            bArrOooO0Oo = OooO0Oo(i2, bArrOooO0Oo);
            for (int i3 = 0; i3 < this.OooO00o; i3++) {
                int i4 = bArrOooO0Oo[i3] & 255;
                sb.append(i4 < 64 ? '#' : i4 < 128 ? '+' : i4 < 192 ? FilenameUtils.EXTENSION_SEPARATOR : ' ');
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}

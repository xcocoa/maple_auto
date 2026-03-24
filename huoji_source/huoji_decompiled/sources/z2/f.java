package z2;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class f implements oO0Ooooo<byte[]> {
    private final byte[] OoooOoO;

    public f(byte[] bArr) {
        this.OoooOoO = (byte[]) r2.OooO0Oo(bArr);
    }

    @Override // z2.oO0Ooooo
    @NonNull
    /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
    public byte[] get() {
        return this.OoooOoO;
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Class<byte[]> OooO0O0() {
        return byte[].class;
    }

    @Override // z2.oO0Ooooo
    public int getSize() {
        return this.OoooOoO.length;
    }

    @Override // z2.oO0Ooooo
    public void recycle() {
    }
}

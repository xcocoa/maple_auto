package z2;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class t extends h<r> implements oO0000o0 {
    public t(r rVar) {
        super(rVar);
    }

    @Override // z2.h, z2.oO0000o0
    public void OooO00o() {
        ((r) this.OoooOoO).OooO0o0().prepareToDraw();
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Class<r> OooO0O0() {
        return r.class;
    }

    @Override // z2.oO0Ooooo
    public int getSize() {
        return ((r) this.OoooOoO).OooOO0();
    }

    @Override // z2.oO0Ooooo
    public void recycle() {
        ((r) this.OoooOoO).stop();
        ((r) this.OoooOoO).OooOOO0();
    }
}

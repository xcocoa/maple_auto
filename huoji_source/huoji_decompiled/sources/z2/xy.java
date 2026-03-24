package z2;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class xy extends tx {

    @Nullable
    private final String OoooOoO;
    private final long OoooOoo;
    private final l00 Ooooo00;

    public xy(@Nullable String str, long j, l00 l00Var) {
        this.OoooOoO = str;
        this.OoooOoo = j;
        this.Ooooo00 = l00Var;
    }

    @Override // z2.tx
    public long contentLength() {
        return this.OoooOoo;
    }

    @Override // z2.tx
    public mx contentType() {
        String str = this.OoooOoO;
        if (str != null) {
            return mx.OooO0Oo(str);
        }
        return null;
    }

    @Override // z2.tx
    public l00 source() {
        return this.Ooooo00;
    }
}

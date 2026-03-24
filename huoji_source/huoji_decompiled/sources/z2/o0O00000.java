package z2;

import androidx.annotation.NonNull;
import z2.b2;
import z2.o0O00000;

/* JADX INFO: loaded from: classes.dex */
public abstract class o0O00000<CHILD extends o0O00000<CHILD, TranscodeType>, TranscodeType> implements Cloneable {
    private y1<? super TranscodeType> OoooOoO = w1.OooO0OO();

    private CHILD OooO0Oo() {
        return this;
    }

    /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    public final CHILD OooO0O0() {
        return (CHILD) OooO0o(w1.OooO0OO());
    }

    public final y1<? super TranscodeType> OooO0OO() {
        return this.OoooOoO;
    }

    @NonNull
    public final CHILD OooO0o(@NonNull y1<? super TranscodeType> y1Var) {
        this.OoooOoO = (y1) r2.OooO0Oo(y1Var);
        return (CHILD) OooO0Oo();
    }

    @NonNull
    public final CHILD OooO0o0(int i) {
        return (CHILD) OooO0o(new z1(i));
    }

    @NonNull
    public final CHILD OooO0oO(@NonNull b2.OooO00o oooO00o) {
        return (CHILD) OooO0o(new a2(oooO00o));
    }
}

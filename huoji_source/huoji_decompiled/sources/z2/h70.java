package z2;

import java.lang.Throwable;

/* JADX INFO: loaded from: classes2.dex */
public class h70<T extends Throwable> extends w20<T> {
    private final r20<String> Ooooo00;

    public h70(r20<String> r20Var) {
        this.Ooooo00 = r20Var;
    }

    @p20
    public static <T extends Throwable> r20<T> OooO0oO(r20<String> r20Var) {
        return new h70(r20Var);
    }

    @Override // z2.w20
    /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
    public void OooO0Oo(T t, n20 n20Var) {
        n20Var.OooO0Oo("message ");
        this.Ooooo00.OooO00o(t.getMessage(), n20Var);
    }

    @Override // z2.w20
    /* JADX INFO: renamed from: OooO0oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO0o0(T t) {
        return this.Ooooo00.OooO0O0(t.getMessage());
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0Oo("exception with message ");
        n20Var.OooO0O0(this.Ooooo00);
    }
}

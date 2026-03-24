package z2;

import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q20<T, U> extends v20<T> {
    private static final q30 OooooOO = new q30("featureValueOf", 1, 0);
    private final r20<? super U> Ooooo00;
    private final String Ooooo0o;
    private final String OooooO0;

    public q20(r20<? super U> r20Var, String str, String str2) {
        super(OooooOO);
        this.Ooooo00 = r20Var;
        this.Ooooo0o = str;
        this.OooooO0 = str2;
    }

    @Override // z2.v20
    public boolean OooO0Oo(T t, n20 n20Var) {
        U uOooO0o0 = OooO0o0(t);
        if (this.Ooooo00.OooO0O0(uOooO0o0)) {
            return true;
        }
        n20Var.OooO0Oo(this.OooooO0).OooO0Oo(o4.OooO00o.OooO0Oo);
        this.Ooooo00.OooO00o(uOooO0o0, n20Var);
        return false;
    }

    public abstract U OooO0o0(T t);

    @Override // z2.t20
    public final void describeTo(n20 n20Var) {
        n20Var.OooO0Oo(this.Ooooo0o).OooO0Oo(o4.OooO00o.OooO0Oo).OooO0O0(this.Ooooo00);
    }
}

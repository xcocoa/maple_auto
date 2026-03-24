package z2;

import org.junit.runner.manipulation.NoTestsRemainException;

/* JADX INFO: loaded from: classes2.dex */
public final class k70 extends z80 {
    private final z80 OooO00o;
    private final c90 OooO0O0;

    public k70(z80 z80Var, c90 c90Var) {
        this.OooO00o = z80Var;
        this.OooO0O0 = c90Var;
    }

    @Override // z2.z80
    public b90 OooO0oo() {
        try {
            b90 b90VarOooO0oo = this.OooO00o.OooO0oo();
            this.OooO0O0.OooO00o(b90VarOooO0oo);
            return b90VarOooO0oo;
        } catch (NoTestsRemainException unused) {
            return new n70(c90.class, new Exception(String.format("No tests found matching %s from %s", this.OooO0O0.OooO0O0(), this.OooO00o.toString())));
        }
    }
}

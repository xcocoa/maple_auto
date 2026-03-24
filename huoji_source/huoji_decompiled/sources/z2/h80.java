package z2;

import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public class h80 implements q80 {
    private final i80 OooO00o = new i80();
    private String OooO0O0 = "Expected test to throw %s";

    public class OooO00o extends w90 {
        private final w90 OooO00o;

        public OooO00o(w90 w90Var) {
            this.OooO00o = w90Var;
        }

        @Override // z2.w90
        public void OooO00o() throws Throwable {
            try {
                this.OooO00o.OooO00o();
                if (h80.this.OooOOO()) {
                    h80.this.OooOO0();
                }
            } catch (Throwable th) {
                h80.this.OooOOO0(th);
            }
        }
    }

    private h80() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOO0() throws AssertionError {
        f50.OooooO0(OooOOOO());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean OooOOO() {
        return this.OooO00o.OooO0o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOOO0(Throwable th) throws Throwable {
        if (!OooOOO()) {
            throw th;
        }
        f50.OoooOOO(th, this.OooO00o.OooO0OO());
    }

    private String OooOOOO() {
        return String.format(this.OooO0O0, u20.OooOOOO(this.OooO00o.OooO0OO()));
    }

    public static h80 OooOOOo() {
        return new h80();
    }

    public void OooO(r20<String> r20Var) {
        OooO0o(h70.OooO0oO(r20Var));
    }

    @Override // z2.q80
    public w90 OooO00o(w90 w90Var, Description description) {
        return new OooO00o(w90Var);
    }

    public void OooO0o(r20<?> r20Var) {
        this.OooO00o.OooO00o(r20Var);
    }

    public void OooO0o0(Class<? extends Throwable> cls) {
        OooO0o(k20.OooOoo(cls));
    }

    public void OooO0oO(r20<? extends Throwable> r20Var) {
        OooO0o(g70.OooO0oO(r20Var));
    }

    public void OooO0oo(String str) {
        OooO(k20.OooOOoo(str));
    }

    @Deprecated
    public h80 OooOO0O() {
        return this;
    }

    @Deprecated
    public h80 OooOO0o() {
        return this;
    }

    public h80 OooOOo0(String str) {
        this.OooO0O0 = str;
        return this;
    }
}

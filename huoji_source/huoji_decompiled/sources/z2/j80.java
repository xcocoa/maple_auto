package z2;

import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j80 implements q80 {

    public class OooO00o extends w90 {
        public final /* synthetic */ w90 OooO00o;

        public OooO00o(w90 w90Var) throws Throwable {
            this.OooO00o = w90Var;
        }

        @Override // z2.w90
        public void OooO00o() throws Throwable {
            j80.this.OooO0OO();
            try {
                this.OooO00o.OooO00o();
            } finally {
                j80.this.OooO0O0();
            }
        }
    }

    private w90 OooO0Oo(w90 w90Var) {
        return new OooO00o(w90Var);
    }

    @Override // z2.q80
    public w90 OooO00o(w90 w90Var, Description description) {
        return OooO0Oo(w90Var);
    }

    public void OooO0O0() {
    }

    public void OooO0OO() throws Throwable {
    }
}

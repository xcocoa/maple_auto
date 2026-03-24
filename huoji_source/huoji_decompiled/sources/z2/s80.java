package z2;

import org.junit.internal.AssumptionViolatedException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class s80 implements k80 {

    public class OooO00o extends w90 {
        public final /* synthetic */ s90 OooO00o;
        public final /* synthetic */ w90 OooO0O0;

        public OooO00o(s90 s90Var, w90 w90Var) throws Throwable {
            this.OooO00o = s90Var;
            this.OooO0O0 = w90Var;
        }

        @Override // z2.w90
        public void OooO00o() throws Throwable {
            s80.this.OooO0Oo(this.OooO00o);
            try {
                try {
                    this.OooO0O0.OooO00o();
                    s80.this.OooO0o0(this.OooO00o);
                } finally {
                    s80.this.OooO0OO(this.OooO00o);
                }
            } catch (AssumptionViolatedException e) {
                throw e;
            } catch (Throwable th) {
                s80.this.OooO0O0(th, this.OooO00o);
                throw th;
            }
        }
    }

    @Override // z2.k80
    public w90 OooO00o(w90 w90Var, s90 s90Var, Object obj) {
        return new OooO00o(s90Var, w90Var);
    }

    public void OooO0O0(Throwable th, s90 s90Var) {
    }

    public void OooO0OO(s90 s90Var) {
    }

    public void OooO0Oo(s90 s90Var) {
    }

    public void OooO0o0(s90 s90Var) {
    }
}

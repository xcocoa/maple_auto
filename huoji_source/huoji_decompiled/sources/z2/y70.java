package z2;

import org.junit.internal.AssumptionViolatedException;

/* JADX INFO: loaded from: classes2.dex */
public class y70 extends w90 {
    private final w90 OooO00o;
    private final Class<? extends Throwable> OooO0O0;

    public y70(w90 w90Var, Class<? extends Throwable> cls) {
        this.OooO00o = w90Var;
        this.OooO0O0 = cls;
    }

    @Override // z2.w90
    public void OooO00o() throws Exception {
        boolean z;
        try {
            this.OooO00o.OooO00o();
            z = true;
        } catch (AssumptionViolatedException e) {
            throw e;
        } catch (Throwable th) {
            if (!this.OooO0O0.isAssignableFrom(th.getClass())) {
                throw new Exception("Unexpected exception, expected<" + this.OooO0O0.getName() + "> but was<" + th.getClass().getName() + ">", th);
            }
            z = false;
        }
        if (z) {
            throw new AssertionError("Expected exception: " + this.OooO0O0.getName());
        }
    }
}

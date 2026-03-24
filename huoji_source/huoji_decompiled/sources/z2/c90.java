package z2;

import java.util.Iterator;
import org.junit.runner.Description;
import org.junit.runner.manipulation.NoTestsRemainException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c90 {
    public static final c90 OooO00o = new OooO00o();

    public static class OooO00o extends c90 {
        @Override // z2.c90
        public void OooO00o(Object obj) throws NoTestsRemainException {
        }

        @Override // z2.c90
        public String OooO0O0() {
            return "all tests";
        }

        @Override // z2.c90
        public c90 OooO0OO(c90 c90Var) {
            return c90Var;
        }

        @Override // z2.c90
        public boolean OooO0o0(Description description) {
            return true;
        }
    }

    public static class OooO0O0 extends c90 {
        public final /* synthetic */ Description OooO0O0;

        public OooO0O0(Description description) {
            this.OooO0O0 = description;
        }

        @Override // z2.c90
        public String OooO0O0() {
            return String.format("Method %s", this.OooO0O0.getDisplayName());
        }

        @Override // z2.c90
        public boolean OooO0o0(Description description) {
            if (description.isTest()) {
                return this.OooO0O0.equals(description);
            }
            Iterator<Description> it = description.getChildren().iterator();
            while (it.hasNext()) {
                if (OooO0o0(it.next())) {
                    return true;
                }
            }
            return false;
        }
    }

    public class OooO0OO extends c90 {
        public final /* synthetic */ c90 OooO0O0;
        public final /* synthetic */ c90 OooO0OO;

        public OooO0OO(c90 c90Var, c90 c90Var2) {
            this.OooO0O0 = c90Var;
            this.OooO0OO = c90Var2;
        }

        @Override // z2.c90
        public String OooO0O0() {
            return this.OooO0O0.OooO0O0() + " and " + this.OooO0OO.OooO0O0();
        }

        @Override // z2.c90
        public boolean OooO0o0(Description description) {
            return this.OooO0O0.OooO0o0(description) && this.OooO0OO.OooO0o0(description);
        }
    }

    public static c90 OooO0Oo(Description description) {
        return new OooO0O0(description);
    }

    public void OooO00o(Object obj) throws NoTestsRemainException {
        if (obj instanceof d90) {
            ((d90) obj).OooO0OO(this);
        }
    }

    public abstract String OooO0O0();

    public c90 OooO0OO(c90 c90Var) {
        return (c90Var == this || c90Var == OooO00o) ? this : new OooO0OO(this, c90Var);
    }

    public abstract boolean OooO0o0(Description description);
}

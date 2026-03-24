package z2;

import java.util.Comparator;
import org.junit.runner.Description;
import org.junit.runner.JUnitCore;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public abstract class z80 {

    public static class OooO00o extends z80 {
        public final /* synthetic */ b90 OooO00o;

        public OooO00o(b90 b90Var) {
            this.OooO00o = b90Var;
        }

        @Override // z2.z80
        public b90 OooO0oo() {
            return this.OooO00o;
        }
    }

    public static z80 OooO(Class<?> cls, String str) {
        return OooO00o(cls).OooO0o(Description.createTestDescription(cls, str));
    }

    public static z80 OooO00o(Class<?> cls) {
        return new j70(cls);
    }

    public static z80 OooO0O0(Class<?> cls) {
        return new j70(cls, false);
    }

    public static z80 OooO0OO(v80 v80Var, Class<?>... clsArr) {
        try {
            return OooOO0(v80Var.OooO0O0(new x60(true), clsArr));
        } catch (InitializationError unused) {
            throw new RuntimeException("Bug in saff's brain: Suite constructor, called as above, should always complete");
        }
    }

    public static z80 OooO0Oo(Class<?>... clsArr) {
        return OooO0OO(JUnitCore.OooO0O0(), clsArr);
    }

    public static z80 OooO0o0(Class<?> cls, Throwable th) {
        return OooOO0(new n70(cls, th));
    }

    public static z80 OooOO0(b90 b90Var) {
        return new OooO00o(b90Var);
    }

    public z80 OooO0o(Description description) {
        return OooO0oO(c90.OooO0Oo(description));
    }

    public z80 OooO0oO(c90 c90Var) {
        return new k70(this, c90Var);
    }

    public abstract b90 OooO0oo();

    public z80 OooOO0O(Comparator<Description> comparator) {
        return new l70(this, comparator);
    }
}

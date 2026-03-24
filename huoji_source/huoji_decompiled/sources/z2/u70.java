package z2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import org.junit.Test;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class u70 {
    private final Method OooO00o;
    private t70 OooO0O0;

    public u70(Method method, t70 t70Var) {
        this.OooO00o = method;
        this.OooO0O0 = t70Var;
    }

    public boolean OooO00o() {
        return OooO0Oo() != null;
    }

    public List<Method> OooO0O0() {
        return this.OooO0O0.OooO0O0(d50.class);
    }

    public List<Method> OooO0OO() {
        return this.OooO0O0.OooO0O0(h50.class);
    }

    public Class<? extends Throwable> OooO0Oo() {
        Test test = (Test) this.OooO00o.getAnnotation(Test.class);
        if (test == null || test.expected() == Test.None.class) {
            return null;
        }
        return test.expected();
    }

    public void OooO0o(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.OooO00o.invoke(obj, new Object[0]);
    }

    public long OooO0o0() {
        Test test = (Test) this.OooO00o.getAnnotation(Test.class);
        if (test == null) {
            return 0L;
        }
        return test.timeout();
    }

    public boolean OooO0oO() {
        return this.OooO00o.getAnnotation(l50.class) != null;
    }

    public boolean OooO0oo(Throwable th) {
        return !OooO0Oo().isAssignableFrom(th.getClass());
    }
}

package z2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.internal.runners.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class r70 {
    private final List<Throwable> OooO00o = new ArrayList();
    private t70 OooO0O0;

    public r70(t70 t70Var) {
        this.OooO0O0 = t70Var;
    }

    private void OooO0o(Class<? extends Annotation> cls, boolean z) {
        for (Method method : this.OooO0O0.OooO0O0(cls)) {
            if (Modifier.isStatic(method.getModifiers()) != z) {
                String str = z ? "should" : "should not";
                this.OooO00o.add(new Exception("Method " + method.getName() + "() " + str + " be static"));
            }
            if (!Modifier.isPublic(method.getDeclaringClass().getModifiers())) {
                this.OooO00o.add(new Exception("Class " + method.getDeclaringClass().getName() + " should be public"));
            }
            if (!Modifier.isPublic(method.getModifiers())) {
                this.OooO00o.add(new Exception("Method " + method.getName() + " should be public"));
            }
            if (method.getReturnType() != Void.TYPE) {
                this.OooO00o.add(new Exception("Method " + method.getName() + " should be void"));
            }
            if (method.getParameterTypes().length != 0) {
                this.OooO00o.add(new Exception("Method " + method.getName() + " should have no parameters"));
            }
        }
    }

    public void OooO00o() throws InitializationError {
        if (!this.OooO00o.isEmpty()) {
            throw new InitializationError(this.OooO00o);
        }
    }

    public void OooO0O0() {
        OooO0o(d50.class, false);
        OooO0o(h50.class, false);
        OooO0o(Test.class, false);
        if (this.OooO0O0.OooO0O0(Test.class).size() == 0) {
            this.OooO00o.add(new Exception("No runnable methods"));
        }
    }

    public List<Throwable> OooO0OO() {
        OooO0Oo();
        OooO0o0();
        OooO0O0();
        return this.OooO00o;
    }

    public void OooO0Oo() {
        try {
            this.OooO0O0.OooO0Oo();
        } catch (Exception e) {
            this.OooO00o.add(new Exception("Test class should have public zero-argument constructor", e));
        }
    }

    public void OooO0o0() {
        OooO0o(i50.class, true);
        OooO0o(e50.class, true);
    }
}

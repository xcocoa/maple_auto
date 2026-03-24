package z2;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.junit.internal.runners.InitializationError;
import org.junit.runner.Description;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.junit.runner.notification.Failure;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class p70 extends b90 implements d90, e90 {
    private final List<Method> OooO00o = OooO();
    private t70 OooO0O0;

    public class OooO00o implements Runnable {
        public final /* synthetic */ h90 OoooOoO;

        public OooO00o(h90 h90Var) {
            this.OoooOoO = h90Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            p70.this.OooOO0o(this.OoooOoO);
        }
    }

    public class OooO0O0 implements Comparator<Method> {
        public final /* synthetic */ f90 OoooOoO;

        public OooO0O0(f90 f90Var) {
            this.OoooOoO = f90Var;
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public int compare(Method method, Method method2) {
            return this.OoooOoO.compare(p70.this.OooOO0O(method), p70.this.OooOO0O(method2));
        }
    }

    public p70(Class<?> cls) throws InitializationError {
        this.OooO0O0 = new t70(cls);
        OooOOOo();
    }

    private void OooOOO0(h90 h90Var, Description description, Throwable th) {
        h90Var.OooOO0o(description);
        h90Var.OooO0o(new Failure(description, th));
        h90Var.OooO0oo(description);
    }

    public List<Method> OooO() {
        return this.OooO0O0.OooO0oo();
    }

    @Override // z2.b90
    public void OooO00o(h90 h90Var) {
        new m70(h90Var, this.OooO0O0, getDescription(), new OooO00o(h90Var)).OooO0Oo();
    }

    @Override // z2.d90
    public void OooO0OO(c90 c90Var) throws NoTestsRemainException {
        Iterator<Method> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            if (!c90Var.OooO0o0(OooOO0O(it.next()))) {
                it.remove();
            }
        }
        if (this.OooO00o.isEmpty()) {
            throw new NoTestsRemainException();
        }
    }

    @Override // z2.e90
    public void OooO0Oo(f90 f90Var) {
        Collections.sort(this.OooO00o, new OooO0O0(f90Var));
    }

    public Object OooO0o() throws Exception {
        return OooO0oo().OooO0Oo().newInstance(new Object[0]);
    }

    public Annotation[] OooO0o0() {
        return this.OooO0O0.OooO0o0().getAnnotations();
    }

    public String OooO0oO() {
        return OooO0oo().OooO0o();
    }

    public t70 OooO0oo() {
        return this.OooO0O0;
    }

    public void OooOO0(Method method, h90 h90Var) {
        Description descriptionOooOO0O = OooOO0O(method);
        try {
            new q70(OooO0o(), OooOOo0(method), h90Var, descriptionOooOO0O).OooO0O0();
        } catch (InvocationTargetException e) {
            OooOOO0(h90Var, descriptionOooOO0O, e.getCause());
        } catch (Exception e2) {
            OooOOO0(h90Var, descriptionOooOO0O, e2);
        }
    }

    public Description OooOO0O(Method method) {
        return Description.createTestDescription(OooO0oo().OooO0o0(), OooOOOO(method), OooOOO(method));
    }

    public void OooOO0o(h90 h90Var) {
        Iterator<Method> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            OooOO0(it.next(), h90Var);
        }
    }

    public Annotation[] OooOOO(Method method) {
        return method.getAnnotations();
    }

    public String OooOOOO(Method method) {
        return method.getName();
    }

    public void OooOOOo() throws InitializationError {
        r70 r70Var = new r70(this.OooO0O0);
        r70Var.OooO0OO();
        r70Var.OooO00o();
    }

    public u70 OooOOo0(Method method) {
        return new u70(method, this.OooO0O0);
    }

    @Override // z2.b90, z2.w80
    public Description getDescription() {
        Description descriptionCreateSuiteDescription = Description.createSuiteDescription(OooO0oO(), OooO0o0());
        Iterator<Method> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            descriptionCreateSuiteDescription.addChild(OooOO0O(it.next()));
        }
        return descriptionCreateSuiteDescription;
    }
}

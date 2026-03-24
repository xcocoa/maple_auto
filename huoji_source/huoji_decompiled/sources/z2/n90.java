package z2;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.junit.internal.AssumptionViolatedException;
import org.junit.runner.Description;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.junit.runner.notification.StoppedByUserException;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n90<T> extends b90 implements d90, e90 {
    private static final List<ga0> OooO0o0 = Arrays.asList(new ea0(), new fa0());
    private final x90 OooO0O0;
    private final Object OooO00o = new Object();
    private volatile Collection<T> OooO0OO = null;
    private volatile v90 OooO0Oo = new OooO00o();

    public class OooO00o implements v90 {
        public OooO00o() {
        }

        @Override // z2.v90
        public void OooO00o(Runnable runnable) {
            runnable.run();
        }

        @Override // z2.v90
        public void OooO0O0() {
        }
    }

    public class OooO0O0 extends w90 {
        public final /* synthetic */ h90 OooO00o;

        public OooO0O0(h90 h90Var) {
            this.OooO00o = h90Var;
        }

        @Override // z2.w90
        public void OooO00o() {
            n90.this.OooOo0O(this.OooO00o);
        }
    }

    public class OooO0OO implements Runnable {
        public final /* synthetic */ Object OoooOoO;
        public final /* synthetic */ h90 OoooOoo;

        public OooO0OO(Object obj, h90 h90Var) {
            this.OoooOoO = obj;
            this.OoooOoo = h90Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            n90.this.OooOo0(this.OoooOoO, this.OoooOoo);
        }
    }

    public class OooO0o implements Comparator<T> {
        public final /* synthetic */ f90 OoooOoO;

        public OooO0o(f90 f90Var) {
            this.OoooOoO = f90Var;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            return this.OoooOoO.compare(n90.this.OooOOO(t), n90.this.OooOOO(t2));
        }
    }

    public n90(Class<?> cls) throws InitializationError {
        this.OooO0O0 = OooOOO0(cls);
        OooOoO();
    }

    private void OooO0o(List<Throwable> list) {
        if (OooOOoo().OooOO0o() != null) {
            Iterator<ga0> it = OooO0o0.iterator();
            while (it.hasNext()) {
                list.addAll(it.next().OooO00o(OooOOoo()));
            }
        }
    }

    private boolean OooO0oO() {
        Iterator<T> it = OooOOOo().iterator();
        while (it.hasNext()) {
            if (!OooOo00(it.next())) {
                return false;
            }
        }
        return true;
    }

    private Comparator<? super T> OooOO0o(f90 f90Var) {
        return new OooO0o(f90Var);
    }

    private Collection<T> OooOOOo() {
        if (this.OooO0OO == null) {
            synchronized (this.OooO00o) {
                if (this.OooO0OO == null) {
                    this.OooO0OO = Collections.unmodifiableCollection(OooOOOO());
                }
            }
        }
        return this.OooO0OO;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOo0O(h90 h90Var) {
        v90 v90Var = this.OooO0Oo;
        try {
            Iterator<T> it = OooOOOo().iterator();
            while (it.hasNext()) {
                v90Var.OooO00o(new OooO0OO(it.next(), h90Var));
            }
        } finally {
            v90Var.OooO0O0();
        }
    }

    private void OooOoO() throws InitializationError {
        ArrayList arrayList = new ArrayList();
        OooOO0O(arrayList);
        if (!arrayList.isEmpty()) {
            throw new InitializationError(arrayList);
        }
    }

    private boolean OooOoO0(c90 c90Var, T t) {
        return c90Var.OooO0o0(OooOOO(t));
    }

    private void OooOoOO(List<Throwable> list) {
        x70.OooO0Oo.OooO(OooOOoo(), list);
        x70.OooO0o.OooO(OooOOoo(), list);
    }

    private w90 OooOooo(w90 w90Var) {
        List<q80> listOooOO0 = OooOO0();
        return listOooOO0.isEmpty() ? w90Var : new m80(w90Var, listOooOO0, getDescription());
    }

    public w90 OooO(h90 h90Var) {
        w90 w90VarOooO0oo = OooO0oo(h90Var);
        return !OooO0oO() ? OooOooo(OooOoo(OooOooO(w90VarOooO0oo))) : w90VarOooO0oo;
    }

    @Override // z2.b90
    public void OooO00o(h90 h90Var) {
        v70 v70Var = new v70(h90Var, getDescription());
        try {
            OooO(h90Var).OooO00o();
        } catch (AssumptionViolatedException e) {
            v70Var.OooO00o(e);
        } catch (StoppedByUserException e2) {
            throw e2;
        } catch (Throwable th) {
            v70Var.OooO0O0(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // z2.d90
    public void OooO0OO(c90 c90Var) throws NoTestsRemainException {
        synchronized (this.OooO00o) {
            ArrayList arrayList = new ArrayList(OooOOOo());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (OooOoO0(c90Var, next)) {
                    try {
                        c90Var.OooO00o(next);
                    } catch (NoTestsRemainException unused) {
                        it.remove();
                    }
                }
                it.remove();
            }
            this.OooO0OO = Collections.unmodifiableCollection(arrayList);
            if (this.OooO0OO.isEmpty()) {
                throw new NoTestsRemainException();
            }
        }
    }

    @Override // z2.e90
    public void OooO0Oo(f90 f90Var) {
        synchronized (this.OooO00o) {
            Iterator<T> it = OooOOOo().iterator();
            while (it.hasNext()) {
                f90Var.OooO00o(it.next());
            }
            ArrayList arrayList = new ArrayList(OooOOOo());
            Collections.sort(arrayList, OooOO0o(f90Var));
            this.OooO0OO = Collections.unmodifiableCollection(arrayList);
        }
    }

    public w90 OooO0oo(h90 h90Var) {
        return new OooO0O0(h90Var);
    }

    public List<q80> OooOO0() {
        List<q80> listOooO = this.OooO0O0.OooO(null, j50.class, q80.class);
        listOooO.addAll(this.OooO0O0.OooO0o0(null, j50.class, q80.class));
        return listOooO;
    }

    public void OooOO0O(List<Throwable> list) {
        OooOoo0(i50.class, true, list);
        OooOoo0(e50.class, true, list);
        OooOoOO(list);
        OooO0o(list);
    }

    public abstract Description OooOOO(T t);

    public x90 OooOOO0(Class<?> cls) {
        return new x90(cls);
    }

    public abstract List<T> OooOOOO();

    public Annotation[] OooOOo() {
        return this.OooO0O0.OooO0O0();
    }

    public String OooOOo0() {
        return this.OooO0O0.OooOOO0();
    }

    public final x90 OooOOoo() {
        return this.OooO0O0;
    }

    public void OooOo(v90 v90Var) {
        this.OooO0Oo = v90Var;
    }

    public abstract void OooOo0(T t, h90 h90Var);

    public boolean OooOo00(T t) {
        return false;
    }

    public final void OooOo0o(w90 w90Var, Description description, h90 h90Var) {
        v70 v70Var = new v70(h90Var, description);
        v70Var.OooO0o();
        try {
            try {
                w90Var.OooO00o();
            } finally {
                v70Var.OooO0Oo();
            }
        } catch (AssumptionViolatedException e) {
            v70Var.OooO00o(e);
        } catch (Throwable th) {
            v70Var.OooO0O0(th);
        }
    }

    public w90 OooOoo(w90 w90Var) {
        List<s90> listOooOO0O = this.OooO0O0.OooOO0O(e50.class);
        return listOooOO0O.isEmpty() ? w90Var : new c80(w90Var, listOooOO0O, null);
    }

    public void OooOoo0(Class<? extends Annotation> cls, boolean z, List<Throwable> list) {
        Iterator<s90> it = OooOOoo().OooOO0O(cls).iterator();
        while (it.hasNext()) {
            it.next().OooOo00(z, list);
        }
    }

    public w90 OooOooO(w90 w90Var) {
        List<s90> listOooOO0O = this.OooO0O0.OooOO0O(i50.class);
        return listOooOO0O.isEmpty() ? w90Var : new d80(w90Var, listOooOO0O, null);
    }

    @Override // z2.b90, z2.w80
    public Description getDescription() {
        Description descriptionCreateSuiteDescription = Description.createSuiteDescription(OooOOo0(), OooOOo());
        Iterator<T> it = OooOOOo().iterator();
        while (it.hasNext()) {
            descriptionCreateSuiteDescription.addChild(OooOOO(it.next()));
        }
        return descriptionCreateSuiteDescription;
    }
}

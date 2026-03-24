package z2;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.experimental.theories.PotentialAssignment;
import org.junit.experimental.theories.internal.ParameterizedAssertionError;
import org.junit.internal.AssumptionViolatedException;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public class f60 extends k90 {

    public static class OooO00o extends w90 {
        private final s90 OooO0O0;
        private final x90 OooO0OO;
        private int OooO00o = 0;
        private List<AssumptionViolatedException> OooO0Oo = new ArrayList();

        /* JADX INFO: renamed from: z2.f60$OooO00o$OooO00o, reason: collision with other inner class name */
        public class C0248OooO00o extends k90 {
            public final /* synthetic */ i60 OooO0oO;

            /* JADX INFO: renamed from: z2.f60$OooO00o$OooO00o$OooO00o, reason: collision with other inner class name */
            public class C0249OooO00o extends w90 {
                public final /* synthetic */ w90 OooO00o;

                public C0249OooO00o(w90 w90Var) throws Throwable {
                    this.OooO00o = w90Var;
                }

                @Override // z2.w90
                public void OooO00o() throws Throwable {
                    try {
                        this.OooO00o.OooO00o();
                        OooO00o.this.OooO0o();
                    } catch (AssumptionViolatedException e) {
                        OooO00o.this.OooO0o0(e);
                    } catch (Throwable th) {
                        C0248OooO00o c0248OooO00o = C0248OooO00o.this;
                        OooO00o oooO00o = OooO00o.this;
                        oooO00o.OooO(th, c0248OooO00o.OooO0oO.OooO0oO(oooO00o.OooO0oo()));
                    }
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0248OooO00o(Class cls, i60 i60Var) throws Throwable {
                super(cls);
                this.OooO0oO = i60Var;
            }

            @Override // z2.k90, z2.n90
            public void OooOO0O(List<Throwable> list) {
            }

            @Override // z2.k90
            public w90 Oooo(s90 s90Var) {
                return new C0249OooO00o(super.Oooo(s90Var));
            }

            @Override // z2.k90
            public Object Oooo00O() throws Exception {
                Object[] objArrOooO0oo = this.OooO0oO.OooO0oo();
                if (!OooO00o.this.OooO0oo()) {
                    g50.OooO0o0(objArrOooO0oo);
                }
                return OooOOoo().OooOOO().newInstance(objArrOooO0oo);
            }

            @Override // z2.k90
            public w90 OoooO00(s90 s90Var, Object obj) {
                return OooO00o.this.OooO0oO(s90Var, this.OooO0oO, obj);
            }
        }

        public class OooO0O0 extends w90 {
            public final /* synthetic */ i60 OooO00o;
            public final /* synthetic */ s90 OooO0O0;
            public final /* synthetic */ Object OooO0OO;

            public OooO0O0(i60 i60Var, s90 s90Var, Object obj) throws Throwable {
                this.OooO00o = i60Var;
                this.OooO0O0 = s90Var;
                this.OooO0OO = obj;
            }

            @Override // z2.w90
            public void OooO00o() throws Throwable {
                Object[] objArrOooOO0 = this.OooO00o.OooOO0();
                if (!OooO00o.this.OooO0oo()) {
                    g50.OooO0o0(objArrOooOO0);
                }
                this.OooO0O0.OooOOOO(this.OooO0OO, objArrOooOO0);
            }
        }

        public OooO00o(s90 s90Var, x90 x90Var) {
            this.OooO0O0 = s90Var;
            this.OooO0OO = x90Var;
        }

        private x90 OooO0Oo() {
            return this.OooO0OO;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public w90 OooO0oO(s90 s90Var, i60 i60Var, Object obj) {
            return new OooO0O0(i60Var, s90Var, obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean OooO0oo() {
            g60 g60Var = (g60) this.OooO0O0.OooOO0o().getAnnotation(g60.class);
            if (g60Var == null) {
                return false;
            }
            return g60Var.nullsAccepted();
        }

        public void OooO(Throwable th, Object... objArr) throws Throwable {
            if (objArr.length != 0) {
                throw new ParameterizedAssertionError(th, this.OooO0O0.OooO0o0(), objArr);
            }
            throw th;
        }

        @Override // z2.w90
        public void OooO00o() throws Throwable {
            OooOO0(i60.OooO00o(this.OooO0O0.OooOO0o(), OooO0Oo()));
            boolean z = this.OooO0O0.OooO00o(g60.class) != null;
            if (this.OooO00o == 0 && z) {
                f50.OooooO0("Never found parameters that satisfied method assumptions.  Violated assumptions: " + this.OooO0Oo);
            }
        }

        public void OooO0o() {
            this.OooO00o++;
        }

        public void OooO0o0(AssumptionViolatedException assumptionViolatedException) {
            this.OooO0Oo.add(assumptionViolatedException);
        }

        public void OooOO0(i60 i60Var) throws Throwable {
            if (i60Var.OooOO0o()) {
                OooOO0O(i60Var);
            } else {
                OooOO0o(i60Var);
            }
        }

        public void OooOO0O(i60 i60Var) throws Throwable {
            new C0248OooO00o(OooO0Oo().OooOO0o(), i60Var).Oooo(this.OooO0O0).OooO00o();
        }

        public void OooOO0o(i60 i60Var) throws Throwable {
            Iterator<PotentialAssignment> it = i60Var.OooOOO().iterator();
            while (it.hasNext()) {
                OooOO0(i60Var.OooO0O0(it.next()));
            }
        }
    }

    public f60(Class<?> cls) throws InitializationError {
        super(cls);
    }

    private void Ooooooo(List<Throwable> list) {
        for (Field field : OooOOoo().OooOO0o().getDeclaredFields()) {
            if (field.getAnnotation(z50.class) != null || field.getAnnotation(a60.class) != null) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    list.add(new Error("DataPoint field " + field.getName() + " must be static"));
                }
                if (!Modifier.isPublic(field.getModifiers())) {
                    list.add(new Error("DataPoint field " + field.getName() + " must be public"));
                }
            }
        }
    }

    private void o0OoOo0(List<Throwable> list) {
        for (Method method : OooOOoo().OooOO0o().getDeclaredMethods()) {
            if (method.getAnnotation(z50.class) != null || method.getAnnotation(a60.class) != null) {
                if (!Modifier.isStatic(method.getModifiers())) {
                    list.add(new Error("DataPoint method " + method.getName() + " must be static"));
                }
                if (!Modifier.isPublic(method.getModifiers())) {
                    list.add(new Error("DataPoint method " + method.getName() + " must be public"));
                }
            }
        }
    }

    private void ooOO(Class<? extends d60> cls, List<Throwable> list) {
        Error error;
        Constructor<?>[] constructors = cls.getConstructors();
        if (constructors.length != 1) {
            error = new Error("ParameterSupplier " + cls.getName() + " must have only one constructor (either empty or taking only a TestClass)");
        } else {
            Class<?>[] parameterTypes = constructors[0].getParameterTypes();
            if (parameterTypes.length == 0 || parameterTypes[0].equals(x90.class)) {
                return;
            }
            error = new Error("ParameterSupplier " + cls.getName() + " constructor must take either nothing or a single TestClass instance");
        }
        list.add(error);
    }

    @Override // z2.k90, z2.n90
    public void OooOO0O(List<Throwable> list) {
        super.OooOO0O(list);
        Ooooooo(list);
        o0OoOo0(list);
    }

    @Override // z2.k90
    public w90 Oooo(s90 s90Var) {
        return new OooO00o(s90Var, OooOOoo());
    }

    @Override // z2.k90
    public List<s90> Oooo000() {
        ArrayList arrayList = new ArrayList(super.Oooo000());
        List<s90> listOooOO0O = OooOOoo().OooOO0O(g60.class);
        arrayList.removeAll(listOooOO0O);
        arrayList.addAll(listOooOO0O);
        return arrayList;
    }

    @Override // z2.k90
    public void Ooooo00(List<Throwable> list) {
        for (s90 s90Var : Oooo000()) {
            if (s90Var.OooO00o(g60.class) != null) {
                s90Var.OooOOoo(false, list);
                s90Var.OooOOo(list);
            } else {
                s90Var.OooOo00(false, list);
            }
            Iterator<c60> it = c60.OooOOO0(s90Var.OooOO0o()).iterator();
            while (it.hasNext()) {
                e60 e60Var = (e60) it.next().OooO0o0(e60.class);
                if (e60Var != null) {
                    ooOO(e60Var.value(), list);
                }
            }
        }
    }

    @Override // z2.k90
    public void o000oOoO(List<Throwable> list) {
        OoooOoo(list);
    }
}

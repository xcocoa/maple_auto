package z2;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class s90 extends r90<s90> {
    private final Method OooO00o;

    public class OooO00o extends w70 {
        public final /* synthetic */ Object OooO00o;
        public final /* synthetic */ Object[] OooO0O0;

        public OooO00o(Object obj, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
            this.OooO00o = obj;
            this.OooO0O0 = objArr;
        }

        @Override // z2.w70
        public Object OooO0O0() throws Throwable {
            return s90.this.OooO00o.invoke(this.OooO00o, this.OooO0O0);
        }
    }

    public s90(Method method) {
        Objects.requireNonNull(method, "FrameworkMethod cannot be created without an underlying method.");
        this.OooO00o = method;
    }

    private Class<?>[] OooOOO0() {
        return this.OooO00o.getParameterTypes();
    }

    @Override // z2.p90
    public <T extends Annotation> T OooO00o(Class<T> cls) {
        return (T) this.OooO00o.getAnnotation(cls);
    }

    @Override // z2.p90
    public Annotation[] OooO0O0() {
        return this.OooO00o.getAnnotations();
    }

    @Override // z2.r90
    public Class<?> OooO0OO() {
        return this.OooO00o.getDeclaringClass();
    }

    @Override // z2.r90
    public int OooO0Oo() {
        return this.OooO00o.getModifiers();
    }

    @Override // z2.r90
    public Class<?> OooO0o() {
        return OooOOO();
    }

    @Override // z2.r90
    public String OooO0o0() {
        return this.OooO00o.getName();
    }

    public Method OooOO0o() {
        return this.OooO00o;
    }

    public Class<?> OooOOO() {
        return this.OooO00o.getReturnType();
    }

    public Object OooOOOO(Object obj, Object... objArr) throws Throwable {
        return new OooO00o(obj, objArr).OooO00o();
    }

    @Override // z2.r90
    /* JADX INFO: renamed from: OooOOOo, reason: merged with bridge method [inline-methods] */
    public boolean OooO(s90 s90Var) {
        if (!s90Var.OooO0o0().equals(OooO0o0()) || s90Var.OooOOO0().length != OooOOO0().length) {
            return false;
        }
        for (int i = 0; i < s90Var.OooOOO0().length; i++) {
            if (!s90Var.OooOOO0()[i].equals(OooOOO0()[i])) {
                return false;
            }
        }
        return true;
    }

    public void OooOOo(List<Throwable> list) {
        new t90(this.OooO00o).OooO00o(list);
    }

    @Deprecated
    public boolean OooOOo0(Type type) {
        return OooOOO0().length == 0 && (type instanceof Class) && ((Class) type).isAssignableFrom(this.OooO00o.getReturnType());
    }

    public void OooOOoo(boolean z, List<Throwable> list) {
        if (OooOO0() != z) {
            list.add(new Exception("Method " + this.OooO00o.getName() + "() " + (z ? "should" : "should not") + " be static"));
        }
        if (!OooO0oO()) {
            list.add(new Exception("Method " + this.OooO00o.getName() + "() should be public"));
        }
        if (this.OooO00o.getReturnType() != Void.TYPE) {
            list.add(new Exception("Method " + this.OooO00o.getName() + "() should be void"));
        }
    }

    public void OooOo00(boolean z, List<Throwable> list) {
        OooOOoo(z, list);
        if (this.OooO00o.getParameterTypes().length != 0) {
            list.add(new Exception("Method " + this.OooO00o.getName() + " should have no parameters"));
        }
    }

    public boolean equals(Object obj) {
        if (s90.class.isInstance(obj)) {
            return ((s90) obj).OooO00o.equals(this.OooO00o);
        }
        return false;
    }

    public int hashCode() {
        return this.OooO00o.hashCode();
    }

    public String toString() {
        return this.OooO00o.toString();
    }
}

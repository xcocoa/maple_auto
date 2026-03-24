package z2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class tz<T> {
    private final Class<?> OooO00o;
    private final String OooO0O0;
    private final Class[] OooO0OO;

    public tz(Class<?> cls, String str, Class... clsArr) {
        this.OooO00o = cls;
        this.OooO0O0 = str;
        this.OooO0OO = clsArr;
    }

    private Method OooO00o(Class<?> cls) {
        Class<?> cls2;
        String str = this.OooO0O0;
        if (str == null) {
            return null;
        }
        Method methodOooO0O0 = OooO0O0(cls, str, this.OooO0OO);
        if (methodOooO0O0 == null || (cls2 = this.OooO00o) == null || cls2.isAssignableFrom(methodOooO0O0.getReturnType())) {
            return methodOooO0O0;
        }
        return null;
    }

    private static Method OooO0O0(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }

    public Object OooO0OO(T t, Object... objArr) throws InvocationTargetException {
        Method methodOooO00o = OooO00o(t.getClass());
        if (methodOooO00o == null) {
            throw new AssertionError("Method " + this.OooO0O0 + " not supported for object " + t);
        }
        try {
            return methodOooO00o.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + methodOooO00o);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    public Object OooO0Oo(T t, Object... objArr) throws InvocationTargetException {
        Method methodOooO00o = OooO00o(t.getClass());
        if (methodOooO00o == null) {
            return null;
        }
        try {
            return methodOooO00o.invoke(t, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    public Object OooO0o(T t, Object... objArr) {
        try {
            return OooO0OO(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object OooO0o0(T t, Object... objArr) {
        try {
            return OooO0Oo(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public boolean OooO0oO(T t) {
        return OooO00o(t.getClass()) != null;
    }
}

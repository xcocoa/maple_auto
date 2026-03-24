package z2;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class i70<T> extends i20<T> {
    private Class<?> OoooOoO;

    public i70() {
        this.OoooOoO = OooO0Oo(getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i70(Class<T> cls) {
        this.OoooOoO = cls;
    }

    private static Class<?> OooO0Oo(Class<?> cls) {
        while (cls != Object.class) {
            for (Method method : t60.OooO00o(cls)) {
                if (OooO0o0(method)) {
                    return method.getParameterTypes()[0];
                }
            }
            cls = cls.getSuperclass();
        }
        throw new Error("Cannot determine correct type for matchesSafely() method.");
    }

    private static boolean OooO0o0(Method method) {
        return method.getName().equals("matchesSafely") && method.getParameterTypes().length == 1 && !method.isSynthetic();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // z2.r20
    public final boolean OooO0O0(Object obj) {
        return obj != 0 && this.OoooOoO.isInstance(obj) && OooO0o(obj);
    }

    public abstract boolean OooO0o(T t);
}

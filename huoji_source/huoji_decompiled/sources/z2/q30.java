package z2;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class q30 {
    private final String OooO00o;
    private final int OooO0O0;
    private final int OooO0OO;

    public q30(String str, int i, int i2) {
        this.OooO00o = str;
        this.OooO0O0 = i;
        this.OooO0OO = i2;
    }

    public boolean OooO00o(Method method) {
        return method.getName().equals(this.OooO00o) && method.getParameterTypes().length == this.OooO0O0 && !method.isSynthetic();
    }

    public Class<?> OooO0O0(Method method) {
        return method.getParameterTypes()[this.OooO0OO];
    }

    public Class<?> OooO0OO(Class<?> cls) {
        while (cls != Object.class) {
            for (Method method : cls.getDeclaredMethods()) {
                if (OooO00o(method)) {
                    return OooO0O0(method);
                }
            }
            cls = cls.getSuperclass();
        }
        throw new Error("Cannot determine correct type for " + this.OooO00o + "() method.");
    }
}

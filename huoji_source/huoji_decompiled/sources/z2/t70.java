package z2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.Test;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class t70 {
    private final Class<?> OooO00o;

    public t70(Class<?> cls) {
        this.OooO00o = cls;
    }

    private boolean OooO(Method method, Method method2) {
        if (!method2.getName().equals(method.getName()) || method2.getParameterTypes().length != method.getParameterTypes().length) {
            return false;
        }
        for (int i = 0; i < method2.getParameterTypes().length; i++) {
            if (!method2.getParameterTypes()[i].equals(method.getParameterTypes()[i])) {
                return false;
            }
        }
        return true;
    }

    private List<Class<?>> OooO0oO(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        while (cls != null) {
            arrayList.add(cls);
            cls = cls.getSuperclass();
        }
        return arrayList;
    }

    private boolean OooOO0(Method method, List<Method> list) {
        Iterator<Method> it = list.iterator();
        while (it.hasNext()) {
            if (OooO(method, it.next())) {
                return true;
            }
        }
        return false;
    }

    private boolean OooOO0O(Class<? extends Annotation> cls) {
        return cls.equals(h50.class) || cls.equals(i50.class);
    }

    public List<Method> OooO00o() {
        return OooO0O0(e50.class);
    }

    public List<Method> OooO0O0(Class<? extends Annotation> cls) {
        ArrayList arrayList = new ArrayList();
        Iterator<Class<?>> it = OooO0oO(this.OooO00o).iterator();
        while (it.hasNext()) {
            for (Method method : t60.OooO00o(it.next())) {
                if (method.getAnnotation(cls) != null && !OooOO0(method, arrayList)) {
                    arrayList.add(method);
                }
            }
        }
        if (OooOO0O(cls)) {
            Collections.reverse(arrayList);
        }
        return arrayList;
    }

    public List<Method> OooO0OO() {
        return OooO0O0(i50.class);
    }

    public Constructor<?> OooO0Oo() throws NoSuchMethodException, SecurityException {
        return this.OooO00o.getConstructor(new Class[0]);
    }

    public String OooO0o() {
        return this.OooO00o.getName();
    }

    public Class<?> OooO0o0() {
        return this.OooO00o;
    }

    public List<Method> OooO0oo() {
        return OooO0O0(Test.class);
    }
}

package z2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c60 {
    private static final Map<Class<?>, Class<?>> OooO0OO = OooO00o();
    private final Class<?> OooO00o;
    private final Annotation[] OooO0O0;

    private c60(Class<?> cls, Annotation[] annotationArr) {
        this.OooO00o = cls;
        this.OooO0O0 = annotationArr;
    }

    private static Map<Class<?>, Class<?>> OooO00o() {
        HashMap map = new HashMap();
        OooOO0o(map, Boolean.TYPE, Boolean.class);
        OooOO0o(map, Byte.TYPE, Byte.class);
        OooOO0o(map, Short.TYPE, Short.class);
        OooOO0o(map, Character.TYPE, Character.class);
        OooOO0o(map, Integer.TYPE, Integer.class);
        OooOO0o(map, Long.TYPE, Long.class);
        OooOO0o(map, Float.TYPE, Float.class);
        OooOO0o(map, Double.TYPE, Double.class);
        return Collections.unmodifiableMap(map);
    }

    private <T extends Annotation> T OooO0o(Annotation[] annotationArr, Class<T> cls, int i) {
        if (i == 0) {
            return null;
        }
        int length = annotationArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Annotation annotationOooO0o = annotationArr[i2];
            if (cls.isInstance(annotationOooO0o) || (annotationOooO0o = OooO0o(annotationOooO0o.annotationType().getAnnotations(), cls, i - 1)) != null) {
                return cls.cast(annotationOooO0o);
            }
        }
        return null;
    }

    private boolean OooOO0O(Class<?> cls, Class<?> cls2) {
        Map<Class<?>, Class<?>> map = OooO0OO;
        if (map.containsKey(cls2)) {
            return cls.isAssignableFrom(map.get(cls2));
        }
        return false;
    }

    private static <T> void OooOO0o(Map<T, T> map, T t, T t2) {
        map.put(t, t2);
        map.put(t2, t);
    }

    private static ArrayList<c60> OooOOO(Class<?>[] clsArr, Annotation[][] annotationArr) {
        ArrayList<c60> arrayList = new ArrayList<>();
        for (int i = 0; i < clsArr.length; i++) {
            arrayList.add(new c60(clsArr[i], annotationArr[i]));
        }
        return arrayList;
    }

    public static ArrayList<c60> OooOOO0(Method method) {
        return OooOOO(method.getParameterTypes(), method.getParameterAnnotations());
    }

    public static List<c60> OooOOOO(Constructor<?> constructor) {
        return OooOOO(constructor.getParameterTypes(), constructor.getParameterAnnotations());
    }

    public Class<?> OooO() {
        return this.OooO00o;
    }

    public boolean OooO0O0(Class<?> cls) {
        return this.OooO00o.isAssignableFrom(cls) || OooOO0O(this.OooO00o, cls);
    }

    public boolean OooO0OO(Object obj) {
        return obj == null ? !this.OooO00o.isPrimitive() : OooO0O0(obj.getClass());
    }

    public boolean OooO0Oo(Class<?> cls) {
        return cls.isAssignableFrom(this.OooO00o) || OooOO0O(cls, this.OooO00o) || OooO0O0(cls);
    }

    public <T extends Annotation> T OooO0o0(Class<T> cls) {
        return (T) OooO0o(this.OooO0O0, cls, 3);
    }

    public <T extends Annotation> T OooO0oO(Class<T> cls) {
        for (Annotation annotation : OooO0oo()) {
            if (cls.isInstance(annotation)) {
                return cls.cast(annotation);
            }
        }
        return null;
    }

    public List<Annotation> OooO0oo() {
        return Arrays.asList(this.OooO0O0);
    }

    public boolean OooOO0(Class<? extends Annotation> cls) {
        return OooO0oO(cls) != null;
    }
}

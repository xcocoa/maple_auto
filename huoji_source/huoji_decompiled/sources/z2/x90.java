package z2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class x90 implements p90 {
    private static final OooO0O0 OooO0Oo;
    private static final OooO0OO OooO0o0;
    private final Class<?> OooO00o;
    private final Map<Class<? extends Annotation>, List<s90>> OooO0O0;
    private final Map<Class<? extends Annotation>, List<q90>> OooO0OO;

    public static class OooO0O0 implements Comparator<Field> {
        private OooO0O0() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public int compare(Field field, Field field2) {
            return field.getName().compareTo(field2.getName());
        }
    }

    public static class OooO0OO implements Comparator<s90> {
        private OooO0OO() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public int compare(s90 s90Var, s90 s90Var2) {
            return t60.OooO0O0.compare(s90Var.OooOO0o(), s90Var2.OooOO0o());
        }
    }

    static {
        OooO0Oo = new OooO0O0();
        OooO0o0 = new OooO0OO();
    }

    public x90(Class<?> cls) {
        this.OooO00o = cls;
        if (cls != null && cls.getConstructors().length > 1) {
            throw new IllegalArgumentException("Test class can only have one constructor");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        OooOo0(linkedHashMap, linkedHashMap2);
        this.OooO0O0 = OooOOoo(linkedHashMap);
        this.OooO0OO = OooOOoo(linkedHashMap2);
    }

    public static <T extends r90<T>> void OooO0OO(T t, Map<Class<? extends Annotation>, List<T>> map) {
        for (Annotation annotation : t.OooO0O0()) {
            Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
            List<T> listOooO0oo = OooO0oo(map, clsAnnotationType, true);
            if (t.OooO0oo(listOooO0oo)) {
                return;
            }
            if (OooOo00(clsAnnotationType)) {
                listOooO0oo.add(0, t);
            } else {
                listOooO0oo.add(t);
            }
        }
    }

    private <T> List<T> OooO0Oo(Map<?, List<T>> map) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<List<T>> it = map.values().iterator();
        while (it.hasNext()) {
            linkedHashSet.addAll(it.next());
        }
        return new ArrayList(linkedHashSet);
    }

    private static <T> List<T> OooO0oo(Map<Class<? extends Annotation>, List<T>> map, Class<? extends Annotation> cls, boolean z) {
        if (!map.containsKey(cls) && z) {
            map.put(cls, new ArrayList());
        }
        List<T> list = map.get(cls);
        return list == null ? Collections.emptyList() : list;
    }

    private static Field[] OooOOOO(Class<?> cls) {
        Field[] declaredFields = cls.getDeclaredFields();
        Arrays.sort(declaredFields, OooO0Oo);
        return declaredFields;
    }

    private static List<Class<?>> OooOOOo(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        while (cls != null) {
            arrayList.add(cls);
            cls = cls.getSuperclass();
        }
        return arrayList;
    }

    private static <T extends r90<T>> Map<Class<? extends Annotation>, List<T>> OooOOoo(Map<Class<? extends Annotation>, List<T>> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Class<? extends Annotation>, List<T>> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), Collections.unmodifiableList(entry.getValue()));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    private static boolean OooOo00(Class<? extends Annotation> cls) {
        return cls.equals(h50.class) || cls.equals(i50.class);
    }

    public <T> List<T> OooO(Object obj, Class<? extends Annotation> cls, Class<T> cls2) {
        ArrayList arrayList = new ArrayList();
        for (s90 s90Var : OooOO0O(cls)) {
            try {
                if (cls2.isAssignableFrom(s90Var.OooOOO())) {
                    arrayList.add(cls2.cast(s90Var.OooOOOO(obj, new Object[0])));
                }
            } catch (Throwable th) {
                throw new RuntimeException("Exception in " + s90Var.OooO0o0(), th);
            }
        }
        return arrayList;
    }

    @Override // z2.p90
    public <T extends Annotation> T OooO00o(Class<T> cls) {
        Class<?> cls2 = this.OooO00o;
        if (cls2 == null) {
            return null;
        }
        return (T) cls2.getAnnotation(cls);
    }

    @Override // z2.p90
    public Annotation[] OooO0O0() {
        Class<?> cls = this.OooO00o;
        return cls == null ? new Annotation[0] : cls.getAnnotations();
    }

    public List<q90> OooO0o() {
        return OooO0Oo(this.OooO0OO);
    }

    public <T> List<T> OooO0o0(Object obj, Class<? extends Annotation> cls, Class<T> cls2) {
        ArrayList arrayList = new ArrayList();
        Iterator<q90> it = OooO0oO(cls).iterator();
        while (it.hasNext()) {
            try {
                Object objOooOO0O = it.next().OooOO0O(obj);
                if (cls2.isInstance(objOooOO0O)) {
                    arrayList.add(cls2.cast(objOooOO0O));
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException("How did getFields return a field we couldn't access?", e);
            }
        }
        return arrayList;
    }

    public List<q90> OooO0oO(Class<? extends Annotation> cls) {
        return Collections.unmodifiableList(OooO0oo(this.OooO0OO, cls, false));
    }

    public List<s90> OooOO0() {
        List<s90> listOooO0Oo = OooO0Oo(this.OooO0O0);
        Collections.sort(listOooO0Oo, OooO0o0);
        return listOooO0Oo;
    }

    public List<s90> OooOO0O(Class<? extends Annotation> cls) {
        return Collections.unmodifiableList(OooO0oo(this.OooO0O0, cls, false));
    }

    public Class<?> OooOO0o() {
        return this.OooO00o;
    }

    public Constructor<?> OooOOO() {
        Constructor<?>[] constructors = this.OooO00o.getConstructors();
        f50.OooOo0O(1L, constructors.length);
        return constructors[0];
    }

    public String OooOOO0() {
        Class<?> cls = this.OooO00o;
        return cls == null ? "null" : cls.getName();
    }

    public boolean OooOOo() {
        return Modifier.isPublic(this.OooO00o.getModifiers());
    }

    public boolean OooOOo0() {
        return this.OooO00o.isMemberClass() && !Modifier.isStatic(this.OooO00o.getModifiers());
    }

    public void OooOo0(Map<Class<? extends Annotation>, List<s90>> map, Map<Class<? extends Annotation>, List<q90>> map2) {
        for (Class<?> cls : OooOOOo(this.OooO00o)) {
            for (Method method : t60.OooO00o(cls)) {
                OooO0OO(new s90(method), map);
            }
            for (Field field : OooOOOO(cls)) {
                OooO0OO(new q90(field), map2);
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.OooO00o == ((x90) obj).OooO00o;
    }

    public int hashCode() {
        Class<?> cls = this.OooO00o;
        if (cls == null) {
            return 0;
        }
        return cls.hashCode();
    }
}

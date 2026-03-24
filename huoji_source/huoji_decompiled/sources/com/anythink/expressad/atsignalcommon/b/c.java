package com.anythink.expressad.atsignalcommon.b;

import com.anythink.expressad.atsignalcommon.b.b;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static a a;

    public interface a {
        boolean a();
    }

    public static abstract class b {

        public static class a extends Throwable {
            private static final long d = 1;
            private Class<?> a;
            private String b;
            private String c;

            public a(Exception exc) {
                super(exc);
            }

            public a(String str) {
                super(str);
            }

            public final Class<?> a() {
                return this.a;
            }

            public final void a(Class<?> cls) {
                this.a = cls;
            }

            public final void a(String str) {
                this.c = str;
            }

            public final String b() {
                return this.c;
            }

            public final void b(String str) {
                this.b = str;
            }

            public final String c() {
                return this.b;
            }

            @Override // java.lang.Throwable
            public final String toString() {
                if (getCause() == null) {
                    return super.toString();
                }
                return a.class.getName() + ": " + getCause();
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.atsignalcommon.b.c$c, reason: collision with other inner class name */
    public static class C0103c<C> {
        public Class<C> a;

        public C0103c(Class<C> cls) {
            this.a = cls;
        }

        private d a(Class<?>... clsArr) {
            return new d(this.a, clsArr);
        }

        private e<C, Object> a(String str) {
            return new e<>(this.a, str, 8);
        }

        private Class<C> a() {
            return this.a;
        }

        private e<C, Object> b(String str) {
            return new e<>(this.a, str, 0);
        }

        private f b(String str, Class<?>... clsArr) {
            return new f(this.a, str, clsArr, 8);
        }

        public final f a(String str, Class<?>... clsArr) {
            return new f(this.a, str, clsArr, 0);
        }
    }

    public static class d {
        public Constructor<?> a;

        public d(Class<?> cls, Class<?>[] clsArr) throws b.a {
            if (cls == null) {
                return;
            }
            try {
                this.a = cls.getDeclaredConstructor(clsArr);
            } catch (NoSuchMethodException e) {
                b.a aVar = new b.a(e);
                aVar.a(cls);
                c.b(aVar);
            }
        }

        private Object a(Object... objArr) {
            this.a.setAccessible(true);
            try {
                return this.a.newInstance(objArr);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public static class e<C, T> {
        private Object a;
        private final Field b;

        public e(Class<C> cls, String str, int i) {
            Field declaredField = null;
            if (cls == null) {
                return;
            }
            try {
                this.a = null;
                declaredField = cls.getDeclaredField(str);
                if (i > 0 && (declaredField.getModifiers() & i) != i) {
                    c.b(new b.a(declaredField + " does not match modifiers: " + i));
                }
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                b.a aVar = new b.a(e);
                aVar.a((Class<?>) cls);
                aVar.b(str);
                c.b(aVar);
            } finally {
                this.b = declaredField;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <T2> e<C, T2> a(Class<?> cls) throws b.a {
            Field field = this.b;
            if (field != null && !cls.isAssignableFrom(field.getType())) {
                c.b(new b.a(new ClassCastException(this.b + " is not of type " + cls)));
            }
            return this;
        }

        private e<C, T> a(String str) throws b.a {
            try {
                Class<?> cls = Class.forName(str);
                Field field = this.b;
                if (field != null && !cls.isAssignableFrom(field.getType())) {
                    c.b(new b.a(new ClassCastException(this.b + " is not of type " + cls)));
                }
                return this;
            } catch (ClassNotFoundException e) {
                c.b(new b.a(e));
                return this;
            }
        }

        private T a() {
            try {
                return (T) this.b.get(this.a);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            }
        }

        private void a(b.AbstractC0102b<?> abstractC0102b) {
            T tA = a();
            if (tA == null) {
                throw new IllegalStateException("Cannot mapping null");
            }
            try {
                this.b.set(this.a, com.anythink.expressad.atsignalcommon.b.b.a(tA, abstractC0102b, tA.getClass().getInterfaces()));
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }

        private void a(Object obj) {
            try {
                this.b.set(this.a, obj);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <T2> e<C, T2> b(Class<T2> cls) throws b.a {
            Field field = this.b;
            if (field != null && !cls.isAssignableFrom(field.getType())) {
                c.b(new b.a(new ClassCastException(this.b + " is not of type " + cls)));
            }
            return this;
        }

        private e<C, T> b(C c) {
            this.a = c;
            return this;
        }

        private Field b() {
            return this.b;
        }
    }

    public static class f {
        public final Method a;

        public f(Class<?> cls, String str, Class<?>[] clsArr, int i) {
            Method declaredMethod = null;
            if (cls == null) {
                return;
            }
            try {
                declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (i > 0 && (declaredMethod.getModifiers() & i) != i) {
                    c.b(new b.a(declaredMethod + " does not match modifiers: " + i));
                }
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                b.a aVar = new b.a(e);
                aVar.a(cls);
                aVar.a(str);
                c.b(aVar);
            } finally {
                this.a = declaredMethod;
            }
        }

        public final Object a(Object obj, Object... objArr) {
            try {
                return this.a.invoke(obj, objArr);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            }
        }

        public final Method a() {
            return this.a;
        }
    }

    private c() {
    }

    private static <T> C0103c<T> a(Class<T> cls) {
        return new C0103c<>(cls);
    }

    public static <T> C0103c<T> a(ClassLoader classLoader, String str) throws b.a {
        try {
            return new C0103c<>(classLoader.loadClass(str));
        } catch (Exception e2) {
            b(new b.a(e2));
            return new C0103c<>(null);
        }
    }

    private static <T> C0103c<T> a(String str) throws b.a {
        try {
            return new C0103c<>(Class.forName(str));
        } catch (ClassNotFoundException e2) {
            b(new b.a(e2));
            return new C0103c<>(null);
        }
    }

    private static void a(a aVar) {
        a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(b.a aVar) throws b.a {
        a aVar2 = a;
        if (aVar2 == null || !aVar2.a()) {
            throw aVar;
        }
    }
}

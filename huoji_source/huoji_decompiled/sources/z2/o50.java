package z2;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.junit.runner.Description;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public class o50 extends o90 {

    public static class OooO00o extends c90 {
        private final Set<Class<?>> OooO0O0;
        private final Set<Class<?>> OooO0OO;
        private final boolean OooO0Oo;
        private final boolean OooO0o0;

        public OooO00o(boolean z, Set<Class<?>> set, boolean z3, Set<Class<?>> set2) {
            this.OooO0Oo = z;
            this.OooO0o0 = z3;
            this.OooO0O0 = OooO0oo(set);
            this.OooO0OO = OooO0oo(set2);
        }

        private static Class<?>[] OooO(Description description) {
            if (description == null) {
                return new Class[0];
            }
            p50 p50Var = (p50) description.getAnnotation(p50.class);
            return p50Var == null ? new Class[0] : p50Var.value();
        }

        private static Set<Class<?>> OooO0o(Description description) {
            HashSet hashSet = new HashSet();
            Collections.addAll(hashSet, OooO(description));
            Collections.addAll(hashSet, OooO(OooOo00(description)));
            return hashSet;
        }

        public static OooO00o OooO0oO(boolean z, Set<Class<?>> set, boolean z3, Set<Class<?>> set2) {
            return new OooO00o(z, set, z3, set2);
        }

        private static Set<Class<?>> OooO0oo(Set<Class<?>> set) {
            HashSet hashSet = new HashSet();
            if (set != null) {
                hashSet.addAll(set);
            }
            hashSet.remove(null);
            return hashSet;
        }

        public static OooO00o OooOO0(Class<?> cls) {
            return OooOO0O(true, cls);
        }

        public static OooO00o OooOO0O(boolean z, Class<?>... clsArr) {
            if (OooOOO(clsArr)) {
                throw new NullPointerException("has null category");
            }
            return OooO0oO(true, null, z, o50.Oooo0oo(clsArr));
        }

        public static OooO00o OooOO0o(Class<?>... clsArr) {
            return OooOO0O(true, clsArr);
        }

        private static boolean OooOOO(Class<?>... clsArr) {
            if (clsArr == null) {
                return false;
            }
            for (Class<?> cls : clsArr) {
                if (cls == null) {
                    return true;
                }
            }
            return false;
        }

        private boolean OooOOO0(Description description) {
            Set<Class<?>> setOooO0o = OooO0o(description);
            if (setOooO0o.isEmpty()) {
                return this.OooO0O0.isEmpty();
            }
            if (!this.OooO0OO.isEmpty()) {
                if (this.OooO0o0) {
                    if (OooOOoo(setOooO0o, this.OooO0OO)) {
                        return false;
                    }
                } else if (OooOOo(setOooO0o, this.OooO0OO)) {
                    return false;
                }
            }
            if (this.OooO0O0.isEmpty()) {
                return true;
            }
            return this.OooO0Oo ? OooOOoo(setOooO0o, this.OooO0O0) : OooOOo(setOooO0o, this.OooO0O0);
        }

        public static OooO00o OooOOOO(Class<?> cls) {
            return OooOOOo(true, cls);
        }

        public static OooO00o OooOOOo(boolean z, Class<?>... clsArr) {
            if (OooOOO(clsArr)) {
                throw new NullPointerException("has null category");
            }
            return OooO0oO(z, o50.Oooo0oo(clsArr), true, null);
        }

        private boolean OooOOo(Set<Class<?>> set, Set<Class<?>> set2) {
            Iterator<Class<?>> it = set2.iterator();
            while (it.hasNext()) {
                if (!o50.OoooO0(set, it.next())) {
                    return false;
                }
            }
            return true;
        }

        public static OooO00o OooOOo0(Class<?>... clsArr) {
            return OooOOOo(true, clsArr);
        }

        private boolean OooOOoo(Set<Class<?>> set, Set<Class<?>> set2) {
            Iterator<Class<?>> it = set2.iterator();
            while (it.hasNext()) {
                if (o50.OoooO0(set, it.next())) {
                    return true;
                }
            }
            return false;
        }

        private static Description OooOo00(Description description) {
            Class<?> testClass = description.getTestClass();
            if (testClass == null) {
                return null;
            }
            return Description.createSuiteDescription(testClass);
        }

        @Override // z2.c90
        public String OooO0O0() {
            return toString();
        }

        @Override // z2.c90
        public boolean OooO0o0(Description description) {
            if (OooOOO0(description)) {
                return true;
            }
            Iterator<Description> it = description.getChildren().iterator();
            while (it.hasNext()) {
                if (OooO0o0(it.next())) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("categories ");
            sb.append(this.OooO0O0.isEmpty() ? "[all]" : this.OooO0O0);
            if (!this.OooO0OO.isEmpty()) {
                sb.append(" - ");
                sb.append(this.OooO0OO);
            }
            return sb.toString();
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface OooO0O0 {
        boolean matchAny() default true;

        Class<?>[] value() default {};
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface OooO0OO {
        boolean matchAny() default true;

        Class<?>[] value() default {};
    }

    public o50(Class<?> cls, u90 u90Var) throws InitializationError {
        super(cls, u90Var);
        try {
            OooO0OO(OooO00o.OooO0oO(OoooO(cls), OoooO00(cls), OoooO0O(cls), Oooo(cls)));
            Oooo0o0(getDescription());
        } catch (NoTestsRemainException e) {
            throw new InitializationError(e);
        }
    }

    private static Set<Class<?>> Oooo(Class<?> cls) {
        OooO0O0 oooO0O0 = (OooO0O0) cls.getAnnotation(OooO0O0.class);
        return Oooo0oo(oooO0O0 == null ? null : oooO0O0.value());
    }

    private static void Oooo0o(Description description) throws InitializationError {
        for (Description description2 : description.getChildren()) {
            if (description2.getAnnotation(p50.class) != null) {
                throw new InitializationError("Category annotations on Parameterized classes are not supported on individual methods.");
            }
            Oooo0o(description2);
        }
    }

    private static void Oooo0o0(Description description) throws InitializationError {
        if (!Oooo0oO(description)) {
            Oooo0o(description);
        }
        Iterator<Description> it = description.getChildren().iterator();
        while (it.hasNext()) {
            Oooo0o0(it.next());
        }
    }

    private static boolean Oooo0oO(Description description) {
        Iterator<Description> it = description.getChildren().iterator();
        while (it.hasNext()) {
            if (it.next().getTestClass() == null) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Set<Class<?>> Oooo0oo(Class<?>... clsArr) {
        HashSet hashSet = new HashSet();
        if (clsArr != null) {
            Collections.addAll(hashSet, clsArr);
        }
        return hashSet;
    }

    private static boolean OoooO(Class<?> cls) {
        OooO0OO oooO0OO = (OooO0OO) cls.getAnnotation(OooO0OO.class);
        return oooO0OO == null || oooO0OO.matchAny();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean OoooO0(Set<Class<?>> set, Class<?> cls) {
        Iterator<Class<?>> it = set.iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    private static Set<Class<?>> OoooO00(Class<?> cls) {
        OooO0OO oooO0OO = (OooO0OO) cls.getAnnotation(OooO0OO.class);
        return Oooo0oo(oooO0OO == null ? null : oooO0OO.value());
    }

    private static boolean OoooO0O(Class<?> cls) {
        OooO0O0 oooO0O0 = (OooO0O0) cls.getAnnotation(OooO0O0.class);
        return oooO0O0 == null || oooO0O0.matchAny();
    }
}

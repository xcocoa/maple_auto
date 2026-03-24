package z2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.internal.runners.rules.ValidationError;

/* JADX INFO: loaded from: classes2.dex */
public class x70 {
    public static final x70 OooO0Oo;
    public static final x70 OooO0o;
    public static final x70 OooO0o0;
    public static final x70 OooO0oO;
    private final Class<? extends Annotation> OooO00o;
    private final boolean OooO0O0;
    private final List<OooOo00> OooO0OO;

    public static final class OooO implements OooOo00 {
        private OooO() {
        }

        @Override // z2.x70.OooOo00
        public void OooO00o(r90<?> r90Var, Class<? extends Annotation> cls, List<Throwable> list) {
            if (x70.OooO0oO(r90Var)) {
                return;
            }
            list.add(new ValidationError(r90Var, cls, "must implement TestRule."));
        }
    }

    public static class OooO0O0 {
        private final Class<? extends Annotation> OooO00o;
        private boolean OooO0O0;
        private final List<OooOo00> OooO0OO;

        private OooO0O0(Class<? extends Annotation> cls) {
            this.OooO00o = cls;
            this.OooO0O0 = false;
            this.OooO0OO = new ArrayList();
        }

        public x70 OooO0Oo() {
            return new x70(this);
        }

        public OooO0O0 OooO0o(OooOo00 oooOo00) {
            this.OooO0OO.add(oooOo00);
            return this;
        }

        public OooO0O0 OooO0o0() {
            this.OooO0O0 = true;
            return this;
        }
    }

    public static final class OooO0OO implements OooOo00 {
        private OooO0OO() {
        }

        private boolean OooO0O0(r90<?> r90Var) {
            return Modifier.isPublic(r90Var.OooO0OO().getModifiers());
        }

        @Override // z2.x70.OooOo00
        public void OooO00o(r90<?> r90Var, Class<? extends Annotation> cls, List<Throwable> list) {
            if (OooO0O0(r90Var)) {
                return;
            }
            list.add(new ValidationError(r90Var, cls, "must be declared in a public class."));
        }
    }

    public static final class OooO0o implements OooOo00 {
        private OooO0o() {
        }

        @Override // z2.x70.OooOo00
        public void OooO00o(r90<?> r90Var, Class<? extends Annotation> cls, List<Throwable> list) {
            if (x70.OooO0o(r90Var)) {
                return;
            }
            list.add(new ValidationError(r90Var, cls, "must implement MethodRule or TestRule."));
        }
    }

    public static final class OooOO0 implements OooOo00 {
        private OooOO0() {
        }

        @Override // z2.x70.OooOo00
        public void OooO00o(r90<?> r90Var, Class<? extends Annotation> cls, List<Throwable> list) {
            boolean zOooO0o0 = x70.OooO0o0(r90Var);
            boolean z = r90Var.OooO00o(j50.class) != null;
            if (r90Var.OooOO0()) {
                if (zOooO0o0 || !z) {
                    list.add(new ValidationError(r90Var, cls, x70.OooO0o0(r90Var) ? "must not be static." : "must not be static or it must be annotated with @ClassRule."));
                }
            }
        }
    }

    public static final class OooOO0O implements OooOo00 {
        private OooOO0O() {
        }

        @Override // z2.x70.OooOo00
        public void OooO00o(r90<?> r90Var, Class<? extends Annotation> cls, List<Throwable> list) {
            if (r90Var.OooO0oO()) {
                return;
            }
            list.add(new ValidationError(r90Var, cls, "must be public."));
        }
    }

    public static final class OooOOO implements OooOo00 {
        private OooOOO() {
        }

        @Override // z2.x70.OooOo00
        public void OooO00o(r90<?> r90Var, Class<? extends Annotation> cls, List<Throwable> list) {
            if (x70.OooO0o(r90Var)) {
                return;
            }
            list.add(new ValidationError(r90Var, cls, "must return an implementation of MethodRule or TestRule."));
        }
    }

    public static final class OooOOO0 implements OooOo00 {
        private OooOOO0() {
        }

        @Override // z2.x70.OooOo00
        public void OooO00o(r90<?> r90Var, Class<? extends Annotation> cls, List<Throwable> list) {
            if (r90Var.OooOO0()) {
                return;
            }
            list.add(new ValidationError(r90Var, cls, "must be static."));
        }
    }

    public static final class OooOOOO implements OooOo00 {
        private OooOOOO() {
        }

        @Override // z2.x70.OooOo00
        public void OooO00o(r90<?> r90Var, Class<? extends Annotation> cls, List<Throwable> list) {
            if (x70.OooO0oO(r90Var)) {
                return;
            }
            list.add(new ValidationError(r90Var, cls, "must return an implementation of TestRule."));
        }
    }

    public interface OooOo00 {
        void OooO00o(r90<?> r90Var, Class<? extends Annotation> cls, List<Throwable> list);
    }

    static {
        OooO0Oo = OooO0Oo().OooO0o(new OooO0OO()).OooO0o(new OooOOO0()).OooO0o(new OooOO0O()).OooO0o(new OooO()).OooO0Oo();
        OooO0o0 = OooO0oo().OooO0o(new OooOO0()).OooO0o(new OooOO0O()).OooO0o(new OooO0o()).OooO0Oo();
        OooO0o = OooO0Oo().OooO0o0().OooO0o(new OooO0OO()).OooO0o(new OooOOO0()).OooO0o(new OooOO0O()).OooO0o(new OooOOOO()).OooO0Oo();
        OooO0oO = OooO0oo().OooO0o0().OooO0o(new OooOO0()).OooO0o(new OooOO0O()).OooO0o(new OooOOO()).OooO0Oo();
    }

    public x70(OooO0O0 oooO0O0) {
        this.OooO00o = oooO0O0.OooO00o;
        this.OooO0O0 = oooO0O0.OooO0O0;
        this.OooO0OO = oooO0O0.OooO0OO;
    }

    private static OooO0O0 OooO0Oo() {
        return new OooO0O0(j50.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean OooO0o(r90<?> r90Var) {
        return OooO0o0(r90Var) || OooO0oO(r90Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean OooO0o0(r90<?> r90Var) {
        return k80.class.isAssignableFrom(r90Var.OooO0o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean OooO0oO(r90<?> r90Var) {
        return q80.class.isAssignableFrom(r90Var.OooO0o());
    }

    private static OooO0O0 OooO0oo() {
        return new OooO0O0(m50.class);
    }

    private void OooOO0(r90<?> r90Var, List<Throwable> list) {
        Iterator<OooOo00> it = this.OooO0OO.iterator();
        while (it.hasNext()) {
            it.next().OooO00o(r90Var, this.OooO00o, list);
        }
    }

    public void OooO(x90 x90Var, List<Throwable> list) {
        Iterator it = (this.OooO0O0 ? x90Var.OooOO0O(this.OooO00o) : x90Var.OooO0oO(this.OooO00o)).iterator();
        while (it.hasNext()) {
            OooOO0((r90) it.next(), list);
        }
    }
}

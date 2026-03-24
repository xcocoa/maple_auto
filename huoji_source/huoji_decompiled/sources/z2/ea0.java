package z2;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ea0 implements ga0 {
    private static final List<OooO0O0<?>> OooO00o;

    public static class OooO extends OooO0O0<s90> {
        private OooO() {
            super();
        }

        @Override // z2.ea0.OooO0O0
        public Iterable<s90> OooO00o(x90 x90Var) {
            return x90Var.OooOO0();
        }

        @Override // z2.ea0.OooO0O0
        /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
        public List<Exception> OooO0OO(ca0 ca0Var, s90 s90Var) {
            return ca0Var.OooO0OO(s90Var);
        }
    }

    public static abstract class OooO0O0<T extends p90> {
        private static final da0 OooO00o = new da0();

        private OooO0O0() {
        }

        private List<Exception> OooO0O0(T t) {
            ArrayList arrayList = new ArrayList();
            for (Annotation annotation : t.OooO0O0()) {
                ha0 ha0Var = (ha0) annotation.annotationType().getAnnotation(ha0.class);
                if (ha0Var != null) {
                    arrayList.addAll(OooO0OO(OooO00o.OooO00o(ha0Var), t));
                }
            }
            return arrayList;
        }

        public abstract Iterable<T> OooO00o(x90 x90Var);

        public abstract List<Exception> OooO0OO(ca0 ca0Var, T t);

        public List<Exception> OooO0Oo(x90 x90Var) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = OooO00o(x90Var).iterator();
            while (it.hasNext()) {
                arrayList.addAll(OooO0O0(it.next()));
            }
            return arrayList;
        }
    }

    public static class OooO0OO extends OooO0O0<x90> {
        private OooO0OO() {
            super();
        }

        @Override // z2.ea0.OooO0O0
        public Iterable<x90> OooO00o(x90 x90Var) {
            return Collections.singletonList(x90Var);
        }

        @Override // z2.ea0.OooO0O0
        /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
        public List<Exception> OooO0OO(ca0 ca0Var, x90 x90Var) {
            return ca0Var.OooO00o(x90Var);
        }
    }

    public static class OooO0o extends OooO0O0<q90> {
        private OooO0o() {
            super();
        }

        @Override // z2.ea0.OooO0O0
        public Iterable<q90> OooO00o(x90 x90Var) {
            return x90Var.OooO0o();
        }

        @Override // z2.ea0.OooO0O0
        /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
        public List<Exception> OooO0OO(ca0 ca0Var, q90 q90Var) {
            return ca0Var.OooO0O0(q90Var);
        }
    }

    static {
        OooO00o = Arrays.asList(new OooO0OO(), new OooO(), new OooO0o());
    }

    @Override // z2.ga0
    public List<Exception> OooO00o(x90 x90Var) {
        ArrayList arrayList = new ArrayList();
        Iterator<OooO0O0<?>> it = OooO00o.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().OooO0Oo(x90Var));
        }
        return arrayList;
    }
}

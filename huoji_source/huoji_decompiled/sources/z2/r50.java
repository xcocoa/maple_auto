package z2;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class r50 extends ca0 {
    private static final Set<Class<? extends Annotation>> OooO0O0 = Collections.unmodifiableSet(new HashSet(Arrays.asList(i50.class, e50.class, h50.class, d50.class)));

    private void OooO0Oo(List<Exception> list, Class<?> cls) {
        list.add(new Exception(String.format("@%s can not be combined with @Category", cls.getSimpleName())));
    }

    @Override // z2.ca0
    public List<Exception> OooO0OO(s90 s90Var) {
        ArrayList arrayList = new ArrayList();
        for (Annotation annotation : s90Var.OooO0O0()) {
            for (Class<? extends Annotation> cls : OooO0O0) {
                if (annotation.annotationType().isAssignableFrom(cls)) {
                    OooO0Oo(arrayList, cls);
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }
}

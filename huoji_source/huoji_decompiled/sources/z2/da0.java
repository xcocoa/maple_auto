package z2;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class da0 {
    private static final ConcurrentHashMap<ha0, ca0> OooO00o = new ConcurrentHashMap<>();

    public ca0 OooO00o(ha0 ha0Var) {
        ConcurrentHashMap<ha0, ca0> concurrentHashMap = OooO00o;
        ca0 ca0Var = concurrentHashMap.get(ha0Var);
        if (ca0Var != null) {
            return ca0Var;
        }
        Class<? extends ca0> clsValue = ha0Var.value();
        if (clsValue == null) {
            throw new IllegalArgumentException("Can't create validator, value is null in annotation " + ha0Var.getClass().getName());
        }
        try {
            concurrentHashMap.putIfAbsent(ha0Var, clsValue.newInstance());
            return concurrentHashMap.get(ha0Var);
        } catch (Exception e) {
            throw new RuntimeException("Exception received when creating AnnotationValidator class " + clsValue.getName(), e);
        }
    }
}

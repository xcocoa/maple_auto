package z2;

import java.lang.reflect.Modifier;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public class y60 extends u90 {
    private static final String OooO0OO = "Custom runner class %s should have a public constructor with signature %s(Class testClass)";
    private final u90 OooO0O0;

    public y60(u90 u90Var) {
        this.OooO0O0 = u90Var;
    }

    private Class<?> OooO(Class<?> cls) {
        if (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
            return null;
        }
        return cls.getEnclosingClass();
    }

    @Override // z2.u90
    public b90 OooO0OO(Class<?> cls) throws Exception {
        Class<?> clsOooO = cls;
        while (clsOooO != null) {
            a90 a90Var = (a90) clsOooO.getAnnotation(a90.class);
            if (a90Var != null) {
                return OooO0oo(a90Var.value(), cls);
            }
            clsOooO = OooO(clsOooO);
        }
        return null;
    }

    public b90 OooO0oo(Class<? extends b90> cls, Class<?> cls2) throws Exception {
        try {
            return cls.getConstructor(Class.class).newInstance(cls2);
        } catch (NoSuchMethodException unused) {
            try {
                return cls.getConstructor(Class.class, u90.class).newInstance(cls2, this.OooO0O0);
            } catch (NoSuchMethodException unused2) {
                String simpleName = cls.getSimpleName();
                throw new InitializationError(String.format(OooO0OO, simpleName, simpleName));
            }
        }
    }
}

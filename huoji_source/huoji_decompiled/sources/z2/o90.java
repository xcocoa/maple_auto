package z2;

import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.List;
import org.junit.runner.Description;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public class o90 extends n90<b90> {
    private final List<b90> OooO0o;

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface OooO00o {
        Class<?>[] value();
    }

    public o90(Class<?> cls, List<b90> list) throws InitializationError {
        super(cls);
        this.OooO0o = Collections.unmodifiableList(list);
    }

    public o90(Class<?> cls, u90 u90Var) throws InitializationError {
        this(u90Var, cls, Oooo00o(cls));
    }

    public o90(Class<?> cls, Class<?>[] clsArr) throws InitializationError {
        this(new x60(true), cls, clsArr);
    }

    public o90(u90 u90Var, Class<?> cls, Class<?>[] clsArr) throws InitializationError {
        this(cls, u90Var.OooO0o0(cls, clsArr));
    }

    public o90(u90 u90Var, Class<?>[] clsArr) throws InitializationError {
        this((Class<?>) null, u90Var.OooO0o0(null, clsArr));
    }

    public static b90 Oooo00O() {
        try {
            return new o90((Class<?>) null, (Class<?>[]) new Class[0]);
        } catch (InitializationError unused) {
            throw new RuntimeException("This shouldn't be possible");
        }
    }

    private static Class<?>[] Oooo00o(Class<?> cls) throws InitializationError {
        OooO00o oooO00o = (OooO00o) cls.getAnnotation(OooO00o.class);
        if (oooO00o != null) {
            return oooO00o.value();
        }
        throw new InitializationError(String.format("class '%s' must have a SuiteClasses annotation", cls.getName()));
    }

    @Override // z2.n90
    public List<b90> OooOOOO() {
        return this.OooO0o;
    }

    @Override // z2.n90
    /* JADX INFO: renamed from: Oooo0, reason: merged with bridge method [inline-methods] */
    public void OooOo0(b90 b90Var, h90 h90Var) {
        b90Var.OooO00o(h90Var);
    }

    @Override // z2.n90
    /* JADX INFO: renamed from: Oooo000, reason: merged with bridge method [inline-methods] */
    public Description OooOOO(b90 b90Var) {
        return b90Var.getDescription();
    }
}

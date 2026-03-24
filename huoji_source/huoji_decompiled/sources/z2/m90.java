package z2;

import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class m90 extends o90 {
    private final List<b90> OooO0oO;
    private static final aa0 OooO0oo = new z90();
    private static final List<b90> OooO = Collections.emptyList();

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface OooO00o {
        int value() default 0;
    }

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface OooO0O0 {
        String name() default "{index}";
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface OooO0OO {
        Class<? extends aa0> value() default z90.class;
    }

    public m90(Class<?> cls) throws Throwable {
        super(cls, OooO);
        this.OooO0oO = Collections.unmodifiableList(Oooo0OO(Oooo0O0(), ((OooO0O0) Oooo0oo().OooO00o(OooO0O0.class)).name(), Oooo(cls)));
    }

    private aa0 Oooo(Class<?> cls) throws IllegalAccessException, InstantiationException {
        OooO0OO oooO0OO = (OooO0OO) cls.getAnnotation(OooO0OO.class);
        return oooO0OO == null ? OooO0oo : oooO0OO.value().newInstance();
    }

    private Iterable<Object> Oooo0O0() throws Exception {
        Object objOooOOOO = Oooo0oo().OooOOOO(null, new Object[0]);
        if (objOooOOOO instanceof Iterable) {
            return (Iterable) objOooOOOO;
        }
        if (objOooOOOO instanceof Object[]) {
            return Arrays.asList((Object[]) objOooOOOO);
        }
        throw OoooO00();
    }

    private List<b90> Oooo0OO(Iterable<Object> iterable, String str, aa0 aa0Var) throws Exception {
        try {
            List<ba0> listOooo0oO = Oooo0oO(iterable, str);
            ArrayList arrayList = new ArrayList();
            Iterator<ba0> it = listOooo0oO.iterator();
            while (it.hasNext()) {
                arrayList.add(aa0Var.OooO00o(it.next()));
            }
            return arrayList;
        } catch (ClassCastException unused) {
            throw OoooO00();
        }
    }

    private static ba0 Oooo0o(x90 x90Var, String str, int i, Object[] objArr) {
        return new ba0("[" + MessageFormat.format(str.replaceAll("\\{index\\}", Integer.toString(i)), objArr) + "]", x90Var, Arrays.asList(objArr));
    }

    private ba0 Oooo0o0(String str, int i, Object obj) {
        return Oooo0o(OooOOoo(), str, i, obj instanceof Object[] ? (Object[]) obj : new Object[]{obj});
    }

    private List<ba0> Oooo0oO(Iterable<Object> iterable, String str) throws Exception {
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            arrayList.add(Oooo0o0(str, i, it.next()));
            i++;
        }
        return arrayList;
    }

    private s90 Oooo0oo() throws Exception {
        for (s90 s90Var : OooOOoo().OooOO0O(OooO0O0.class)) {
            if (s90Var.OooOO0() && s90Var.OooO0oO()) {
                return s90Var;
            }
        }
        throw new Exception("No public static parameters method on class " + OooOOoo().OooOOO0());
    }

    private Exception OoooO00() throws Exception {
        return new Exception(MessageFormat.format("{0}.{1}() must return an Iterable of arrays.", OooOOoo().OooOOO0(), Oooo0oo().OooO0o0()));
    }

    @Override // z2.o90, z2.n90
    public List<b90> OooOOOO() {
        return this.OooO0oO;
    }
}

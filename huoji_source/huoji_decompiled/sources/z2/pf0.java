package z2;

import java.lang.reflect.Field;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class pf0 {
    private static Object OooO00o;

    static {
        OooO0o0();
    }

    private pf0() {
    }

    public static int OooO(Object obj, long j) throws Exception {
        OooO0Oo();
        return ((Integer) OooO00o.getClass().getMethod("getLong", Object.class, Long.TYPE).invoke(OooO00o, obj, Long.valueOf(j))).intValue();
    }

    public static long OooO00o(Object obj) throws Exception {
        int iOooO0oO;
        OooO0Oo();
        Object[] objArr = {obj};
        long jOooO0OO = OooO0OO(Object[].class);
        int iOooO0O0 = OooO0O0();
        if (iOooO0O0 == 4) {
            iOooO0oO = OooO0oO(objArr, jOooO0OO);
        } else {
            if (iOooO0O0 != 8) {
                throw new Error("unsupported address size: " + iOooO0O0);
            }
            iOooO0oO = OooO(objArr, jOooO0OO);
        }
        return iOooO0oO;
    }

    public static int OooO0O0() throws Exception {
        OooO0Oo();
        return ((Integer) OooO00o.getClass().getMethod("addressSize", new Class[0]).invoke(OooO00o, new Object[0])).intValue();
    }

    public static int OooO0OO(Class<?> cls) throws Exception {
        OooO0Oo();
        return ((Integer) OooO00o.getClass().getMethod("arrayBaseOffset", Class.class).invoke(OooO00o, cls)).intValue();
    }

    private static void OooO0Oo() throws NullPointerException {
        Objects.requireNonNull(OooO00o, "unsafe对象为空");
    }

    public static int OooO0o(long j) throws Exception {
        OooO0Oo();
        return ((Integer) OooO00o.getClass().getMethod("getInt", Long.TYPE).invoke(OooO00o, Long.valueOf(j))).intValue();
    }

    private static void OooO0o0() {
        try {
            Field declaredField = Class.forName("sun.misc.Unsafe").getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            OooO00o = declaredField.get(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static int OooO0oO(Object obj, long j) throws Exception {
        OooO0Oo();
        return ((Integer) OooO00o.getClass().getMethod("getInt", Object.class, Long.TYPE).invoke(OooO00o, obj, Long.valueOf(j))).intValue();
    }

    public static int OooO0oo(long j) throws Exception {
        OooO0Oo();
        return ((Integer) OooO00o.getClass().getMethod("getLong", Long.TYPE).invoke(OooO00o, Long.valueOf(j))).intValue();
    }

    public static Object OooOO0(Object obj, long j) throws Exception {
        OooO0Oo();
        return OooO00o.getClass().getMethod("getObject", Object.class, Long.TYPE).invoke(OooO00o, obj, Long.valueOf(j));
    }

    public static Object OooOO0O(Object obj, long j) throws Exception {
        OooO0Oo();
        return OooO00o.getClass().getMethod("getObjectVolatile", Object.class, Long.TYPE).invoke(OooO00o, obj, Long.valueOf(j));
    }

    public static long OooOO0o(Field field) throws Exception {
        OooO0Oo();
        return ((Long) OooO00o.getClass().getMethod("objectFieldOffset", Field.class).invoke(OooO00o, field)).longValue();
    }

    public static void OooOOO(Object obj, long j, Object obj2) throws Exception {
        OooO0Oo();
        OooO00o.getClass().getMethod("putObjectVolatile", Object.class, Long.TYPE, Object.class).invoke(OooO00o, obj, Long.valueOf(j), obj2);
    }

    public static void OooOOO0(Object obj, long j, Object obj2) throws Exception {
        OooO0Oo();
        OooO00o.getClass().getMethod("putObject", Object.class, Long.TYPE, Object.class).invoke(OooO00o, obj, Long.valueOf(j), obj2);
    }
}

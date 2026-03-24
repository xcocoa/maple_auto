package z2;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.litepal.exceptions.LitePalSupportException;

/* JADX INFO: loaded from: classes2.dex */
public class ta0 {
    private ta0() {
    }

    public static Object OooO00o(Object obj, String str, Class<?> cls) throws IllegalAccessException, IllegalArgumentException {
        if (cls == ua0.class || cls == Object.class) {
            throw new LitePalSupportException(LitePalSupportException.noSuchFieldExceptioin(cls.getSimpleName(), str));
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (NoSuchFieldException unused) {
            return OooO00o(obj, str, cls.getSuperclass());
        }
    }

    public static Object OooO0O0(Object obj, String str, Object[] objArr, Class<?> cls, Class<?>[] clsArr) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (objArr == null) {
            try {
                objArr = new Object[0];
            } catch (NoSuchMethodException e) {
                throw new LitePalSupportException(LitePalSupportException.noSuchMethodException(cls.getSimpleName(), str), e);
            }
        }
        if (clsArr == null) {
            clsArr = new Class[0];
        }
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, objArr);
    }

    public static void OooO0OO(Object obj, String str, Object obj2, Class<?> cls) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    public static void OooO0Oo(Object obj, String str, Object obj2, Class<?> cls) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        if (cls == ua0.class || cls == Object.class) {
            throw new LitePalSupportException(LitePalSupportException.noSuchFieldExceptioin(cls.getSimpleName(), str));
        }
        try {
            OooO0OO(obj, str, obj2, cls);
        } catch (NoSuchFieldException unused) {
            OooO0Oo(obj, str, obj2, cls.getSuperclass());
        }
    }
}

package z2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes2.dex */
public class s70 extends o70 {
    public s70(Class<?> cls) throws Throwable {
        super(OooOO0O(cls));
    }

    public static gw OooOO0O(Class<?> cls) throws Exception {
        try {
            Method method = cls.getMethod(mw.OooO0O0, new Class[0]);
            if (Modifier.isStatic(method.getModifiers())) {
                return (gw) method.invoke(null, new Object[0]);
            }
            throw new Exception(cls.getName() + ".suite() must be static");
        } catch (InvocationTargetException e) {
            throw e.getCause();
        }
    }
}

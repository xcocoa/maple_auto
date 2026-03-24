package z2;

import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public final class kv {
    private static final String OooO00o = "kv";
    private static final Object OooO0O0;
    private static final Method OooO0OO;

    static {
        String simpleName = kv.class.getSimpleName();
        Object objOooO0OO = OooO0OO();
        OooO0O0 = objOooO0OO;
        OooO0OO = OooO0Oo(objOooO0OO);
        Log.v(simpleName, objOooO0OO == null ? "This device does supports control of a flashlight" : "This device does not support control of a flashlight");
    }

    private kv() {
    }

    public static void OooO00o() {
        OooO0oo(false);
    }

    public static void OooO0O0() {
        OooO0oo(true);
    }

    private static Object OooO0OO() {
        Method methodOooO0oO;
        Object objOooO0o0;
        Class<?> clsOooO0o;
        Method methodOooO0oO2;
        Class<?> clsOooO0o2 = OooO0o("android.os.ServiceManager");
        if (clsOooO0o2 == null || (methodOooO0oO = OooO0oO(clsOooO0o2, "getService", String.class)) == null || (objOooO0o0 = OooO0o0(methodOooO0oO, null, "hardware")) == null || (clsOooO0o = OooO0o("android.os.IHardwareService$Stub")) == null || (methodOooO0oO2 = OooO0oO(clsOooO0o, "asInterface", IBinder.class)) == null) {
            return null;
        }
        return OooO0o0(methodOooO0oO2, null, objOooO0o0);
    }

    private static Method OooO0Oo(Object obj) {
        if (obj == null) {
            return null;
        }
        return OooO0oO(obj.getClass(), "setFlashlightEnabled", Boolean.TYPE);
    }

    private static Class<?> OooO0o(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (RuntimeException e) {
            Log.w(OooO00o, "Unexpected error while finding class " + str, e);
            return null;
        }
    }

    private static Object OooO0o0(Method method, Object obj, Object... objArr) {
        String str;
        String string;
        Throwable e;
        StringBuilder sb;
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            e = e2;
            str = OooO00o;
            sb = new StringBuilder();
            sb.append("Unexpected error while invoking ");
            sb.append(method);
            string = sb.toString();
            Log.w(str, string, e);
            return null;
        } catch (RuntimeException e3) {
            e = e3;
            str = OooO00o;
            sb = new StringBuilder();
            sb.append("Unexpected error while invoking ");
            sb.append(method);
            string = sb.toString();
            Log.w(str, string, e);
            return null;
        } catch (InvocationTargetException e4) {
            str = OooO00o;
            string = "Unexpected error while invoking " + method;
            e = e4.getCause();
            Log.w(str, string, e);
            return null;
        }
    }

    private static Method OooO0oO(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (RuntimeException e) {
            Log.w(OooO00o, "Unexpected error while finding method " + str, e);
            return null;
        }
    }

    private static void OooO0oo(boolean z) {
        Object obj = OooO0O0;
        if (obj != null) {
            OooO0o0(OooO0OO, obj, Boolean.valueOf(z));
        }
    }
}

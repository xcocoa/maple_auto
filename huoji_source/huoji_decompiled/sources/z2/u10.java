package z2;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBusException;

/* JADX INFO: loaded from: classes2.dex */
public class u10 {
    private static final int OooO0Oo = 64;
    private static final int OooO0o = 5192;
    private static final int OooO0o0 = 4096;
    private static final int OooO0oo = 4;
    private List<z10> OooO00o;
    private final boolean OooO0O0;
    private final boolean OooO0OO;
    private static final Map<Class<?>, List<t10>> OooO0oO = new ConcurrentHashMap();
    private static final OooO00o[] OooO = new OooO00o[4];

    public static class OooO00o {
        public final List<t10> OooO00o = new ArrayList();
        public final Map<Class, Object> OooO0O0 = new HashMap();
        public final Map<String, Class> OooO0OO = new HashMap();
        public final StringBuilder OooO0Oo = new StringBuilder(128);
        public Class<?> OooO0o;
        public Class<?> OooO0o0;
        public boolean OooO0oO;
        public y10 OooO0oo;

        private boolean OooO0O0(Method method, Class<?> cls) {
            this.OooO0Oo.setLength(0);
            this.OooO0Oo.append(method.getName());
            StringBuilder sb = this.OooO0Oo;
            sb.append('>');
            sb.append(cls.getName());
            String string = this.OooO0Oo.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class clsPut = this.OooO0OO.put(string, declaringClass);
            if (clsPut == null || clsPut.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.OooO0OO.put(string, clsPut);
            return false;
        }

        public boolean OooO00o(Method method, Class<?> cls) {
            Object objPut = this.OooO0O0.put(cls, method);
            if (objPut == null) {
                return true;
            }
            if (objPut instanceof Method) {
                if (!OooO0O0((Method) objPut, cls)) {
                    throw new IllegalStateException();
                }
                this.OooO0O0.put(cls, this);
            }
            return OooO0O0(method, cls);
        }

        public void OooO0OO(Class<?> cls) {
            this.OooO0o = cls;
            this.OooO0o0 = cls;
            this.OooO0oO = false;
            this.OooO0oo = null;
        }

        public void OooO0Oo() {
            if (!this.OooO0oO) {
                Class<? super Object> superclass = this.OooO0o.getSuperclass();
                this.OooO0o = superclass;
                String name = superclass.getName();
                if (!name.startsWith("java.") && !name.startsWith("javax.") && !name.startsWith("android.")) {
                    return;
                }
            }
            this.OooO0o = null;
        }

        public void OooO0o0() {
            this.OooO00o.clear();
            this.OooO0O0.clear();
            this.OooO0OO.clear();
            this.OooO0Oo.setLength(0);
            this.OooO0o0 = null;
            this.OooO0o = null;
            this.OooO0oO = false;
            this.OooO0oo = null;
        }
    }

    public u10(List<z10> list, boolean z, boolean z3) {
        this.OooO00o = list;
        this.OooO0O0 = z;
        this.OooO0OO = z3;
    }

    public static void OooO00o() {
        OooO0oO.clear();
    }

    private List<t10> OooO0OO(Class<?> cls) {
        OooO00o oooO00oOooO0oo = OooO0oo();
        oooO00oOooO0oo.OooO0OO(cls);
        while (oooO00oOooO0oo.OooO0o != null) {
            y10 y10VarOooO0oO = OooO0oO(oooO00oOooO0oo);
            oooO00oOooO0oo.OooO0oo = y10VarOooO0oO;
            if (y10VarOooO0oO != null) {
                for (t10 t10Var : y10VarOooO0oO.OooO00o()) {
                    if (oooO00oOooO0oo.OooO00o(t10Var.OooO00o, t10Var.OooO0OO)) {
                        oooO00oOooO0oo.OooO00o.add(t10Var);
                    }
                }
            } else {
                OooO0o0(oooO00oOooO0oo);
            }
            oooO00oOooO0oo.OooO0Oo();
        }
        return OooO0o(oooO00oOooO0oo);
    }

    private List<t10> OooO0Oo(Class<?> cls) {
        OooO00o oooO00oOooO0oo = OooO0oo();
        oooO00oOooO0oo.OooO0OO(cls);
        while (oooO00oOooO0oo.OooO0o != null) {
            OooO0o0(oooO00oOooO0oo);
            oooO00oOooO0oo.OooO0Oo();
        }
        return OooO0o(oooO00oOooO0oo);
    }

    private List<t10> OooO0o(OooO00o oooO00o) {
        ArrayList arrayList = new ArrayList(oooO00o.OooO00o);
        oooO00o.OooO0o0();
        synchronized (OooO) {
            int i = 0;
            while (true) {
                if (i >= 4) {
                    break;
                }
                OooO00o[] oooO00oArr = OooO;
                if (oooO00oArr[i] == null) {
                    oooO00oArr[i] = oooO00o;
                    break;
                }
                i++;
            }
        }
        return arrayList;
    }

    private void OooO0o0(OooO00o oooO00o) {
        Method[] methods;
        try {
            methods = oooO00o.OooO0o.getDeclaredMethods();
        } catch (Throwable unused) {
            methods = oooO00o.OooO0o.getMethods();
            oooO00o.OooO0oO = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & OooO0o) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    r10 r10Var = (r10) method.getAnnotation(r10.class);
                    if (r10Var != null) {
                        Class<?> cls = parameterTypes[0];
                        if (oooO00o.OooO00o(method, cls)) {
                            oooO00o.OooO00o.add(new t10(method, cls, r10Var.threadMode(), r10Var.priority(), r10Var.sticky()));
                        }
                    }
                } else if (this.OooO0O0 && method.isAnnotationPresent(r10.class)) {
                    throw new EventBusException("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                }
            } else if (this.OooO0O0 && method.isAnnotationPresent(r10.class)) {
                throw new EventBusException((method.getDeclaringClass().getName() + "." + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
            }
        }
    }

    private y10 OooO0oO(OooO00o oooO00o) {
        y10 y10Var = oooO00o.OooO0oo;
        if (y10Var != null && y10Var.OooO0O0() != null) {
            y10 y10VarOooO0O0 = oooO00o.OooO0oo.OooO0O0();
            if (oooO00o.OooO0o == y10VarOooO0O0.OooO0Oo()) {
                return y10VarOooO0O0;
            }
        }
        List<z10> list = this.OooO00o;
        if (list == null) {
            return null;
        }
        Iterator<z10> it = list.iterator();
        while (it.hasNext()) {
            y10 y10VarOooO00o = it.next().OooO00o(oooO00o.OooO0o);
            if (y10VarOooO00o != null) {
                return y10VarOooO00o;
            }
        }
        return null;
    }

    private OooO00o OooO0oo() {
        synchronized (OooO) {
            for (int i = 0; i < 4; i++) {
                OooO00o[] oooO00oArr = OooO;
                OooO00o oooO00o = oooO00oArr[i];
                if (oooO00o != null) {
                    oooO00oArr[i] = null;
                    return oooO00o;
                }
            }
            return new OooO00o();
        }
    }

    public List<t10> OooO0O0(Class<?> cls) {
        Map<Class<?>, List<t10>> map = OooO0oO;
        List<t10> list = map.get(cls);
        if (list != null) {
            return list;
        }
        List<t10> listOooO0Oo = this.OooO0OO ? OooO0Oo(cls) : OooO0OO(cls);
        if (!listOooO0Oo.isEmpty()) {
            map.put(cls, listOooO0Oo);
            return listOooO0Oo;
        }
        throw new EventBusException("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
    }
}

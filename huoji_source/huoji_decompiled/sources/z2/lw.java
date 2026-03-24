package z2;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class lw implements gw {
    private String OooO00o;
    private Vector<gw> OooO0O0;

    public static class OooO00o extends hw {
        public final /* synthetic */ String OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(String str, String str2) {
            super(str);
            this.OooO0O0 = str2;
        }

        @Override // z2.hw
        public void OoooO0O() {
            hw.Oooo0O0(this.OooO0O0);
        }
    }

    public lw() {
        this.OooO0O0 = new Vector<>(10);
    }

    public lw(Class<?> cls) {
        this.OooO0O0 = new Vector<>(10);
        OooO0o(cls);
    }

    public lw(Class<? extends hw> cls, String str) {
        this(cls);
        OooOOO(str);
    }

    public lw(String str) {
        this.OooO0O0 = new Vector<>(10);
        OooOOO(str);
    }

    public lw(Class<?>... clsArr) {
        this.OooO0O0 = new Vector<>(10);
        for (Class<?> cls : clsArr) {
            OooO0OO(OooOOOo(cls));
        }
    }

    public lw(Class<? extends hw>[] clsArr, String str) {
        this(clsArr);
        OooOOO(str);
    }

    private void OooO0Oo(Method method, List<String> list, Class<?> cls) {
        String name = method.getName();
        if (list.contains(name)) {
            return;
        }
        if (OooOO0O(method)) {
            list.add(name);
            OooO0OO(OooO0oO(cls, name));
        } else if (OooOO0o(method)) {
            OooO0OO(OooOOoo("Test method isn't public: " + method.getName() + "(" + cls.getCanonicalName() + ")"));
        }
    }

    private void OooO0o(Class<?> cls) {
        StringBuilder sb;
        String str;
        this.OooO00o = cls.getName();
        try {
            OooOO0(cls);
        } catch (NoSuchMethodException unused) {
            sb = new StringBuilder();
            sb.append("Class ");
            sb.append(cls.getName());
            str = " has no public constructor TestCase(String name) or TestCase()";
        }
        if (!Modifier.isPublic(cls.getModifiers())) {
            sb = new StringBuilder();
            sb.append("Class ");
            sb.append(cls.getName());
            str = " is not public";
            sb.append(str);
            OooO0OO(OooOOoo(sb.toString()));
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Class<?> superclass = cls; gw.class.isAssignableFrom(superclass); superclass = superclass.getSuperclass()) {
            for (Method method : t60.OooO00o(superclass)) {
                OooO0Oo(method, arrayList, cls);
            }
        }
        if (this.OooO0O0.size() == 0) {
            OooO0OO(OooOOoo("No tests found in " + cls.getName()));
        }
    }

    public static gw OooO0oO(Class<?> cls, String str) {
        String string;
        Constructor<?> constructorOooOO0;
        StringBuilder sb;
        Throwable e;
        String str2;
        Object objNewInstance;
        try {
            constructorOooOO0 = OooOO0(cls);
        } catch (NoSuchMethodException unused) {
            string = "Class " + cls.getName() + " has no public constructor TestCase(String name) or TestCase()";
        }
        try {
            if (constructorOooOO0.getParameterTypes().length == 0) {
                objNewInstance = constructorOooOO0.newInstance(new Object[0]);
                if (objNewInstance instanceof hw) {
                    ((hw) objNewInstance).OoooO(str);
                }
            } else {
                objNewInstance = constructorOooOO0.newInstance(str);
            }
            return (gw) objNewInstance;
        } catch (IllegalAccessException e2) {
            e = e2;
            sb = new StringBuilder();
            str2 = "Cannot access test case: ";
            sb.append(str2);
            sb.append(str);
            sb.append(" (");
            sb.append(OooO0oo(e));
            sb.append(")");
            string = sb.toString();
            return OooOOoo(string);
        } catch (InstantiationException e3) {
            e = e3;
            sb = new StringBuilder();
            str2 = "Cannot instantiate test case: ";
            sb.append(str2);
            sb.append(str);
            sb.append(" (");
            sb.append(OooO0oo(e));
            sb.append(")");
            string = sb.toString();
            return OooOOoo(string);
        } catch (InvocationTargetException e4) {
            sb = new StringBuilder();
            sb.append("Exception in constructor: ");
            sb.append(str);
            sb.append(" (");
            e = e4.getTargetException();
            sb.append(OooO0oo(e));
            sb.append(")");
            string = sb.toString();
            return OooOOoo(string);
        }
    }

    private static String OooO0oo(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static Constructor<?> OooOO0(Class<?> cls) throws NoSuchMethodException {
        try {
            return cls.getConstructor(String.class);
        } catch (NoSuchMethodException unused) {
            return cls.getConstructor(new Class[0]);
        }
    }

    private boolean OooOO0O(Method method) {
        return OooOO0o(method) && Modifier.isPublic(method.getModifiers());
    }

    private boolean OooOO0o(Method method) {
        return method.getParameterTypes().length == 0 && method.getName().startsWith("test") && method.getReturnType().equals(Void.TYPE);
    }

    private gw OooOOOo(Class<?> cls) {
        if (hw.class.isAssignableFrom(cls)) {
            return new lw(cls.asSubclass(hw.class));
        }
        return OooOOoo(cls.getCanonicalName() + " does not extend TestCase");
    }

    public static gw OooOOoo(String str) {
        return new OooO00o("warning", str);
    }

    public String OooO() {
        return this.OooO00o;
    }

    @Override // z2.gw
    public int OooO00o() {
        Iterator<gw> it = this.OooO0O0.iterator();
        int iOooO00o = 0;
        while (it.hasNext()) {
            iOooO00o += it.next().OooO00o();
        }
        return iOooO00o;
    }

    @Override // z2.gw
    public void OooO0O0(kw kwVar) {
        for (gw gwVar : this.OooO0O0) {
            if (kwVar.OooOOO()) {
                return;
            } else {
                OooOOO0(gwVar, kwVar);
            }
        }
    }

    public void OooO0OO(gw gwVar) {
        this.OooO0O0.add(gwVar);
    }

    public void OooO0o0(Class<? extends hw> cls) {
        OooO0OO(new lw(cls));
    }

    public void OooOOO(String str) {
        this.OooO00o = str;
    }

    public void OooOOO0(gw gwVar, kw kwVar) {
        gwVar.OooO0O0(kwVar);
    }

    public gw OooOOOO(int i) {
        return this.OooO0O0.get(i);
    }

    public Enumeration<gw> OooOOo() {
        return this.OooO0O0.elements();
    }

    public int OooOOo0() {
        return this.OooO0O0.size();
    }

    public String toString() {
        return OooO() != null ? OooO() : super.toString();
    }
}

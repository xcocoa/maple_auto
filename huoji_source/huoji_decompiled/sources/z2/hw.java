package z2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes2.dex */
public abstract class hw extends bw implements gw {
    private String OooO00o;

    public hw() {
        this.OooO00o = null;
    }

    public hw(String str) {
        this.OooO00o = str;
    }

    public static void OooO(Object obj, Object obj2) {
        bw.OooO(obj, obj2);
    }

    public static void OooO0OO(byte b, byte b2) {
        bw.OooO0OO(b, b2);
    }

    public static void OooO0Oo(char c, char c2) {
        bw.OooO0Oo(c, c2);
    }

    public static void OooO0o(float f, float f2, float f3) {
        bw.OooO0o(f, f2, f3);
    }

    public static void OooO0o0(double d, double d2, double d3) {
        bw.OooO0o0(d, d2, d3);
    }

    public static void OooO0oO(int i, int i2) {
        bw.OooO0oO(i, i2);
    }

    public static void OooO0oo(long j, long j2) {
        bw.OooO0oo(j, j2);
    }

    public static void OooOO0(String str, byte b, byte b2) {
        bw.OooOO0(str, b, b2);
    }

    public static void OooOO0O(String str, char c, char c2) {
        bw.OooOO0O(str, c, c2);
    }

    public static void OooOO0o(String str, double d, double d2, double d3) {
        bw.OooOO0o(str, d, d2, d3);
    }

    public static void OooOOO(String str, int i, int i2) {
        bw.OooOOO(str, i, i2);
    }

    public static void OooOOO0(String str, float f, float f2, float f3) {
        bw.OooOOO0(str, f, f2, f3);
    }

    public static void OooOOOO(String str, long j, long j2) {
        bw.OooOOOO(str, j, j2);
    }

    public static void OooOOOo(String str, Object obj, Object obj2) {
        bw.OooOOOo(str, obj, obj2);
    }

    public static void OooOOo(String str, String str2, String str3) {
        bw.OooOOo(str, str2, str3);
    }

    public static void OooOOo0(String str, String str2) {
        bw.OooOOo0(str, str2);
    }

    public static void OooOOoo(String str, short s, short s2) {
        bw.OooOOoo(str, s, s2);
    }

    public static void OooOo(boolean z) {
        bw.OooOo(z);
    }

    public static void OooOo0(short s, short s2) {
        bw.OooOo0(s, s2);
    }

    public static void OooOo00(String str, boolean z, boolean z3) {
        bw.OooOo00(str, z, z3);
    }

    public static void OooOo0O(boolean z, boolean z3) {
        bw.OooOo0O(z, z3);
    }

    public static void OooOo0o(String str, boolean z) {
        bw.OooOo0o(str, z);
    }

    public static void OooOoO(String str, Object obj) {
        bw.OooOoO(str, obj);
    }

    public static void OooOoO0(Object obj) {
        bw.OooOoO0(obj);
    }

    public static void OooOoOO(Object obj, Object obj2) {
        bw.OooOoOO(obj, obj2);
    }

    public static void OooOoo(Object obj) {
        bw.OooOoo(obj);
    }

    public static void OooOoo0(String str, Object obj, Object obj2) {
        bw.OooOoo0(str, obj, obj2);
    }

    public static void OooOooO(String str, Object obj) {
        bw.OooOooO(str, obj);
    }

    public static void OooOooo(Object obj, Object obj2) {
        bw.OooOooo(obj, obj2);
    }

    public static void Oooo0() {
        bw.Oooo0();
    }

    public static void Oooo000(String str, Object obj, Object obj2) {
        bw.Oooo000(str, obj, obj2);
    }

    public static void Oooo00O(String str, boolean z) {
        bw.Oooo00O(str, z);
    }

    public static void Oooo00o(boolean z) {
        bw.Oooo00o(z);
    }

    public static void Oooo0O0(String str) {
        bw.Oooo0O0(str);
    }

    public static void Oooo0OO(String str, Object obj, Object obj2) {
        bw.Oooo0OO(str, obj, obj2);
    }

    public static void Oooo0o(String str) {
        bw.Oooo0o(str);
    }

    public static void Oooo0o0(String str, Object obj, Object obj2) {
        bw.Oooo0o0(str, obj, obj2);
    }

    public static String Oooo0oO(String str, Object obj, Object obj2) {
        return bw.Oooo0oO(str, obj, obj2);
    }

    @Override // z2.gw
    public int OooO00o() {
        return 1;
    }

    @Override // z2.gw
    public void OooO0O0(kw kwVar) {
        kwVar.OooOO0O(this);
    }

    public String Oooo() {
        return this.OooO00o;
    }

    public kw Oooo0oo() {
        return new kw();
    }

    public void OoooO(String str) {
        this.OooO00o = str;
    }

    public void OoooO0() throws Throwable {
        OoooOO0();
        try {
            OoooO0O();
            try {
                o000oOoO();
                th = null;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                o000oOoO();
            } catch (Throwable unused) {
            }
        }
        if (th != null) {
            throw th;
        }
    }

    public kw OoooO00() {
        kw kwVarOooo0oo = Oooo0oo();
        OooO0O0(kwVarOooo0oo);
        return kwVarOooo0oo;
    }

    public void OoooO0O() throws Throwable {
        OooOoO("TestCase.fName cannot be null", this.OooO00o);
        Method method = null;
        try {
            method = getClass().getMethod(this.OooO00o, null);
        } catch (NoSuchMethodException unused) {
            Oooo0O0("Method \"" + this.OooO00o + "\" not found");
        }
        if (!Modifier.isPublic(method.getModifiers())) {
            Oooo0O0("Method \"" + this.OooO00o + "\" should be public");
        }
        try {
            method.invoke(this, new Object[0]);
        } catch (IllegalAccessException e) {
            e.fillInStackTrace();
            throw e;
        } catch (InvocationTargetException e2) {
            e2.fillInStackTrace();
            throw e2.getTargetException();
        }
    }

    public void OoooOO0() throws Exception {
    }

    public void o000oOoO() throws Exception {
    }

    public String toString() {
        return Oooo() + "(" + getClass().getName() + ")";
    }
}

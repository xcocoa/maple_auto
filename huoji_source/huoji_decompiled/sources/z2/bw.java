package z2;

import junit.framework.AssertionFailedError;
import junit.framework.ComparisonFailure;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class bw {
    public static void OooO(Object obj, Object obj2) {
        OooOOOo(null, obj, obj2);
    }

    public static void OooO0OO(byte b, byte b2) {
        OooOO0(null, b, b2);
    }

    public static void OooO0Oo(char c, char c2) {
        OooOO0O(null, c, c2);
    }

    public static void OooO0o(float f, float f2, float f3) {
        OooOOO0(null, f, f2, f3);
    }

    public static void OooO0o0(double d, double d2, double d3) {
        OooOO0o(null, d, d2, d3);
    }

    public static void OooO0oO(int i, int i2) {
        OooOOO(null, i, i2);
    }

    public static void OooO0oo(long j, long j2) {
        OooOOOO(null, j, j2);
    }

    public static void OooOO0(String str, byte b, byte b2) {
        OooOOOo(str, Byte.valueOf(b), Byte.valueOf(b2));
    }

    public static void OooOO0O(String str, char c, char c2) {
        OooOOOo(str, Character.valueOf(c), Character.valueOf(c2));
    }

    public static void OooOO0o(String str, double d, double d2, double d3) {
        if (Double.compare(d, d2) != 0 && Math.abs(d - d2) > d3) {
            Oooo0OO(str, new Double(d), new Double(d2));
        }
    }

    public static void OooOOO(String str, int i, int i2) {
        OooOOOo(str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static void OooOOO0(String str, float f, float f2, float f3) {
        if (Float.compare(f, f2) != 0 && Math.abs(f - f2) > f3) {
            Oooo0OO(str, new Float(f), new Float(f2));
        }
    }

    public static void OooOOOO(String str, long j, long j2) {
        OooOOOo(str, Long.valueOf(j), Long.valueOf(j2));
    }

    public static void OooOOOo(String str, Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return;
        }
        if (obj == null || !obj.equals(obj2)) {
            Oooo0OO(str, obj, obj2);
        }
    }

    public static void OooOOo(String str, String str2, String str3) {
        if (str2 == null && str3 == null) {
            return;
        }
        if (str2 == null || !str2.equals(str3)) {
            if (str == null) {
                str = "";
            }
            throw new ComparisonFailure(str, str2, str3);
        }
    }

    public static void OooOOo0(String str, String str2) {
        OooOOo(null, str, str2);
    }

    public static void OooOOoo(String str, short s, short s2) {
        OooOOOo(str, Short.valueOf(s), Short.valueOf(s2));
    }

    public static void OooOo(boolean z) {
        OooOo0o(null, z);
    }

    public static void OooOo0(short s, short s2) {
        OooOOoo(null, s, s2);
    }

    public static void OooOo00(String str, boolean z, boolean z3) {
        OooOOOo(str, Boolean.valueOf(z), Boolean.valueOf(z3));
    }

    public static void OooOo0O(boolean z, boolean z3) {
        OooOo00(null, z, z3);
    }

    public static void OooOo0o(String str, boolean z) {
        Oooo00O(str, !z);
    }

    public static void OooOoO(String str, Object obj) {
        Oooo00O(str, obj != null);
    }

    public static void OooOoO0(Object obj) {
        OooOoO(null, obj);
    }

    public static void OooOoOO(Object obj, Object obj2) {
        OooOoo0(null, obj, obj2);
    }

    public static void OooOoo(Object obj) {
        if (obj != null) {
            OooOooO("Expected: <null> but was: " + obj.toString(), obj);
        }
    }

    public static void OooOoo0(String str, Object obj, Object obj2) {
        if (obj == obj2) {
            Oooo0o(str);
        }
    }

    public static void OooOooO(String str, Object obj) {
        Oooo00O(str, obj == null);
    }

    public static void OooOooo(Object obj, Object obj2) {
        Oooo000(null, obj, obj2);
    }

    public static void Oooo0() {
        Oooo0O0(null);
    }

    public static void Oooo000(String str, Object obj, Object obj2) {
        if (obj == obj2) {
            return;
        }
        Oooo0o0(str, obj, obj2);
    }

    public static void Oooo00O(String str, boolean z) {
        if (z) {
            return;
        }
        Oooo0O0(str);
    }

    public static void Oooo00o(boolean z) {
        Oooo00O(null, z);
    }

    public static void Oooo0O0(String str) {
        if (str != null) {
            throw new AssertionFailedError(str);
        }
        throw new AssertionFailedError();
    }

    public static void Oooo0OO(String str, Object obj, Object obj2) {
        Oooo0O0(Oooo0oO(str, obj, obj2));
    }

    public static void Oooo0o(String str) {
        String str2;
        if (str != null) {
            str2 = str + o4.OooO00o.OooO0Oo;
        } else {
            str2 = "";
        }
        Oooo0O0(str2 + "expected not same");
    }

    public static void Oooo0o0(String str, Object obj, Object obj2) {
        String str2;
        if (str != null) {
            str2 = str + o4.OooO00o.OooO0Oo;
        } else {
            str2 = "";
        }
        Oooo0O0(str2 + "expected same:<" + obj + "> was not:<" + obj2 + ">");
    }

    public static String Oooo0oO(String str, Object obj, Object obj2) {
        String str2;
        if (str == null || str.length() <= 0) {
            str2 = "";
        } else {
            str2 = str + o4.OooO00o.OooO0Oo;
        }
        return str2 + "expected:<" + obj + "> but was:<" + obj2 + ">";
    }
}

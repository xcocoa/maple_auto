package z2;

import org.junit.ComparisonFailure;
import org.junit.internal.ArrayComparisonFailure;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class f50 {
    public static void OooO(String str, boolean[] zArr, boolean[] zArr2) throws ArrayComparisonFailure {
        o00O0O(str, zArr, zArr2);
    }

    public static void OooO00o(String str, byte[] bArr, byte[] bArr2) throws ArrayComparisonFailure {
        o00O0O(str, bArr, bArr2);
    }

    public static void OooO0O0(String str, char[] cArr, char[] cArr2) throws ArrayComparisonFailure {
        o00O0O(str, cArr, cArr2);
    }

    public static void OooO0OO(String str, double[] dArr, double[] dArr2, double d) throws ArrayComparisonFailure {
        new r60(d).OooO00o(str, dArr, dArr2);
    }

    public static void OooO0Oo(String str, float[] fArr, float[] fArr2, float f) throws ArrayComparisonFailure {
        new r60(f).OooO00o(str, fArr, fArr2);
    }

    public static void OooO0o(String str, long[] jArr, long[] jArr2) throws ArrayComparisonFailure {
        o00O0O(str, jArr, jArr2);
    }

    public static void OooO0o0(String str, int[] iArr, int[] iArr2) throws ArrayComparisonFailure {
        o00O0O(str, iArr, iArr2);
    }

    public static void OooO0oO(String str, Object[] objArr, Object[] objArr2) throws ArrayComparisonFailure {
        o00O0O(str, objArr, objArr2);
    }

    public static void OooO0oo(String str, short[] sArr, short[] sArr2) throws ArrayComparisonFailure {
        o00O0O(str, sArr, sArr2);
    }

    public static void OooOO0(byte[] bArr, byte[] bArr2) {
        OooO00o(null, bArr, bArr2);
    }

    public static void OooOO0O(char[] cArr, char[] cArr2) {
        OooO0O0(null, cArr, cArr2);
    }

    public static void OooOO0o(double[] dArr, double[] dArr2, double d) {
        OooO0OO(null, dArr, dArr2, d);
    }

    public static void OooOOO(int[] iArr, int[] iArr2) {
        OooO0o0(null, iArr, iArr2);
    }

    public static void OooOOO0(float[] fArr, float[] fArr2, float f) {
        OooO0Oo(null, fArr, fArr2, f);
    }

    public static void OooOOOO(long[] jArr, long[] jArr2) {
        OooO0o(null, jArr, jArr2);
    }

    public static void OooOOOo(Object[] objArr, Object[] objArr2) {
        OooO0oO(null, objArr, objArr2);
    }

    public static void OooOOo(boolean[] zArr, boolean[] zArr2) {
        OooO(null, zArr, zArr2);
    }

    public static void OooOOo0(short[] sArr, short[] sArr2) {
        OooO0oo(null, sArr, sArr2);
    }

    @Deprecated
    public static void OooOOoo(double d, double d2) {
        OooOo(null, d, d2);
    }

    @Deprecated
    public static void OooOo(String str, double d, double d2) {
        OooooO0("Use assertEquals(expected, actual, delta) to compare floating-point numbers");
    }

    public static void OooOo0(float f, float f2, float f3) {
        OooOoO(null, f, f2, f3);
    }

    public static void OooOo00(double d, double d2, double d3) {
        OooOoO0(null, d, d2, d3);
    }

    public static void OooOo0O(long j, long j2) {
        OooOoOO(null, j, j2);
    }

    public static void OooOo0o(Object obj, Object obj2) {
        OooOoo0(null, obj, obj2);
    }

    public static void OooOoO(String str, float f, float f2, float f3) {
        if (Ooooooo(f, f2, f3)) {
            OooooOo(str, Float.valueOf(f), Float.valueOf(f2));
        }
    }

    public static void OooOoO0(String str, double d, double d2, double d3) {
        if (OoooOoo(d, d2, d3)) {
            OooooOo(str, Double.valueOf(d), Double.valueOf(d2));
        }
    }

    public static void OooOoOO(String str, long j, long j2) {
        if (j != j2) {
            OooooOo(str, Long.valueOf(j), Long.valueOf(j2));
        }
    }

    @Deprecated
    public static void OooOoo(String str, Object[] objArr, Object[] objArr2) {
        OooO0oO(str, objArr, objArr2);
    }

    public static void OooOoo0(String str, Object obj, Object obj2) {
        if (Ooooo00(obj, obj2)) {
            return;
        }
        if (!(obj instanceof String) || !(obj2 instanceof String)) {
            OooooOo(str, obj, obj2);
        } else {
            if (str == null) {
                str = "";
            }
            throw new ComparisonFailure(str, (String) obj, (String) obj2);
        }
    }

    @Deprecated
    public static void OooOooO(Object[] objArr, Object[] objArr2) {
        OooOOOo(objArr, objArr2);
    }

    public static void OooOooo(String str, boolean z) {
        OoooOo0(str, !z);
    }

    public static void Oooo(String str, Object obj) {
        OoooOo0(str, obj != null);
    }

    public static void Oooo0(long j, long j2) {
        Oooo0o(null, j, j2);
    }

    public static void Oooo000(boolean z) {
        OooOooo(null, z);
    }

    public static void Oooo00O(double d, double d2, double d3) {
        Oooo0OO(null, d, d2, d3);
    }

    public static void Oooo00o(float f, float f2, float f3) {
        Oooo0o0(null, f, f2, f3);
    }

    public static void Oooo0O0(Object obj, Object obj2) {
        Oooo0oO(null, obj, obj2);
    }

    public static void Oooo0OO(String str, double d, double d2, double d3) {
        if (OoooOoo(d, d2, d3)) {
            return;
        }
        OooooOO(str, Double.valueOf(d2));
    }

    public static void Oooo0o(String str, long j, long j2) {
        if (j == j2) {
            OooooOO(str, Long.valueOf(j2));
        }
    }

    public static void Oooo0o0(String str, float f, float f2, float f3) {
        if (Ooooooo(f, f2, f3)) {
            return;
        }
        OooooOO(str, Float.valueOf(f2));
    }

    public static void Oooo0oO(String str, Object obj, Object obj2) {
        if (Ooooo00(obj, obj2)) {
            OooooOO(str, obj2);
        }
    }

    public static void Oooo0oo(Object obj) {
        Oooo(null, obj);
    }

    public static void OoooO(String str, Object obj) {
        if (obj == null) {
            return;
        }
        Oooooo0(str, obj);
    }

    public static void OoooO0(String str, Object obj, Object obj2) {
        if (obj == obj2) {
            OoooooO(str);
        }
    }

    public static void OoooO00(Object obj, Object obj2) {
        OoooO0(null, obj, obj2);
    }

    public static void OoooO0O(Object obj) {
        OoooO(null, obj);
    }

    public static void OoooOO0(Object obj, Object obj2) {
        o000oOoO(null, obj, obj2);
    }

    public static <T> void OoooOOO(T t, r20<? super T> r20Var) {
        OoooOOo("", t, r20Var);
    }

    public static <T> void OoooOOo(String str, T t, r20<? super T> r20Var) {
        s20.OooO0O0(str, t, r20Var);
    }

    public static void OoooOo0(String str, boolean z) {
        if (z) {
            return;
        }
        OooooO0(str);
    }

    public static void OoooOoO(boolean z) {
        OoooOo0(null, z);
    }

    private static boolean OoooOoo(double d, double d2, double d3) {
        return Double.compare(d, d2) != 0 && Math.abs(d - d2) > d3;
    }

    private static boolean Ooooo00(Object obj, Object obj2) {
        return obj == null ? obj2 == null : o00Oo0(obj, obj2);
    }

    public static void Ooooo0o() {
        OooooO0(null);
    }

    public static void OooooO0(String str) {
        if (str != null) {
            throw new AssertionError(str);
        }
        throw new AssertionError();
    }

    private static void OooooOO(String str, Object obj) {
        String str2;
        if (str != null) {
            str2 = str + ". ";
        } else {
            str2 = "Values should be different. ";
        }
        OooooO0(str2 + "Actual: " + obj);
    }

    private static void OooooOo(String str, Object obj, Object obj2) {
        OooooO0(o0OoOo0(str, obj, obj2));
    }

    private static void Oooooo(String str, Object obj, Object obj2) {
        String str2;
        if (str != null) {
            str2 = str + o4.OooO00o.OooO0Oo;
        } else {
            str2 = "";
        }
        OooooO0(str2 + "expected same:<" + obj + "> was not:<" + obj2 + ">");
    }

    private static void Oooooo0(String str, Object obj) {
        String str2;
        if (str != null) {
            str2 = str + o4.OooO00o.OooO0Oo;
        } else {
            str2 = "";
        }
        OooooO0(str2 + "expected null, but was:<" + obj + ">");
    }

    private static void OoooooO(String str) {
        String str2;
        if (str != null) {
            str2 = str + o4.OooO00o.OooO0Oo;
        } else {
            str2 = "";
        }
        OooooO0(str2 + "expected not same");
    }

    private static boolean Ooooooo(float f, float f2, float f3) {
        return Float.compare(f, f2) != 0 && Math.abs(f - f2) > f3;
    }

    public static void o000oOoO(String str, Object obj, Object obj2) {
        if (obj == obj2) {
            return;
        }
        Oooooo(str, obj, obj2);
    }

    private static void o00O0O(String str, Object obj, Object obj2) throws ArrayComparisonFailure {
        new q60().OooO00o(str, obj, obj2);
    }

    private static boolean o00Oo0(Object obj, Object obj2) {
        return obj.equals(obj2);
    }

    public static String o0OoOo0(String str, Object obj, Object obj2) {
        String str2 = "";
        if (str != null && !str.equals("")) {
            str2 = str + o4.OooO00o.OooO0Oo;
        }
        String strValueOf = String.valueOf(obj);
        String strValueOf2 = String.valueOf(obj2);
        if (strValueOf.equals(strValueOf2)) {
            return str2 + "expected: " + ooOO(obj, strValueOf) + " but was: " + ooOO(obj2, strValueOf2);
        }
        return str2 + "expected:<" + strValueOf + "> but was:<" + strValueOf2 + ">";
    }

    private static String ooOO(Object obj, String str) {
        return (obj == null ? "null" : obj.getClass().getName()) + "<" + str + ">";
    }
}

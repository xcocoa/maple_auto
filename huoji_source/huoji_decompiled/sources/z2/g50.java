package z2;

import java.util.Arrays;
import org.junit.AssumptionViolatedException;

/* JADX INFO: loaded from: classes2.dex */
public class g50 {
    public static void OooO(boolean z) {
        OooO0o(Boolean.valueOf(z), k20.OooOooo(Boolean.TRUE));
    }

    public static void OooO00o(String str, boolean z) {
        OooO0oo(str, !z);
    }

    public static void OooO0O0(boolean z) {
        OooO(!z);
    }

    public static void OooO0OO(String str, Throwable th) {
        OooO0oO(str, th, k20.Oooo0o0());
    }

    public static void OooO0Oo(Throwable th) {
        OooO0o(th, k20.Oooo0o0());
    }

    public static <T> void OooO0o(T t, r20<T> r20Var) {
        if (!r20Var.OooO0O0(t)) {
            throw new AssumptionViolatedException(t, r20Var);
        }
    }

    public static void OooO0o0(Object... objArr) {
        OooO0o(Arrays.asList(objArr), k20.OooOo(k20.Oooo0O0()));
    }

    public static <T> void OooO0oO(String str, T t, r20<T> r20Var) {
        if (!r20Var.OooO0O0(t)) {
            throw new AssumptionViolatedException(str, t, r20Var);
        }
    }

    public static void OooO0oo(String str, boolean z) {
        if (!z) {
            throw new AssumptionViolatedException(str);
        }
    }
}

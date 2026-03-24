package z2;

/* JADX INFO: loaded from: classes2.dex */
public class s20 {
    public static <T> void OooO00o(T t, r20<? super T> r20Var) {
        OooO0O0("", t, r20Var);
    }

    public static <T> void OooO0O0(String str, T t, r20<? super T> r20Var) {
        if (r20Var.OooO0O0(t)) {
            return;
        }
        u20 u20Var = new u20();
        u20Var.OooO0Oo(str).OooO0Oo("\nExpected: ").OooO0O0(r20Var).OooO0Oo("\n     but: ");
        r20Var.OooO00o(t, u20Var);
        throw new AssertionError(u20Var.toString());
    }

    public static void OooO0OO(String str, boolean z) {
        if (!z) {
            throw new AssertionError(str);
        }
    }
}

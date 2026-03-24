package z2;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class f30<T> extends i20<T> {
    private final Object OoooOoO;

    public f30(T t) {
        this.OoooOoO = t;
    }

    private static boolean OooO(Object obj) {
        return obj.getClass().isArray();
    }

    private static boolean OooO0Oo(Object obj, Object obj2) {
        for (int i = 0; i < Array.getLength(obj); i++) {
            if (!OooO0oO(Array.get(obj, i), Array.get(obj2, i))) {
                return false;
            }
        }
        return true;
    }

    private static boolean OooO0o(Object obj, Object obj2) {
        return OooO0o0(obj, obj2) && OooO0Oo(obj, obj2);
    }

    private static boolean OooO0o0(Object obj, Object obj2) {
        return Array.getLength(obj) == Array.getLength(obj2);
    }

    private static boolean OooO0oO(Object obj, Object obj2) {
        return obj == null ? obj2 == null : (obj2 == null || !OooO(obj)) ? obj.equals(obj2) : OooO(obj2) && OooO0o(obj, obj2);
    }

    @p20
    public static <T> r20<T> OooO0oo(T t) {
        return new f30(t);
    }

    @Override // z2.r20
    public boolean OooO0O0(Object obj) {
        return OooO0oO(obj, this.OoooOoO);
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0o0(this.OoooOoO);
    }
}

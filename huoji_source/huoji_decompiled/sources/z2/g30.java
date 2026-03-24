package z2;

/* JADX INFO: loaded from: classes2.dex */
public class g30 extends o20<Object> {
    private final Class<?> OoooOoO;
    private final Class<?> OoooOoo;

    public g30(Class<?> cls) {
        this.OoooOoO = cls;
        this.OoooOoo = OooO0oO(cls);
    }

    @p20
    public static <T> r20<T> OooO0o(Class<?> cls) {
        return new g30(cls);
    }

    @p20
    public static <T> r20<T> OooO0o0(Class<T> cls) {
        return new g30(cls);
    }

    private static Class<?> OooO0oO(Class<?> cls) {
        return Boolean.TYPE.equals(cls) ? Boolean.class : Byte.TYPE.equals(cls) ? Byte.class : Character.TYPE.equals(cls) ? Character.class : Double.TYPE.equals(cls) ? Double.class : Float.TYPE.equals(cls) ? Float.class : Integer.TYPE.equals(cls) ? Integer.class : Long.TYPE.equals(cls) ? Long.class : Short.TYPE.equals(cls) ? Short.class : cls;
    }

    @Override // z2.o20
    public boolean OooO0Oo(Object obj, n20 n20Var) {
        String str;
        if (obj == null) {
            str = "null";
        } else {
            if (this.OoooOoo.isInstance(obj)) {
                return true;
            }
            n20Var = n20Var.OooO0o0(obj);
            str = " is a " + obj.getClass().getName();
        }
        n20Var.OooO0Oo(str);
        return false;
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0Oo("an instance of ").OooO0Oo(this.OoooOoO.getName());
    }
}

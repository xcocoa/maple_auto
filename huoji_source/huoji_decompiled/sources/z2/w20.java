package z2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w20<T> extends i20<T> {
    private static final q30 OoooOoo = new q30("matchesSafely", 1, 0);
    private final Class<?> OoooOoO;

    public w20() {
        this(OoooOoo);
    }

    public w20(Class<?> cls) {
        this.OoooOoO = cls;
    }

    public w20(q30 q30Var) {
        this.OoooOoO = q30Var.OooO0OO(getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // z2.i20, z2.r20
    public final void OooO00o(Object obj, n20 n20Var) {
        if (obj == 0) {
            super.OooO00o(obj, n20Var);
        } else if (this.OoooOoO.isInstance(obj)) {
            OooO0Oo(obj, n20Var);
        } else {
            n20Var.OooO0Oo("was a ").OooO0Oo(obj.getClass().getName()).OooO0Oo(" (").OooO0o0(obj).OooO0Oo(")");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // z2.r20
    public final boolean OooO0O0(Object obj) {
        return obj != 0 && this.OoooOoO.isInstance(obj) && OooO0o0(obj);
    }

    public void OooO0Oo(T t, n20 n20Var) {
        super.OooO00o(t, n20Var);
    }

    public abstract boolean OooO0o0(T t);
}

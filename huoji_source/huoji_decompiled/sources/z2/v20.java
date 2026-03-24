package z2;

import z2.n20;

/* JADX INFO: loaded from: classes2.dex */
public abstract class v20<T> extends i20<T> {
    private static final q30 OoooOoo = new q30("matchesSafely", 2, 0);
    private final Class<?> OoooOoO;

    public v20() {
        this(OoooOoo);
    }

    public v20(Class<?> cls) {
        this.OoooOoO = cls;
    }

    public v20(q30 q30Var) {
        this.OoooOoO = q30Var.OooO0OO(getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // z2.i20, z2.r20
    public final void OooO00o(Object obj, n20 n20Var) {
        if (obj == 0 || !this.OoooOoO.isInstance(obj)) {
            super.OooO00o(obj, n20Var);
        } else {
            OooO0Oo(obj, n20Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // z2.r20
    public final boolean OooO0O0(Object obj) {
        return obj != 0 && this.OoooOoO.isInstance(obj) && OooO0Oo(obj, new n20.OooO00o());
    }

    public abstract boolean OooO0Oo(T t, n20 n20Var);
}

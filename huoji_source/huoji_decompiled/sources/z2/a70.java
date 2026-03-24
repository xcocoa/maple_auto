package z2;

import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public class a70 extends b90 {
    private final Class<?> OooO00o;

    public a70(Class<?> cls) {
        this.OooO00o = cls;
    }

    @Override // z2.b90
    public void OooO00o(h90 h90Var) {
        h90Var.OooO(getDescription());
    }

    @Override // z2.b90, z2.w80
    public Description getDescription() {
        return Description.createSuiteDescription(this.OooO00o);
    }
}

package z2;

import java.util.Iterator;
import java.util.List;
import junit.framework.JUnit4TestAdapterCache;
import org.junit.runner.Description;
import org.junit.runner.manipulation.NoTestsRemainException;

/* JADX INFO: loaded from: classes2.dex */
public class dw implements gw, d90, e90, w80 {
    private final Class<?> OooO00o;
    private final b90 OooO0O0;
    private final JUnit4TestAdapterCache OooO0OO;

    public dw(Class<?> cls) {
        this(cls, JUnit4TestAdapterCache.getDefault());
    }

    public dw(Class<?> cls, JUnit4TestAdapterCache jUnit4TestAdapterCache) {
        this.OooO0OO = jUnit4TestAdapterCache;
        this.OooO00o = cls;
        this.OooO0O0 = z80.OooO0O0(cls).OooO0oo();
    }

    private boolean OooO0oO(Description description) {
        return description.getAnnotation(l50.class) != null;
    }

    private Description OooO0oo(Description description) {
        if (OooO0oO(description)) {
            return Description.EMPTY;
        }
        Description descriptionChildlessCopy = description.childlessCopy();
        Iterator<Description> it = description.getChildren().iterator();
        while (it.hasNext()) {
            Description descriptionOooO0oo = OooO0oo(it.next());
            if (!descriptionOooO0oo.isEmpty()) {
                descriptionChildlessCopy.addChild(descriptionOooO0oo);
            }
        }
        return descriptionChildlessCopy;
    }

    @Override // z2.gw
    public int OooO00o() {
        return this.OooO0O0.OooO0O0();
    }

    @Override // z2.gw
    public void OooO0O0(kw kwVar) {
        this.OooO0O0.OooO00o(this.OooO0OO.getNotifier(kwVar, this));
    }

    @Override // z2.d90
    public void OooO0OO(c90 c90Var) throws NoTestsRemainException {
        c90Var.OooO00o(this.OooO0O0);
    }

    @Override // z2.e90
    public void OooO0Oo(f90 f90Var) {
        f90Var.OooO00o(this.OooO0O0);
    }

    public List<gw> OooO0o() {
        return this.OooO0OO.asTestList(getDescription());
    }

    public Class<?> OooO0o0() {
        return this.OooO00o;
    }

    @Override // z2.w80
    public Description getDescription() {
        return OooO0oo(this.OooO0O0.getDescription());
    }

    public String toString() {
        return this.OooO00o.getName();
    }
}

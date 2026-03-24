package z2;

import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public class ew implements gw, w80 {
    private final Description OooO00o;

    public ew(Description description) {
        this.OooO00o = description;
    }

    @Override // z2.gw
    public int OooO00o() {
        return 1;
    }

    @Override // z2.gw
    public void OooO0O0(kw kwVar) {
        throw new RuntimeException("This test stub created only for informational purposes.");
    }

    @Override // z2.w80
    public Description getDescription() {
        return this.OooO00o;
    }

    public String toString() {
        return getDescription().toString();
    }
}

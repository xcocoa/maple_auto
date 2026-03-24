package z2;

import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.junit.runner.Description;
import org.junit.runner.notification.Failure;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public class n70 extends b90 {
    private final List<Throwable> OooO00o;
    private final Class<?> OooO0O0;

    public n70(Class<?> cls, Throwable th) {
        Objects.requireNonNull(cls, "Test class cannot be null");
        this.OooO0O0 = cls;
        this.OooO00o = OooO0o(th);
    }

    private List<Throwable> OooO0o(Throwable th) {
        return th instanceof InvocationTargetException ? OooO0o(th.getCause()) : th instanceof InitializationError ? ((InitializationError) th).getCauses() : th instanceof org.junit.internal.runners.InitializationError ? ((org.junit.internal.runners.InitializationError) th).getCauses() : Arrays.asList(th);
    }

    private Description OooO0o0(Throwable th) {
        return Description.createTestDescription(this.OooO0O0, "initializationError");
    }

    private void OooO0oO(Throwable th, h90 h90Var) {
        Description descriptionOooO0o0 = OooO0o0(th);
        h90Var.OooOO0o(descriptionOooO0o0);
        h90Var.OooO0o(new Failure(descriptionOooO0o0, th));
        h90Var.OooO0oo(descriptionOooO0o0);
    }

    @Override // z2.b90
    public void OooO00o(h90 h90Var) {
        Iterator<Throwable> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            OooO0oO(it.next(), h90Var);
        }
    }

    @Override // z2.b90, z2.w80
    public Description getDescription() {
        Description descriptionCreateSuiteDescription = Description.createSuiteDescription(this.OooO0O0);
        Iterator<Throwable> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            descriptionCreateSuiteDescription.addChild(OooO0o0(it.next()));
        }
        return descriptionCreateSuiteDescription;
    }
}

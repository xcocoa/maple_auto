package z2;

import java.util.Iterator;
import org.junit.internal.AssumptionViolatedException;
import org.junit.runner.Description;
import org.junit.runner.notification.Failure;
import org.junit.runners.model.MultipleFailureException;

/* JADX INFO: loaded from: classes2.dex */
public class v70 {
    private final h90 OooO00o;
    private final Description OooO0O0;

    public v70(h90 h90Var, Description description) {
        this.OooO00o = h90Var;
        this.OooO0O0 = description;
    }

    private void OooO0OO(MultipleFailureException multipleFailureException) {
        Iterator<Throwable> it = multipleFailureException.getFailures().iterator();
        while (it.hasNext()) {
            OooO0O0(it.next());
        }
    }

    public void OooO00o(AssumptionViolatedException assumptionViolatedException) {
        this.OooO00o.OooO0o0(new Failure(this.OooO0O0, assumptionViolatedException));
    }

    public void OooO0O0(Throwable th) {
        if (th instanceof MultipleFailureException) {
            OooO0OO((MultipleFailureException) th);
        } else {
            this.OooO00o.OooO0o(new Failure(this.OooO0O0, th));
        }
    }

    public void OooO0Oo() {
        this.OooO00o.OooO0oo(this.OooO0O0);
    }

    public void OooO0o() {
        this.OooO00o.OooOO0o(this.OooO0O0);
    }

    public void OooO0o0() {
        this.OooO00o.OooO(this.OooO0O0);
    }
}

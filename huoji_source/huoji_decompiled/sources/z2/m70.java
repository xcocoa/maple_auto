package z2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import org.junit.internal.AssumptionViolatedException;
import org.junit.internal.runners.FailedBefore;
import org.junit.runner.Description;
import org.junit.runner.notification.Failure;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class m70 {
    private h90 OooO00o;
    private t70 OooO0O0;
    private Description OooO0OO;
    private final Runnable OooO0Oo;

    public m70(h90 h90Var, t70 t70Var, Description description, Runnable runnable) {
        this.OooO00o = h90Var;
        this.OooO0O0 = t70Var;
        this.OooO0OO = description;
        this.OooO0Oo = runnable;
    }

    private void OooO0O0() {
        Iterator<Method> it = this.OooO0O0.OooO00o().iterator();
        while (it.hasNext()) {
            try {
                it.next().invoke(null, new Object[0]);
            } catch (InvocationTargetException e) {
                th = e.getTargetException();
                OooO00o(th);
            } catch (Throwable th) {
                th = th;
                OooO00o(th);
            }
        }
    }

    private void OooO0OO() throws FailedBefore {
        try {
            try {
                Iterator<Method> it = this.OooO0O0.OooO0OO().iterator();
                while (it.hasNext()) {
                    it.next().invoke(null, new Object[0]);
                }
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            }
        } catch (AssumptionViolatedException unused) {
            throw new FailedBefore();
        } catch (Throwable th) {
            OooO00o(th);
            throw new FailedBefore();
        }
    }

    public void OooO00o(Throwable th) {
        this.OooO00o.OooO0o(new Failure(this.OooO0OO, th));
    }

    public void OooO0Oo() {
        try {
            OooO0OO();
            OooO0o0();
        } catch (FailedBefore unused) {
        } catch (Throwable th) {
            OooO0O0();
            throw th;
        }
        OooO0O0();
    }

    public void OooO0o0() {
        this.OooO0Oo.run();
    }
}

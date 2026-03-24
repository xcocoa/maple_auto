package z2;

import org.junit.runner.Description;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;
import z2.g90;

/* JADX INFO: loaded from: classes2.dex */
@g90.OooO00o
public final class i90 extends g90 {
    private final g90 OooO00o;
    private final Object OooO0O0;

    public i90(g90 g90Var, Object obj) {
        this.OooO00o = g90Var;
        this.OooO0O0 = obj;
    }

    @Override // z2.g90
    public void OooO00o(Failure failure) {
        synchronized (this.OooO0O0) {
            this.OooO00o.OooO00o(failure);
        }
    }

    @Override // z2.g90
    public void OooO0O0(Failure failure) throws Exception {
        synchronized (this.OooO0O0) {
            this.OooO00o.OooO0O0(failure);
        }
    }

    @Override // z2.g90
    public void OooO0OO(Description description) throws Exception {
        synchronized (this.OooO0O0) {
            this.OooO00o.OooO0OO(description);
        }
    }

    @Override // z2.g90
    public void OooO0Oo(Description description) throws Exception {
        synchronized (this.OooO0O0) {
            this.OooO00o.OooO0Oo(description);
        }
    }

    @Override // z2.g90
    public void OooO0o(Description description) throws Exception {
        synchronized (this.OooO0O0) {
            this.OooO00o.OooO0o(description);
        }
    }

    @Override // z2.g90
    public void OooO0o0(Result result) throws Exception {
        synchronized (this.OooO0O0) {
            this.OooO00o.OooO0o0(result);
        }
    }

    @Override // z2.g90
    public void OooO0oO(Description description) throws Exception {
        synchronized (this.OooO0O0) {
            this.OooO00o.OooO0oO(description);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i90) {
            return this.OooO00o.equals(((i90) obj).OooO00o);
        }
        return false;
    }

    public int hashCode() {
        return this.OooO00o.hashCode();
    }

    public String toString() {
        return this.OooO00o.toString() + " (with synchronization wrapper)";
    }
}

package org.junit.internal;

import z2.n20;
import z2.r20;
import z2.t20;
import z2.u20;

/* JADX INFO: loaded from: classes2.dex */
public class AssumptionViolatedException extends RuntimeException implements t20 {
    private static final long serialVersionUID = 2;
    private final String fAssumption;
    private final r20<?> fMatcher;
    private final Object fValue;
    private final boolean fValueMatcher;

    @Deprecated
    public AssumptionViolatedException(Object obj, r20<?> r20Var) {
        this(null, true, obj, r20Var);
    }

    @Deprecated
    public AssumptionViolatedException(String str) {
        this(str, false, null, null);
    }

    @Deprecated
    public AssumptionViolatedException(String str, Object obj, r20<?> r20Var) {
        this(str, true, obj, r20Var);
    }

    @Deprecated
    public AssumptionViolatedException(String str, Throwable th) {
        this(str, false, null, null);
        initCause(th);
    }

    @Deprecated
    public AssumptionViolatedException(String str, boolean z, Object obj, r20<?> r20Var) {
        this.fAssumption = str;
        this.fValue = obj;
        this.fMatcher = r20Var;
        this.fValueMatcher = z;
        if (obj instanceof Throwable) {
            initCause((Throwable) obj);
        }
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        String str = this.fAssumption;
        if (str != null) {
            n20Var.OooO0Oo(str);
        }
        if (this.fValueMatcher) {
            if (this.fAssumption != null) {
                n20Var.OooO0Oo(": ");
            }
            n20Var.OooO0Oo("got: ");
            n20Var.OooO0o0(this.fValue);
            if (this.fMatcher != null) {
                n20Var.OooO0Oo(", expected: ");
                n20Var.OooO0O0(this.fMatcher);
            }
        }
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return u20.OooOOO(this);
    }
}

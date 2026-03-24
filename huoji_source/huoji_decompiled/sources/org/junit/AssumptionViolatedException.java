package org.junit;

import z2.r20;

/* JADX INFO: loaded from: classes2.dex */
public class AssumptionViolatedException extends org.junit.internal.AssumptionViolatedException {
    private static final long serialVersionUID = 1;

    public <T> AssumptionViolatedException(T t, r20<T> r20Var) {
        super((Object) t, (r20<?>) r20Var);
    }

    public AssumptionViolatedException(String str) {
        super(str);
    }

    public <T> AssumptionViolatedException(String str, T t, r20<T> r20Var) {
        super(str, t, r20Var);
    }

    public AssumptionViolatedException(String str, Throwable th) {
        super(str, th);
    }
}

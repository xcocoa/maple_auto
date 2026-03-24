package org.junit.internal.runners.rules;

import java.lang.annotation.Annotation;
import z2.r90;

/* JADX INFO: loaded from: classes2.dex */
public class ValidationError extends Exception {
    public ValidationError(r90<?> r90Var, Class<? extends Annotation> cls, String str) {
        super(String.format("The @%s '%s' %s", cls.getSimpleName(), r90Var.OooO0o0(), str));
    }
}

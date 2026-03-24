package org.junit.runners;

import java.lang.reflect.Method;
import java.util.Comparator;
import z2.t60;

/* JADX INFO: loaded from: classes2.dex */
public enum MethodSorters {
    NAME_ASCENDING(t60.OooO0O0),
    JVM(null),
    DEFAULT(t60.OooO00o);

    private final Comparator<Method> comparator;

    MethodSorters(Comparator comparator) {
        this.comparator = comparator;
    }

    public Comparator<Method> getComparator() {
        return this.comparator;
    }
}

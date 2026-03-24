package org.junit.runner;

import z2.c90;
import z2.y80;

/* JADX INFO: loaded from: classes2.dex */
public interface FilterFactory {

    public static class FilterNotCreatedException extends Exception {
        public FilterNotCreatedException(Exception exc) {
            super(exc.getMessage(), exc);
        }
    }

    c90 OooO00o(y80 y80Var) throws FilterNotCreatedException;
}

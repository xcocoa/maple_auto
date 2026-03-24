package org.slf4j.helpers;

/* JADX INFO: loaded from: classes2.dex */
public class Util {
    public static final void report(String str) {
        System.err.println("SLF4J: " + str);
    }

    public static final void report(String str, Throwable th) {
        System.err.println(str);
        System.err.println("Reported exception:");
        th.printStackTrace();
    }
}

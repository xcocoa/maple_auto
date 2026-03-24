package com.sun.activation.registries;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class LogSupport {
    private static boolean debug;
    private static final Level level = Level.FINE;
    private static Logger logger;

    static {
        try {
            debug = Boolean.getBoolean("javax.activation.debug");
        } catch (Throwable unused) {
        }
        logger = Logger.getLogger("javax.activation");
    }

    private LogSupport() {
    }

    public static boolean isLoggable() {
        return debug || logger.isLoggable(level);
    }

    public static void log(String str) {
        if (debug) {
            System.out.println(str);
        }
        logger.log(level, str);
    }

    public static void log(String str, Throwable th) {
        if (debug) {
            System.out.println(str + "; Exception: " + th);
        }
        logger.log(level, str, th);
    }
}

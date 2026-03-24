package com.sun.mail.util;

import java.io.PrintStream;
import java.text.MessageFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Session;

/* JADX INFO: loaded from: classes2.dex */
public final class MailLogger {
    private final boolean debug;
    private final Logger logger;
    private final PrintStream out;
    private final String prefix;

    public MailLogger(Class<?> cls, String str, String str2, boolean z, PrintStream printStream) {
        this.logger = Logger.getLogger(packageOf(cls) + "." + str);
        this.prefix = str2;
        this.debug = z;
        this.out = printStream == null ? System.out : printStream;
    }

    @Deprecated
    public MailLogger(Class<?> cls, String str, Session session) {
        this(cls, str, session.getDebug(), session.getDebugOut());
    }

    public MailLogger(Class<?> cls, String str, boolean z, PrintStream printStream) {
        this.logger = Logger.getLogger(packageOf(cls));
        this.prefix = str;
        this.debug = z;
        this.out = printStream == null ? System.out : printStream;
    }

    @Deprecated
    public MailLogger(String str, String str2, Session session) {
        this(str, str2, session.getDebug(), session.getDebugOut());
    }

    public MailLogger(String str, String str2, boolean z, PrintStream printStream) {
        this.logger = Logger.getLogger(str);
        this.prefix = str2;
        this.debug = z;
        this.out = printStream == null ? System.out : printStream;
    }

    private void debugOut(String str) {
        PrintStream printStream;
        if (this.prefix != null) {
            printStream = this.out;
            str = this.prefix + ": " + str;
        } else {
            printStream = this.out;
        }
        printStream.println(str);
    }

    private void ifDebugOut(String str) {
        if (this.debug) {
            debugOut(str);
        }
    }

    private StackTraceElement inferCaller() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int i = 0;
        while (i < stackTrace.length && !isLoggerImplFrame(stackTrace[i].getClassName())) {
            i++;
        }
        while (i < stackTrace.length) {
            StackTraceElement stackTraceElement = stackTrace[i];
            if (!isLoggerImplFrame(stackTraceElement.getClassName())) {
                return stackTraceElement;
            }
            i++;
        }
        return new StackTraceElement(MailLogger.class.getName(), "log", MailLogger.class.getName(), -1);
    }

    private boolean isLoggerImplFrame(String str) {
        return MailLogger.class.getName().equals(str);
    }

    private String packageOf(Class<?> cls) {
        Package r0 = cls.getPackage();
        if (r0 != null) {
            return r0.getName();
        }
        String name = cls.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf > 0 ? name.substring(0, iLastIndexOf) : "";
    }

    public final void config(String str) {
        log(Level.CONFIG, str);
    }

    public final void fine(String str) {
        log(Level.FINE, str);
    }

    public final void finer(String str) {
        log(Level.FINER, str);
    }

    public final void finest(String str) {
        log(Level.FINEST, str);
    }

    public final MailLogger getLogger(Class<?> cls, String str) {
        return new MailLogger(cls, str, this.debug, this.out);
    }

    public final MailLogger getLogger(String str, String str2) {
        return new MailLogger(str, str2, this.debug, this.out);
    }

    public final MailLogger getSubLogger(String str, String str2) {
        return new MailLogger(this.logger.getName() + "." + str, str2, this.debug, this.out);
    }

    public final MailLogger getSubLogger(String str, String str2, boolean z) {
        return new MailLogger(this.logger.getName() + "." + str, str2, z, this.out);
    }

    public final boolean isLoggable(Level level) {
        return this.debug || this.logger.isLoggable(level);
    }

    public final void log(Level level, String str) {
        ifDebugOut(str);
        if (this.logger.isLoggable(level)) {
            StackTraceElement stackTraceElementInferCaller = inferCaller();
            this.logger.logp(level, stackTraceElementInferCaller.getClassName(), stackTraceElementInferCaller.getMethodName(), str);
        }
    }

    public final void log(Level level, String str, Object obj) {
        if (this.debug) {
            str = MessageFormat.format(str, obj);
            debugOut(str);
        }
        String str2 = str;
        if (this.logger.isLoggable(level)) {
            StackTraceElement stackTraceElementInferCaller = inferCaller();
            this.logger.logp(level, stackTraceElementInferCaller.getClassName(), stackTraceElementInferCaller.getMethodName(), str2, obj);
        }
    }

    public final void log(Level level, String str, Throwable th) {
        if (this.debug) {
            if (th != null) {
                debugOut(str + ", THROW: ");
                th.printStackTrace(this.out);
            } else {
                debugOut(str);
            }
        }
        if (this.logger.isLoggable(level)) {
            StackTraceElement stackTraceElementInferCaller = inferCaller();
            this.logger.logp(level, stackTraceElementInferCaller.getClassName(), stackTraceElementInferCaller.getMethodName(), str, th);
        }
    }

    public final void log(Level level, String str, Object... objArr) {
        if (this.debug) {
            str = MessageFormat.format(str, objArr);
            debugOut(str);
        }
        String str2 = str;
        if (this.logger.isLoggable(level)) {
            StackTraceElement stackTraceElementInferCaller = inferCaller();
            this.logger.logp(level, stackTraceElementInferCaller.getClassName(), stackTraceElementInferCaller.getMethodName(), str2, objArr);
        }
    }

    public final void logf(Level level, String str, Object... objArr) {
        String str2 = String.format(str, objArr);
        ifDebugOut(str2);
        this.logger.log(level, str2);
    }
}

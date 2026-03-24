package com.sun.mail.util.logging;

import java.io.Serializable;
import java.util.Comparator;
import java.util.logging.Level;
import java.util.logging.LogRecord;

/* JADX INFO: loaded from: classes2.dex */
public class SeverityComparator implements Serializable, Comparator<LogRecord> {
    private static final Comparator<LogRecord> INSTANCE = new SeverityComparator();
    private static final long serialVersionUID = -2620442245251791965L;

    private int compare(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    private int compare(Level level, Level level2) {
        if (level == level2) {
            return 0;
        }
        return compare(level.intValue(), level2.intValue());
    }

    public static SeverityComparator getInstance() {
        return (SeverityComparator) INSTANCE;
    }

    private static String toString(Object obj, Object obj2) {
        return obj + ", " + obj2;
    }

    public Throwable apply(Throwable th) {
        Throwable th2 = null;
        Throwable th3 = null;
        int i = 0;
        Throwable th4 = th;
        while (true) {
            if (th == null) {
                th = th4;
                break;
            }
            if (isNormal(th)) {
                th2 = th;
            }
            if (th2 == null && (th instanceof Error)) {
                th3 = th;
            }
            i++;
            if (i == 65536) {
                break;
            }
            th4 = th;
            th = th.getCause();
        }
        return th3 != null ? th3 : th2 != null ? th2 : th;
    }

    public final int applyThenCompare(Throwable th, Throwable th2) {
        if (th == th2) {
            return 0;
        }
        return compareThrowable(apply(th), apply(th2));
    }

    @Override // java.util.Comparator
    public int compare(LogRecord logRecord, LogRecord logRecord2) {
        if (logRecord == null || logRecord2 == null) {
            throw new NullPointerException(toString(logRecord, logRecord2));
        }
        if (logRecord == logRecord2) {
            return 0;
        }
        int iCompare = compare(logRecord.getLevel(), logRecord2.getLevel());
        if (iCompare != 0) {
            return iCompare;
        }
        int iApplyThenCompare = applyThenCompare(logRecord.getThrown(), logRecord2.getThrown());
        if (iApplyThenCompare != 0) {
            return iApplyThenCompare;
        }
        int iCompare2 = compare(logRecord.getSequenceNumber(), logRecord2.getSequenceNumber());
        return iCompare2 == 0 ? compare(logRecord.getMillis(), logRecord2.getMillis()) : iCompare2;
    }

    public int compareThrowable(Throwable th, Throwable th2) {
        if (th == th2) {
            return 0;
        }
        if (th == null) {
            return isNormal(th2) ? 1 : -1;
        }
        if (th2 == null) {
            return isNormal(th) ? -1 : 1;
        }
        if (th.getClass() == th2.getClass()) {
            return 0;
        }
        if (isNormal(th)) {
            return isNormal(th2) ? 0 : -1;
        }
        if (isNormal(th2)) {
            return 1;
        }
        if (th instanceof Error) {
            return th2 instanceof Error ? 0 : 1;
        }
        if (!(th instanceof RuntimeException)) {
            return ((th2 instanceof Error) || (th2 instanceof RuntimeException)) ? -1 : 0;
        }
        if (th2 instanceof Error) {
            return -1;
        }
        return th2 instanceof RuntimeException ? 0 : 1;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        return obj != null && obj.getClass() == getClass();
    }

    public int hashCode() {
        return getClass().hashCode() * 31;
    }

    public boolean isNormal(Throwable th) {
        if (th == null) {
            return false;
        }
        for (Class<?> superclass = th.getClass(); superclass != Throwable.class; superclass = superclass.getSuperclass()) {
            if (Error.class.isAssignableFrom(superclass)) {
                if (superclass.getName().equals("java.lang.ThreadDeath")) {
                    return true;
                }
            } else if (superclass.getName().contains("Interrupt")) {
                return true;
            }
        }
        return false;
    }
}

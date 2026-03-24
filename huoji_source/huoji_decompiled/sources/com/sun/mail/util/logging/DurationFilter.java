package com.sun.mail.util.logging;

import java.util.logging.Filter;
import java.util.logging.LogRecord;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class DurationFilter implements Filter {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private long count;
    private final long duration;
    private long peak;
    private final long records;
    private long start;

    public DurationFilter() {
        this.records = checkRecords(initLong(".records"));
        this.duration = checkDuration(initLong(".duration"));
    }

    public DurationFilter(long j, long j2) {
        this.records = checkRecords(j);
        this.duration = checkDuration(j2);
    }

    private synchronized boolean accept(long j) {
        boolean z;
        long j2 = this.count;
        z = true;
        if (j2 > 0) {
            if (j - this.peak > 0) {
                this.peak = j;
            }
            if (j2 != this.records) {
                this.count = j2 + 1;
            } else {
                long j3 = this.peak;
                long j4 = j3 - this.start;
                long j5 = this.duration;
                if (j4 >= j5) {
                    this.count = 1L;
                    this.start = j3;
                } else {
                    this.count = -1L;
                    this.start = j3 + j5;
                    z = false;
                }
            }
        } else if (j - this.start >= 0 || j2 == 0) {
            this.count = 1L;
            this.start = j;
            this.peak = j;
        } else {
            z = false;
        }
        return z;
    }

    private static long checkDuration(long j) {
        if (j > 0) {
            return j;
        }
        return 900000L;
    }

    private static long checkRecords(long j) {
        if (j > 0) {
            return j;
        }
        return 1000L;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private long initLong(String str) {
        long durationToMillis;
        String strFromLogManager = LogManagerProperties.fromLogManager(getClass().getName().concat(str));
        if (strFromLogManager != null && strFromLogManager.length() != 0) {
            String strTrim = strFromLogManager.trim();
            if (isTimeEntry(str, strTrim)) {
                try {
                    durationToMillis = LogManagerProperties.parseDurationToMillis(strTrim);
                } catch (RuntimeException | Exception | LinkageError unused) {
                    durationToMillis = 0;
                }
                if (durationToMillis == 0) {
                    return durationToMillis;
                }
                long jMultiplyExact = 1;
                try {
                    for (String strSubstring : tokenizeLongs(strTrim)) {
                        if (strSubstring.endsWith("L") || strSubstring.endsWith("l")) {
                            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                        }
                        jMultiplyExact = multiplyExact(jMultiplyExact, Long.parseLong(strSubstring));
                    }
                    return jMultiplyExact;
                } catch (RuntimeException unused2) {
                }
            } else {
                durationToMillis = 0;
                if (durationToMillis == 0) {
                }
            }
        }
        return Long.MIN_VALUE;
    }

    private boolean isTimeEntry(String str, String str2) {
        return (str2.charAt(0) == 'P' || str2.charAt(0) == 'p') && str.equals(".duration");
    }

    private static long multiplyExact(long j, long j2) {
        long j3 = j * j2;
        if (((Math.abs(j) | Math.abs(j2)) >>> 31) == 0 || ((j2 == 0 || j3 / j2 == j) && !(j == Long.MIN_VALUE && j2 == -1))) {
            return j3;
        }
        throw new ArithmeticException();
    }

    private boolean test(long j, long j2) {
        long j3;
        long j4;
        synchronized (this) {
            j3 = this.count;
            j4 = this.start;
        }
        long j5 = j2 - j4;
        return j3 > 0 ? j5 >= this.duration || j3 < j : j5 >= 0 || j3 == 0;
    }

    private static String[] tokenizeLongs(String str) {
        int iIndexOf = str.indexOf(42);
        if (iIndexOf >= 0) {
            String[] strArrSplit = str.split("\\s*\\*\\s*");
            if (strArrSplit.length != 0) {
                if (iIndexOf == 0 || str.charAt(str.length() - 1) == '*') {
                    throw new NumberFormatException(str);
                }
                if (strArrSplit.length != 1) {
                    return strArrSplit;
                }
                throw new NumberFormatException(strArrSplit[0]);
            }
        }
        return new String[]{str};
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public DurationFilter m13clone() throws CloneNotSupportedException {
        DurationFilter durationFilter = (DurationFilter) super.clone();
        durationFilter.count = 0L;
        durationFilter.peak = 0L;
        durationFilter.start = 0L;
        return durationFilter;
    }

    public boolean equals(Object obj) {
        long j;
        long j2;
        long j3;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DurationFilter durationFilter = (DurationFilter) obj;
        if (this.records != durationFilter.records || this.duration != durationFilter.duration) {
            return false;
        }
        synchronized (this) {
            j = this.count;
            j2 = this.peak;
            j3 = this.start;
        }
        synchronized (durationFilter) {
            if (j == durationFilter.count && j2 == durationFilter.peak && j3 == durationFilter.start) {
                return true;
            }
            return false;
        }
    }

    public int hashCode() {
        long j = this.records;
        int i = (((int) (j ^ (j >>> 32))) + 267) * 89;
        long j2 = this.duration;
        return i + ((int) (j2 ^ (j2 >>> 32)));
    }

    public boolean isIdle() {
        return test(0L, System.currentTimeMillis());
    }

    public boolean isLoggable() {
        return test(this.records, System.currentTimeMillis());
    }

    @Override // java.util.logging.Filter
    public boolean isLoggable(LogRecord logRecord) {
        return accept(logRecord.getMillis());
    }

    public String toString() {
        boolean zTest;
        boolean zTest2;
        synchronized (this) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            zTest = test(0L, jCurrentTimeMillis);
            zTest2 = test(this.records, jCurrentTimeMillis);
        }
        return getClass().getName() + "{records=" + this.records + ", duration=" + this.duration + ", idle=" + zTest + ", loggable=" + zTest2 + MessageFormatter.DELIM_STOP;
    }
}

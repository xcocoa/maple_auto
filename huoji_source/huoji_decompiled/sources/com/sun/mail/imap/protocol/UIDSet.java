package com.sun.mail.imap.protocol;

import java.util.ArrayList;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public class UIDSet {
    public long end;
    public long start;

    public UIDSet() {
    }

    public UIDSet(long j, long j2) {
        this.start = j;
        this.end = j2;
    }

    public static UIDSet[] createUIDSets(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < jArr.length) {
            UIDSet uIDSet = new UIDSet();
            uIDSet.start = jArr[i];
            do {
                i++;
                if (i < jArr.length) {
                }
                int i2 = i - 1;
                uIDSet.end = jArr[i2];
                arrayList.add(uIDSet);
                i = i2 + 1;
            } while (jArr[i] == jArr[i - 1] + 1);
            int i22 = i - 1;
            uIDSet.end = jArr[i22];
            arrayList.add(uIDSet);
            i = i22 + 1;
        }
        return (UIDSet[]) arrayList.toArray(new UIDSet[arrayList.size()]);
    }

    public static UIDSet[] parseUIDSets(String str) {
        UIDSet uIDSet;
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",:", true);
        loop0: while (true) {
            uIDSet = null;
            while (stringTokenizer.hasMoreTokens()) {
                try {
                    String strNextToken = stringTokenizer.nextToken();
                    if (strNextToken.equals(",")) {
                        if (uIDSet != null) {
                            arrayList.add(uIDSet);
                        }
                    } else if (!strNextToken.equals(":")) {
                        long j = Long.parseLong(strNextToken);
                        if (uIDSet != null) {
                            uIDSet.end = j;
                        } else {
                            uIDSet = new UIDSet(j, j);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
            break loop0;
        }
        if (uIDSet != null) {
            arrayList.add(uIDSet);
        }
        return (UIDSet[]) arrayList.toArray(new UIDSet[arrayList.size()]);
    }

    public static long size(UIDSet[] uIDSetArr) {
        long size = 0;
        if (uIDSetArr != null) {
            for (UIDSet uIDSet : uIDSetArr) {
                size += uIDSet.size();
            }
        }
        return size;
    }

    private static long size(UIDSet[] uIDSetArr, long j) {
        long size;
        if (uIDSetArr == null) {
            return 0L;
        }
        long j2 = 0;
        for (UIDSet uIDSet : uIDSetArr) {
            if (j < 0) {
                size = uIDSet.size();
            } else {
                long j3 = uIDSet.start;
                if (j3 <= j) {
                    long j4 = uIDSet.end;
                    if (j4 < j) {
                        j2 += (j4 - j3) + 1;
                    } else {
                        size = (j - j3) + 1;
                    }
                }
            }
            j2 += size;
        }
        return j2;
    }

    public static long[] toArray(UIDSet[] uIDSetArr) {
        if (uIDSetArr == null) {
            return null;
        }
        long[] jArr = new long[(int) size(uIDSetArr)];
        int i = 0;
        for (UIDSet uIDSet : uIDSetArr) {
            long j = uIDSet.start;
            while (j <= uIDSet.end) {
                jArr[i] = j;
                j++;
                i++;
            }
        }
        return jArr;
    }

    public static long[] toArray(UIDSet[] uIDSetArr, long j) {
        if (uIDSetArr == null) {
            return null;
        }
        long[] jArr = new long[(int) size(uIDSetArr, j)];
        int i = 0;
        for (UIDSet uIDSet : uIDSetArr) {
            long j2 = uIDSet.start;
            while (j2 <= uIDSet.end && (j < 0 || j2 <= j)) {
                jArr[i] = j2;
                j2++;
                i++;
            }
        }
        return jArr;
    }

    public static String toString(UIDSet[] uIDSetArr) {
        if (uIDSetArr == null) {
            return null;
        }
        if (uIDSetArr.length == 0) {
            return "";
        }
        int i = 0;
        StringBuilder sb = new StringBuilder();
        int length = uIDSetArr.length;
        while (true) {
            long j = uIDSetArr[i].start;
            long j2 = uIDSetArr[i].end;
            sb.append(j);
            if (j2 > j) {
                sb.append(':');
                sb.append(j2);
            }
            i++;
            if (i >= length) {
                return sb.toString();
            }
            sb.append(',');
        }
    }

    public long size() {
        return (this.end - this.start) + 1;
    }
}

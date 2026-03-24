package com.anythink.core.common.i;

import android.os.Process;
import android.os.SystemClock;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final int a = 100;
    private static long b;
    private static long c = SystemClock.uptimeMillis();
    private static final File d = new File(com.anythink.core.common.o.d.b("L3Byb2Mv") + Process.myPid() + com.anythink.core.common.o.d.b("L3N0YXQ="));

    public static int a() {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(d);
            try {
                inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                } catch (Throwable th2) {
                    bufferedReader = null;
                    th = th2;
                }
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
                inputStreamReader = null;
            }
        } catch (Throwable th4) {
            inputStreamReader = null;
            bufferedReader = null;
            th = th4;
            fileInputStream = null;
        }
        try {
            String[] strArrSplit = bufferedReader.readLine().split(o4.OooO00o.OooO0Oo);
            long j = Long.parseLong(strArrSplit[13]) + Long.parseLong(strArrSplit[14]);
            long j2 = j - b;
            long jUptimeMillis = SystemClock.uptimeMillis();
            float f = ((jUptimeMillis - c) / 1000.0f) * 100.0f;
            b = j;
            c = jUptimeMillis;
            int iAvailableProcessors = (int) (((j2 / f) * 100.0f) / Runtime.getRuntime().availableProcessors());
            try {
                bufferedReader.close();
                inputStreamReader.close();
                fileInputStream.close();
            } catch (Throwable unused) {
            }
            return iAvailableProcessors;
        } catch (Throwable th5) {
            th = th5;
            try {
                th.printStackTrace();
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused2) {
                        return 0;
                    }
                }
            } finally {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused3) {
                    }
                }
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            }
        }
    }
}

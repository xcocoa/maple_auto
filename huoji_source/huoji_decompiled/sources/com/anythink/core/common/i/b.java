package com.anythink.core.common.i;

import android.app.ActivityManager;
import android.content.Context;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static int a() {
        return a(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x004a A[EXC_TOP_SPLITTER, PHI: r3
      0x004a: PHI (r3v3 java.io.FileReader) = (r3v2 java.io.FileReader), (r3v4 java.io.FileReader) binds: [B:20:0x0048, B:28:0x0056] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int a(int i) {
        FileReader fileReader;
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader(com.anythink.core.common.o.d.b("L3Byb2MvbWVtaW5mbw=="));
            try {
                BufferedReader bufferedReader2 = new BufferedReader(fileReader, 8192);
                String line = "";
                for (int i2 = 0; i2 < i; i2++) {
                    try {
                        line = bufferedReader2.readLine();
                    } catch (IOException unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        return 0;
                    } catch (Throwable unused4) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused5) {
                            }
                        }
                        if (fileReader != null) {
                        }
                        return 0;
                    }
                }
                int iLongValue = (int) (Long.valueOf(line.split("\\s+")[1]).longValue() / 1024);
                try {
                    bufferedReader2.close();
                } catch (IOException unused6) {
                }
                try {
                    fileReader.close();
                } catch (IOException unused7) {
                }
                return iLongValue;
            } catch (IOException unused8) {
            } catch (Throwable unused9) {
            }
        } catch (IOException unused10) {
            fileReader = null;
        } catch (Throwable unused11) {
            fileReader = null;
        }
    }

    public static int a(ActivityManager activityManager) {
        try {
            activityManager.getMemoryInfo(new ActivityManager.MemoryInfo());
            return (int) ((Runtime.getRuntime().totalMemory() / 1024) / 1024);
        } catch (Throwable unused) {
            return 0;
        }
    }

    private static int a(Context context, ActivityManager activityManager) {
        return (context.getApplicationContext().getApplicationInfo().flags & 1048576) == 1048576 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
    }

    public static int b() {
        return a(3);
    }
}

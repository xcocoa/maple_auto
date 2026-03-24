package com.anythink.expressad.foundation.h;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class r {
    public static boolean a = false;
    public static String b = "";
    public static char[] c = {'P', 'a', 'c', 'k', 'a', 'g', 'e', 'M', 'a', 'n', 'a', 'g', 'e', 'r'};
    private static final String d = "common-exception";
    private static final String e = "SameSDCardTool";
    private static boolean f = false;
    private static int g = -1;
    private static int h = -1;
    private static int i = -1;
    private static int j = -1;
    private static String k;

    private static File a(File file) {
        StringBuilder sb = new StringBuilder();
        sb.append(UUID.randomUUID());
        File file2 = new File(file, sb.toString());
        if (file2.exists()) {
            file2.delete();
        }
        if (!file2.mkdirs()) {
            return null;
        }
        file2.delete();
        return file.getAbsoluteFile();
    }

    public static String a() {
        return k;
    }

    public static void a(Context context) {
        if (f) {
            return;
        }
        try {
            try {
                b = context.getFilesDir().getAbsolutePath() + File.separator;
                if (context.getPackageManager().checkPermission(com.anythink.china.common.d.b, context.getPackageName()) == 0) {
                    a = true;
                } else {
                    a = false;
                }
                b(context);
            } catch (Exception unused) {
                b = context.getFilesDir().getAbsolutePath() + File.separator;
                b(context);
            }
        } catch (Exception unused2) {
        }
        f = true;
    }

    public static boolean a(long j2) {
        return e() > j2;
    }

    private static void b(Context context) {
        String strC = c(context);
        k = strC;
        com.anythink.expressad.foundation.g.c.d.a(new com.anythink.expressad.foundation.g.c.b(strC));
        com.anythink.expressad.foundation.g.c.d.a().b();
    }

    public static boolean b() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0063 A[PHI: r0
      0x0063: PHI (r0v4 java.io.File) = (r0v3 java.io.File), (r0v6 java.io.File) binds: [B:10:0x0015, B:17:0x0060] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String c(Context context) {
        File externalFilesDir;
        File fileA;
        File absoluteFile = null;
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                externalFilesDir = context.getExternalFilesDir(null);
            } catch (Throwable unused) {
            }
            fileA = externalFilesDir != null ? a(externalFilesDir) : null;
        }
        if (a) {
            if (fileA == null) {
                StringBuilder sb = new StringBuilder();
                sb.append(Environment.getExternalStorageDirectory().getPath());
                String str = File.separator;
                sb.append(str);
                sb.append("Android");
                sb.append(str);
                sb.append("data");
                sb.append(str);
                sb.append(context.getPackageName());
                fileA = a(new File(sb.toString()));
            }
            if (e() > 31457280) {
            }
        } else {
            absoluteFile = fileA;
        }
        if (absoluteFile == null || !absoluteFile.exists()) {
            absoluteFile = context.getFilesDir().getAbsoluteFile();
        }
        return absoluteFile.getAbsolutePath();
    }

    private static boolean c() {
        return a;
    }

    private static int d() {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            long jLongValue = ((Long) v.b(contextE, "freeExternalSize", 0L)).longValue();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - jLongValue > 1800000 || h == -1) {
                h = Long.valueOf((e() / 1000) / 1000).intValue();
                v.a(contextE, "freeExternalSize", Long.valueOf(jCurrentTimeMillis));
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        return h;
    }

    private static long d(Context context) {
        try {
            String absolutePath = context.getFilesDir().getAbsolutePath();
            StatFs statFs = new StatFs(absolutePath);
            statFs.restat(absolutePath);
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Exception unused) {
            return 0L;
        }
    }

    private static long e() {
        if (b()) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 0L;
    }

    private static boolean f() {
        return e() > 31457280;
    }

    private static int g() {
        if (g == -1) {
            try {
                g = new Long((h() / 1000) / 1000).intValue();
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return g;
    }

    private static long h() {
        if (b()) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 0L;
    }

    private static int i() {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            long jLongValue = ((Long) v.b(contextE, "TotalDataSize", 0L)).longValue();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - jLongValue > 1800000 || i == -1) {
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                i = Long.valueOf(((((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 1000) / 1000).intValue();
                v.a(contextE, "TotalDataSize", Long.valueOf(jCurrentTimeMillis));
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        return i;
    }

    private static int j() {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            long jLongValue = ((Long) v.b(contextE, "FreeDataSize", 0L)).longValue();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - jLongValue > 1800000 || j == -1) {
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                j = Long.valueOf(((((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / 1000) / 1000).intValue();
                v.a(contextE, "FreeDataSize", Long.valueOf(jCurrentTimeMillis));
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        return j;
    }

    private static long k() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    private static long l() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
    }
}

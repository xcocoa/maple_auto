package com.anythink.core.common.o;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static long a(String str) {
        long jC = 0;
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        File file = new File(str);
        if (!file.exists()) {
            return 0L;
        }
        try {
            jC = file.isDirectory() ? c(file) : b(file);
        } catch (Throwable unused) {
        }
        return jC;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0057 A[PHI: r0
      0x0057: PHI (r0v4 java.io.File) = (r0v3 java.io.File), (r0v3 java.io.File), (r0v7 java.io.File) binds: [B:10:0x0015, B:12:0x001b, B:17:0x0054] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static File a(Context context) {
        File externalFilesDir;
        File fileA;
        File file = null;
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                externalFilesDir = context.getExternalFilesDir(null);
            } catch (Throwable unused) {
            }
            if (externalFilesDir != null) {
                fileA = a(externalFilesDir);
                if (fileA != null) {
                    return fileA;
                }
            } else {
                fileA = null;
            }
        }
        if (fileA == null && b(context)) {
            fileA = a(new File(Environment.getExternalStorageDirectory().getPath() + File.separator + context.getPackageName()));
            if (b() > 31457280) {
            }
        } else {
            file = fileA;
        }
        return file == null ? new File(context.getFilesDir().getAbsoluteFile().getAbsolutePath()) : file;
    }

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

    private static boolean a() {
        return b() > 31457280;
    }

    private static long b() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
            } catch (Error unused) {
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0L;
    }

    private static long b(File file) throws Throwable {
        long jAvailable = 0;
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    if (file.exists()) {
                        FileInputStream fileInputStream2 = new FileInputStream(file);
                        try {
                            jAvailable = fileInputStream2.available();
                            fileInputStream = fileInputStream2;
                        } catch (Exception e) {
                            e = e;
                            fileInputStream = fileInputStream2;
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return jAvailable;
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } else {
                        file.createNewFile();
                    }
                } catch (Exception e3) {
                    e = e3;
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return jAvailable;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String b(String str) {
        return g.a(str);
    }

    private static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().checkPermission(com.anythink.china.common.d.b, context.getPackageName()) == 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static long c(File file) {
        File[] fileArrListFiles = file.listFiles();
        long jC = 0;
        if (fileArrListFiles != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                jC += fileArrListFiles[i].isDirectory() ? c(fileArrListFiles[i]) : b(fileArrListFiles[i]);
            }
        }
        return jC;
    }

    private static boolean c() {
        return "mounted".equals(Environment.getExternalStorageState());
    }
}

package com.anythink.china.common.c;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import com.anythink.china.common.a.e;
import com.anythink.china.common.d;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.g;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final String a = "anythink_myoffer_download";

    public static String a() {
        File file = null;
        if (e() == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                File externalFilesDir = e().getExternalFilesDir(null);
                if (externalFilesDir != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(UUID.randomUUID());
                    File file2 = new File(externalFilesDir, sb.toString());
                    if (file2.exists()) {
                        file2.delete();
                    }
                    if (file2.mkdirs()) {
                        file2.delete();
                        file = externalFilesDir.getAbsoluteFile();
                    }
                    if (file != null) {
                        file = new File(file, a);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        if (file == null) {
            file = new File(e().getFilesDir().getAbsoluteFile() + File.separator + a);
        }
        return file.getAbsolutePath();
    }

    public static String a(long j, long j2, e.a aVar) {
        try {
            return j + com.anythink.expressad.foundation.g.a.bQ + j2 + com.anythink.expressad.foundation.g.a.bQ + aVar.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0055 A[Catch: IOException -> 0x0051, TryCatch #6 {IOException -> 0x0051, blocks: (B:33:0x004d, B:37:0x0055, B:39:0x005a), top: B:62:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005a A[Catch: IOException -> 0x0051, TRY_LEAVE, TryCatch #6 {IOException -> 0x0051, blocks: (B:33:0x004d, B:37:0x0055, B:39:0x005a), top: B:62:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x006d A[Catch: IOException -> 0x0069, TryCatch #0 {IOException -> 0x0069, blocks: (B:45:0x0065, B:49:0x006d, B:51:0x0072), top: B:55:0x0065 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0072 A[Catch: IOException -> 0x0069, TRY_LEAVE, TryCatch #0 {IOException -> 0x0069, blocks: (B:45:0x0065, B:49:0x006d, B:51:0x0072), top: B:55:0x0065 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.io.InputStreamReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.io.InputStreamReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(File file) throws Throwable {
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        Exception e;
        if (!file.exists()) {
            return "";
        }
        try {
            try {
                fileInputStream = new FileInputStream((File) file);
            } catch (Throwable th) {
                th = th;
            }
            try {
                file = new InputStreamReader(fileInputStream);
            } catch (Exception e2) {
                e = e2;
                bufferedReader2 = null;
                e = e;
                file = bufferedReader2;
                e.printStackTrace();
                if (bufferedReader2 != null) {
                }
                if (file != 0) {
                }
                if (fileInputStream != null) {
                }
                return "";
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
                th = th;
                file = bufferedReader;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        throw th;
                    }
                }
                if (file != 0) {
                    file.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            fileInputStream = null;
            bufferedReader2 = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            bufferedReader = null;
        }
        try {
            bufferedReader2 = new BufferedReader(file);
            try {
                String line = bufferedReader2.readLine();
                try {
                    bufferedReader2.close();
                    file.close();
                    fileInputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
                return line;
            } catch (Exception e6) {
                e = e6;
                e.printStackTrace();
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                        return "";
                    }
                }
                if (file != 0) {
                    file.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return "";
            }
        } catch (Exception e8) {
            bufferedReader2 = null;
            e = e8;
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
            if (bufferedReader != null) {
            }
            if (file != 0) {
            }
            if (fileInputStream != null) {
            }
            throw th;
        }
    }

    public static String a(String str) {
        String strA = a();
        if (strA == null) {
            return null;
        }
        return strA + File.separator + g.a(str);
    }

    private static File b(File file) {
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

    private static String b(String str) {
        return g.a(str);
    }

    private static boolean b() {
        return c() > 104857600;
    }

    private static long c() {
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

    private static String[] c(String str) {
        return str.split("\\|");
    }

    private static long d() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Error unused) {
            return 0L;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    private static Context e() {
        try {
            return n.a().f().getApplicationContext();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static boolean f() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    private static boolean g() {
        Context contextE = e();
        if (contextE == null) {
            return false;
        }
        try {
            return contextE.getPackageManager().checkPermission(d.b, contextE.getPackageName()) == 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

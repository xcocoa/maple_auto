package com.umeng.commonsdk.framework;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static final String a = "last_successful_build_time";
    private static String c = "envelope";
    private static String d;
    private static Object b = new Object();
    private static Object e = new Object();

    public static int a(Context context, String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        if (bArr == null) {
            return 101;
        }
        File file = new File(h(context) + "/" + str);
        synchronized (e) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
                if (com.umeng.commonsdk.statistics.internal.a.a(context).a(str)) {
                    j(context);
                }
                return 0;
            } catch (IOException e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                com.umeng.commonsdk.proguard.e.a(context, e);
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (Throwable th2) {
                        com.umeng.commonsdk.proguard.e.a(context, th2);
                    }
                }
                return 101;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (Throwable th4) {
                        com.umeng.commonsdk.proguard.e.a(context, th4);
                    }
                }
                throw th;
            }
        }
    }

    private static long a(long j, long j2) {
        return (j < j2 ? j2 - j : j - j2) / 86400000;
    }

    public static String a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            int iMyPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null || runningAppProcesses.size() <= 0) {
                return "";
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == iMyPid) {
                    return runningAppProcessInfo.processName;
                }
            }
            return "";
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(context.getApplicationContext(), th);
            return "";
        }
    }

    public static boolean a(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        File[] fileArrListFiles;
        String str = "a";
        if (uMBusinessType == UMLogDataProtocol.UMBusinessType.U_DPLUS) {
            str = "d";
        } else if (uMBusinessType == UMLogDataProtocol.UMBusinessType.U_INTERNAL) {
            str = "i";
        }
        File file = new File(h(context));
        synchronized (e) {
            try {
                fileArrListFiles = file.listFiles();
            } catch (Throwable th) {
                com.umeng.commonsdk.proguard.e.a(context, th);
            }
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                for (File file2 : fileArrListFiles) {
                    if (file2.getName().startsWith(str)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    private static boolean a(Context context, String str) {
        boolean z = false;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                if (Build.VERSION.SDK_INT < 23 ? applicationContext.getPackageManager().checkPermission(str, applicationContext.getPackageName()) == 0 : ((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() == 0) {
                    z = true;
                }
            } catch (Throwable th) {
                com.umeng.commonsdk.proguard.e.a(applicationContext, th);
            }
        }
        return z;
    }

    public static boolean a(File file) {
        Context contextA = c.a();
        synchronized (e) {
            if (file != null) {
                try {
                    if (file.exists()) {
                        return file.delete();
                    }
                } catch (Throwable th) {
                    com.umeng.commonsdk.proguard.e.a(contextA, th);
                }
            }
            return true;
        }
    }

    public static byte[] a(String str) throws IOException {
        byte[] bArr;
        Context contextA = c.a();
        synchronized (e) {
            FileChannel channel = null;
            try {
                try {
                    channel = new RandomAccessFile(str, com.anythink.expressad.foundation.d.c.bk).getChannel();
                    MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).load();
                    System.out.println(mappedByteBufferLoad.isLoaded());
                    bArr = new byte[(int) channel.size()];
                    if (mappedByteBufferLoad.remaining() > 0) {
                        mappedByteBufferLoad.get(bArr, 0, mappedByteBufferLoad.remaining());
                    }
                } catch (IOException e2) {
                    com.umeng.commonsdk.proguard.e.a(contextA, e2);
                    throw e2;
                }
            } finally {
                try {
                    channel.close();
                } catch (Throwable th) {
                    com.umeng.commonsdk.proguard.e.a(contextA, th);
                }
            }
        }
        return bArr;
    }

    public static boolean b(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        try {
            if (!a(context, "android.permission.ACCESS_NETWORK_STATE") || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnectedOrConnecting();
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(context.getApplicationContext(), th);
            return false;
        }
    }

    public static int c(Context context) {
        String[] list;
        if (context != null) {
            try {
                File file = new File(h(context));
                synchronized (e) {
                    if (file.isDirectory() && (list = file.list()) != null) {
                        return list.length;
                    }
                }
            } catch (Throwable th) {
                com.umeng.commonsdk.proguard.e.a(context, th);
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str) {
        Context contextA = c.a();
        if (!TextUtils.isEmpty(str)) {
            int iIndexOf = str.indexOf(95) + 1;
            try {
                return str.substring(iIndexOf, str.indexOf(95, iIndexOf));
            } catch (IndexOutOfBoundsException e2) {
                com.umeng.commonsdk.proguard.e.a(contextA, e2);
            }
        }
        return "";
    }

    public static void d(final Context context) {
        File file = new File(h(context));
        synchronized (e) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 100) {
                Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.umeng.commonsdk.framework.b.1
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(File file2, File file3) {
                        String name = file2.getName();
                        String name2 = file3.getName();
                        String strC = b.c(name);
                        String strC2 = b.c(name2);
                        if (!TextUtils.isEmpty(strC) && !TextUtils.isEmpty(strC2)) {
                            try {
                                long jLongValue = Long.valueOf(strC).longValue() - Long.valueOf(strC2).longValue();
                                if (jLongValue > 0) {
                                    return 1;
                                }
                                return jLongValue == 0 ? 0 : -1;
                            } catch (NumberFormatException e2) {
                                com.umeng.commonsdk.proguard.e.a(context, e2);
                            }
                        }
                        return 1;
                    }
                });
                if (fileArrListFiles.length > 100) {
                    try {
                        com.umeng.commonsdk.statistics.common.e.b("--->>> biger than 10");
                        for (int i = 0; i < fileArrListFiles.length - 100; i++) {
                            if (!fileArrListFiles[i].delete()) {
                                com.umeng.commonsdk.statistics.common.e.b("--->>> remove [" + i + "] file fail.");
                            }
                        }
                    } catch (Throwable th) {
                        com.umeng.commonsdk.proguard.e.a(context, th);
                    }
                }
            }
        }
    }

    public static File e(final Context context) {
        if (context == null) {
            return null;
        }
        File file = new File(h(context));
        synchronized (e) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.umeng.commonsdk.framework.b.2
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(File file2, File file3) {
                        String name = file2.getName();
                        String name2 = file3.getName();
                        String strC = b.c(name);
                        String strC2 = b.c(name2);
                        if (!TextUtils.isEmpty(strC) && !TextUtils.isEmpty(strC2)) {
                            try {
                                long jLongValue = Long.valueOf(strC).longValue() - Long.valueOf(strC2).longValue();
                                if (jLongValue > 0) {
                                    return 1;
                                }
                                return jLongValue == 0 ? 0 : -1;
                            } catch (NumberFormatException e2) {
                                com.umeng.commonsdk.proguard.e.a(context, e2);
                            }
                        }
                        return 1;
                    }
                });
                return fileArrListFiles[0];
            }
            return null;
        }
    }

    public static void f(Context context) {
        String strG;
        if (context == null) {
            return;
        }
        try {
            strG = g(context);
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(context, th);
        }
        if (TextUtils.isEmpty(strG) || strG.equals(c)) {
            return;
        }
        File file = new File(context.getFilesDir().getAbsolutePath() + "/." + strG);
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                try {
                    if (file.isDirectory()) {
                        file.delete();
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    com.umeng.commonsdk.proguard.e.a(context, th2);
                    return;
                }
            }
            try {
                String strH = h(context);
                for (int i = 0; i < fileArrListFiles.length; i++) {
                    fileArrListFiles[i].renameTo(new File(strH + "/" + fileArrListFiles[i].getName()));
                }
                if (file.isDirectory()) {
                    file.delete();
                    return;
                }
                return;
            } catch (Throwable th3) {
                com.umeng.commonsdk.proguard.e.a(context, th3);
                return;
            }
            com.umeng.commonsdk.proguard.e.a(context, th);
        }
    }

    public static String g(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        if (activityManager != null) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                com.umeng.commonsdk.statistics.common.e.b("--->>> getEnvelopeDir: can't get process name, use default envelope directory.");
                return c;
            }
            if (runningAppProcesses.size() == 0) {
                return c;
            }
            try {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == Process.myPid()) {
                        String strReplace = runningAppProcessInfo.processName.replace(':', '_');
                        com.umeng.commonsdk.statistics.common.e.b("--->>> getEnvelopeDir: use current process name as envelope directory.");
                        return strReplace;
                    }
                }
            } catch (Throwable th) {
                com.umeng.commonsdk.proguard.e.a(context, th);
            }
        }
        return c;
    }

    public static String h(Context context) {
        String str;
        File file;
        synchronized (e) {
            try {
                if (d == null) {
                    d = context.getFilesDir().getAbsolutePath() + "/." + c;
                }
                file = new File(d);
            } finally {
            }
            if (file.exists() || file.mkdir()) {
                str = d;
            } else {
                com.umeng.commonsdk.statistics.common.e.b("--->>> Create Envelope Directory failed!!!");
                str = d;
            }
        }
        return str;
    }

    public static long i(Context context) {
        long j;
        synchronized (b) {
            j = PreferenceWrapper.getDefault(context).getLong(a, 0L);
        }
        return j;
    }

    private static void j(Context context) {
        synchronized (b) {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            sharedPreferences.edit().putLong(a, System.currentTimeMillis()).commit();
        }
    }
}

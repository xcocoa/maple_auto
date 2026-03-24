package com.iflytek.voiceads.utils;

import android.content.Context;
import android.os.Environment;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class f {
    private static Context a;
    private static f b;
    private static File c;
    private static SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA);

    private static long a(File file) {
        if (!file.exists()) {
            return 0L;
        }
        try {
            return new FileInputStream(file).available();
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "getFileSize:" + e.getMessage());
            return 0L;
        }
    }

    private static void a() {
        File file = new File(c.getParent() + "/ifly_ad_lastLog.txt");
        if (file.exists()) {
            file.delete();
        }
        c.renameTo(file);
        try {
            c.createNewFile();
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "resetLogFile:" + e.getMessage());
        }
    }

    public static void a(Context context) {
        if (a == null || b == null || c == null || !c.exists()) {
            a = context;
            b = new f();
            c = b();
            if (52428800 < a(c)) {
                a();
            }
        }
    }

    public static void a(Object obj) {
        if (a == null || b == null || c == null || !c.exists()) {
            return;
        }
        String str = c() + " - " + obj.toString();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(c, true));
            bufferedWriter.write(str);
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_WINDOWS);
            bufferedWriter.flush();
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "write:" + e.getMessage());
        }
    }

    private static File b() {
        File file = new File(Environment.getExternalStorageDirectory().getPath() + File.separator + "IFlyAdDownload" + File.separator);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file.getPath() + "/ifly_ad_logs.txt");
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (Exception e) {
                g.b("IFLY_AD_SDK", "getLogFile:" + e.getMessage());
            }
        }
        return file2;
    }

    private static String c() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(b.getClass().getName())) {
                return "[" + d.format(new Date()) + "]";
            }
        }
        return null;
    }
}

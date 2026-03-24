package z2;

import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final class gg {
    private static final boolean OooO00o = false;
    private static final String OooO0O0 = "IPC_ANDROID";

    private static void OooO() {
    }

    private static String OooO00o(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getPath());
        String str2 = File.separator;
        sb.append(str2);
        sb.append("rootAbort");
        sb.append(str2);
        String string = sb.toString();
        File file = new File(string);
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date(System.currentTimeMillis())) + ":" + str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(string + "save.log", true);
            fileOutputStream.write(sb2.toString().getBytes());
            fileOutputStream.close();
            return "save.log";
        } catch (Exception unused) {
            return string;
        }
    }

    private static boolean OooO0O0() {
        return false;
    }

    private static String OooO0OO() {
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(gg.class.getName())) {
                return "(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
            }
        }
        return null;
    }

    private static void OooO0Oo() {
    }

    private static void OooO0o() {
    }

    private static void OooO0o0() {
    }

    private static void OooO0oO() {
    }

    private static void OooO0oo() {
    }

    private static void OooOO0() {
    }

    private static void OooOO0O() {
    }

    private static void OooOO0o() {
    }

    private static void OooOOO0() {
    }
}

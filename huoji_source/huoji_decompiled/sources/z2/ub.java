package z2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Vibrator;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Pattern;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class ub {
    private static final String OooO00o = "ro.miui.ui.version.code";
    private static final String OooO0O0 = "ro.miui.ui.version.name";
    private static final String OooO0OO = "ro.miui.internal.storage";

    public class OooO00o implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    }

    public static int OooO(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", g6.OooO0O0);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static boolean OooO00o(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getApplicationInfo(str, 8192);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static String OooO0O0() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls.newInstance(), "gsm.version.baseband", "no message");
        } catch (Exception unused) {
            return "";
        }
    }

    public static String OooO0OO() {
        String[] strArr = {"", ""};
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
            String[] strArrSplit = bufferedReader.readLine().split("\\s+");
            for (int i = 2; i < strArrSplit.length; i++) {
                strArr[0] = strArr[0] + strArrSplit[i] + o4.OooO00o.OooO0Oo;
            }
            bufferedReader.close();
        } catch (IOException unused) {
        }
        return strArr[0];
    }

    public static String OooO0Oo() {
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/version");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream), 8192);
            String str = "";
            while (true) {
                try {
                    try {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            str = str + line;
                        } catch (IOException e) {
                            e.printStackTrace();
                            bufferedReader.close();
                            fileInputStream.close();
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                        fileInputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            }
            bufferedReader.close();
            fileInputStream.close();
            if (str == "") {
                return "";
            }
            try {
                String strSubstring = str.substring(str.indexOf("version ") + 8);
                return strSubstring.substring(0, strSubstring.indexOf(o4.OooO00o.OooO0Oo));
            } catch (IndexOutOfBoundsException e4) {
                e4.printStackTrace();
                return "";
            }
        } catch (FileNotFoundException e5) {
            e5.printStackTrace();
            return "";
        }
    }

    public static Point OooO0o(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static int OooO0o0() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new OooO00o()).length;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    public static int OooO0oO(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    public static String OooO0oo() {
        return Build.SERIAL;
    }

    public static long OooOO0(Context context) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 2048);
            String line = bufferedReader.readLine();
            String strSubstring = line.substring(line.indexOf("MemTotal:"));
            bufferedReader.close();
            return ((long) Integer.parseInt(strSubstring.replaceAll("\\D+", ""))) * 1024;
        } catch (IOException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static void OooOO0O(Context context, File file) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public static boolean OooOO0o(String str) {
        return str == null || "".equalsIgnoreCase(str.trim()) || "null".equalsIgnoreCase(str.trim());
    }

    public static boolean OooOOO() {
        try {
            vb vbVarOooO = vb.OooO();
            if (vbVarOooO.OooO0o0(OooO00o, null) == null && vbVarOooO.OooO0o0(OooO0O0, null) == null) {
                if (vbVarOooO.OooO0o0(OooO0OO, null) == null) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean OooOOO0() {
        try {
            return Build.class.getMethod("hasSmartBar", new Class[0]) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean OooOOOO(String str) {
        return str.toLowerCase().endsWith(".jpg") || str.toLowerCase().endsWith(".jpeg") || str.toLowerCase().endsWith(".png");
    }

    public static boolean OooOOOo(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[1][34587]\\d{9}");
    }

    public static void OooOOo0(Context context, long j) {
        ((Vibrator) context.getSystemService("vibrator")).vibrate(j);
    }
}

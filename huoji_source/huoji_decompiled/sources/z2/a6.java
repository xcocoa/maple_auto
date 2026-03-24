package z2;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.cyjh.elfin.base.AppContext;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.Thread;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class a6 implements Thread.UncaughtExceptionHandler {
    private static a6 OooO0OO = new a6();
    private Thread.UncaughtExceptionHandler OooO00o;
    private AppContext OooO0O0;

    private a6() {
    }

    private void OooO00o(PrintWriter printWriter) throws PackageManager.NameNotFoundException {
        WindowManager windowManager = (WindowManager) this.OooO0O0.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        PackageInfo packageInfo = this.OooO0O0.getPackageManager().getPackageInfo(this.OooO0O0.getPackageName(), 0);
        printWriter.println("---------------手机硬件信息-------------------");
        printWriter.println("BOARD : " + Build.BOARD);
        printWriter.println("BOOTLOADER : " + Build.BOOTLOADER);
        printWriter.println("BRAND : " + Build.BRAND);
        printWriter.println("CPU_ABI1: " + Build.CPU_ABI);
        printWriter.println("CPU_ABI2: " + Build.CPU_ABI2);
        printWriter.println("DEVICE : " + Build.DEVICE);
        printWriter.println("DISPLAY : " + Build.DISPLAY);
        printWriter.println("FINGERPRINT : " + Build.FINGERPRINT);
        printWriter.println("HARDWARE : " + Build.HARDWARE);
        printWriter.println("HOST : " + Build.HOST);
        printWriter.println("ID : " + Build.ID);
        StringBuilder sb = new StringBuilder();
        sb.append("MANUFACTURER  : ");
        String str = Build.MANUFACTURER;
        sb.append(str);
        printWriter.println(sb.toString());
        printWriter.println("MODEL: " + Build.MODEL);
        printWriter.println("PRODUCT : " + Build.PRODUCT);
        printWriter.println("getRadioVersion : " + Build.getRadioVersion());
        printWriter.println("SERIAL : " + Build.SERIAL);
        printWriter.println("TAGS : " + Build.TAGS);
        printWriter.println("TIME : " + Build.TIME);
        printWriter.println("TYPE : " + Build.TYPE);
        printWriter.println("UNKNOWN : unknown");
        printWriter.println("VERSION.CODENAME : " + Build.VERSION.CODENAME);
        printWriter.println("VERSION.INCREMENTAL : " + Build.VERSION.INCREMENTAL);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("VERSION.RELEASE : ");
        String str2 = Build.VERSION.RELEASE;
        sb2.append(str2);
        printWriter.println(sb2.toString());
        printWriter.println("System.getProperty()" + System.getProperty("ro.miui.ui.version.name"));
        printWriter.println("------------------------------------");
        printWriter.println("ScreenSize: " + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("versionName: ");
        sb3.append(packageInfo.versionName);
        printWriter.println(sb3.toString());
        printWriter.println("versionCode:" + packageInfo.versionCode);
        printWriter.println("OS Version: " + str2);
        printWriter.println("API Level: " + Build.VERSION.SDK_INT);
        printWriter.println("Vendor: " + str);
    }

    public static a6 OooO0O0() {
        return OooO0OO;
    }

    private void OooO0Oo(Throwable th) throws IOException {
        if (Environment.getExternalStorageState().equals("mounted")) {
            StringBuilder sb = new StringBuilder();
            sb.append(Environment.getExternalStorageDirectory());
            String str = File.separator;
            sb.append(str);
            sb.append(this.OooO0O0.getPackageName());
            sb.append(str);
            sb.append(com.anythink.expressad.foundation.g.a.av);
            File file = new File(sb.toString());
            if (!file.exists()) {
                file.mkdirs();
            }
            String str2 = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
            try {
                PrintWriter printWriter = new PrintWriter(new BufferedWriter(new FileWriter(new File(file, str2 + ".crashlog"))));
                printWriter.println(str2);
                OooO00o(printWriter);
                printWriter.println();
                th.printStackTrace(printWriter);
                printWriter.close();
            } catch (Exception unused) {
            }
        }
    }

    public void OooO0OO(AppContext appContext) {
        this.OooO0O0 = appContext;
        this.OooO00o = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            OooO0Oo(th);
        } catch (IOException e) {
            e.printStackTrace();
        }
        th.printStackTrace();
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.OooO00o;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
        }
    }
}

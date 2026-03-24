package z2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.cyjh.http.bean.LocalApplication;
import com.cyjh.http.bean.request.DeviceInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class ae {
    public static final String OooO00o = "yyyy-MM-dd HH:mm:ss";
    public static final String OooO0O0 = "yyyy-MM-dd";

    public class OooO00o implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    }

    public final class OooO0O0 {
        public String OooO00o(String str) {
            ArrayList<o4.OooO00o> arrayListOooO0OO;
            String upperCase;
            char cCharAt;
            return (!TextUtils.isEmpty(str) && !Character.isDigit(str.toLowerCase().charAt(0)) && (arrayListOooO0OO = o4.OooO0Oo().OooO0OO(str.substring(0, 1))) != null && arrayListOooO0OO.size() > 0 && arrayListOooO0OO.get(0).OooO0OO.length() > 0 && (cCharAt = (upperCase = arrayListOooO0OO.get(0).OooO0OO.substring(0, 1).toUpperCase()).charAt(0)) >= 'A' && cCharAt <= 'Z') ? upperCase : "#";
        }
    }

    public static String OooO(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
    }

    public static DeviceInfo OooO00o(Context context) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n\n\n");
        String strOooO = OooO(context);
        if (!TextUtils.isEmpty(strOooO)) {
            sb.append(strOooO);
            sb2.append("devicesId=" + strOooO);
            sb2.append(",");
        }
        String strOooOoO0 = OooOoO0();
        if (!TextUtils.isEmpty(strOooOoO0)) {
            sb.append(strOooOoO0);
            sb2.append("serial=" + strOooOoO0);
            sb2.append(",");
        }
        DeviceInfo deviceInfo = new DeviceInfo();
        deviceInfo.DeviceCode = sb.toString();
        String strOooOOOO = OooOOOO(context);
        if (!TextUtils.isEmpty(strOooOOOO)) {
            sb.append(strOooOOOO);
            sb2.append("macAddress=" + strOooOOOO);
            sb2.append(",");
        }
        File fileOooOOOo = a4.OooOOOo(k3.o0OO00O, "android_id");
        String strOooO0o0 = fileOooOOOo != null ? OooO0o0(fileOooOOOo.getAbsolutePath()) : null;
        if (TextUtils.isEmpty(strOooO0o0)) {
            strOooO0o0 = OooO0o(context);
            Oooo0oO(fileOooOOOo, strOooO0o0);
        }
        sb.append(strOooO0o0);
        sb2.append("androidId=" + strOooO0o0);
        sb2.append(",");
        File fileOooOOOo2 = a4.OooOOOo(k3.o0OO00O, k3.oo0o0Oo);
        String strOooO0o02 = fileOooOOOo2 != null ? OooO0o0(fileOooOOOo2.getAbsolutePath()) : "";
        if (TextUtils.isEmpty(strOooO0o02) || fileOooOOOo2 == null) {
            strOooO0o02 = UUID.randomUUID().toString();
            if (fileOooOOOo2 == null) {
                fileOooOOOo2 = a4.OooOOOo(k3.o0OO00O, k3.oo0o0Oo);
            }
            Oooo0oO(fileOooOOOo2, strOooO0o02);
        }
        sb.append(strOooO0o02);
        sb2.append("uuid=" + strOooO0o02);
        sb2.append("\n\n\n");
        deviceInfo.DeviceId = q4.OooO00o(sb.toString());
        return deviceInfo;
    }

    private static String OooO0O0(String str, String str2) {
        String str3 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(str).getInputStream()));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null || line.contains(str2)) {
                    return line;
                }
                str3 = str3 + line;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        }
    }

    public static void OooO0OO(String str, Context context) {
        File file = new File(OooOo0(context), str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static int OooO0Oo(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private static String OooO0o(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    private static String OooO0o0(String str) {
        StringBuilder sb = new StringBuilder();
        File file = new File(str);
        try {
            byte[] bArr = new byte[1024];
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    break;
                }
                sb.append(new String(bArr, 0, i, "utf-8"));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return sb.toString();
    }

    private static String OooO0oO(Context context) {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + context.getPackageName();
    }

    public static String OooO0oo() {
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

    public static String OooOO0(String str, Context context) {
        File file = new File(OooOo0(context), str);
        return !file.exists() ? "" : OooO0o0(file.getAbsolutePath());
    }

    public static List<LocalApplication> OooOO0O(Context context) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        try {
            for (PackageInfo packageInfo : packageManager.getInstalledPackages(0)) {
                if ((packageInfo.applicationInfo.flags & 1) == 0) {
                    LocalApplication localApplication = new LocalApplication();
                    localApplication.setApplicationName((String) packageInfo.applicationInfo.loadLabel(packageManager));
                    localApplication.setApplicationIcon(packageInfo.applicationInfo.loadIcon(packageManager));
                    localApplication.setApplicationPackageName(packageInfo.applicationInfo.packageName);
                    localApplication.setApplicationVersionName(packageInfo.versionName);
                    Oooo00O(localApplication);
                    arrayList.add(localApplication);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public static String OooOO0o() {
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

    public static String OooOOO() {
        String strOooO0O0 = OooO0O0("busybox ifconfig", "HWaddr");
        return strOooO0O0 == null ? "网络异常" : (strOooO0O0.length() <= 0 || !strOooO0O0.contains("HWaddr")) ? strOooO0O0 : strOooO0O0.substring(strOooO0O0.indexOf("HWaddr") + 6, strOooO0O0.length() - 1);
    }

    private static InetAddress OooOOO0() {
        InetAddress inetAddress;
        SocketException e;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            inetAddress = null;
            do {
                try {
                    if (!networkInterfaces.hasMoreElements()) {
                        break;
                    }
                    Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (true) {
                        if (!inetAddresses.hasMoreElements()) {
                            break;
                        }
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        try {
                            if (!inetAddressNextElement.isLoopbackAddress() && inetAddressNextElement.getHostAddress().indexOf(":") == -1) {
                                inetAddress = inetAddressNextElement;
                                break;
                            }
                            inetAddress = null;
                        } catch (SocketException e2) {
                            e = e2;
                            inetAddress = inetAddressNextElement;
                            e.printStackTrace();
                        }
                    }
                } catch (SocketException e3) {
                    e = e3;
                }
            } while (inetAddress == null);
        } catch (SocketException e4) {
            inetAddress = null;
            e = e4;
        }
        return inetAddress;
    }

    public static String OooOOOO(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i < 23) {
            return OooOOo0(context);
        }
        if (i >= 23 && i < 24) {
            return OooOOo();
        }
        if (i < 24) {
            return "02:00:00:00:00:00";
        }
        String strOooOOoo = OooOOoo();
        if ("02:00:00:00:00:00".equals(strOooOOoo)) {
            strOooOOoo = OooOOO();
        }
        return "02:00:00:00:00:00".equals(strOooOOoo) ? OooOOOo() : strOooOOoo;
    }

    public static String OooOOOo() {
        try {
            byte[] hardwareAddress = NetworkInterface.getByInetAddress(OooOOO0()).getHardwareAddress();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < hardwareAddress.length; i++) {
                if (i != 0) {
                    stringBuffer.append(':');
                }
                String hexString = Integer.toHexString(hardwareAddress[i] & 255);
                if (hexString.length() == 1) {
                    hexString = 0 + hexString;
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString().toUpperCase();
        } catch (Exception unused) {
            return null;
        }
    }

    private static String OooOOo() {
        try {
            return new BufferedReader(new FileReader(new File("/sys/class/net/wlan0/address"))).readLine();
        } catch (IOException e) {
            e.printStackTrace();
            return "02:00:00:00:00:00";
        }
    }

    private static String OooOOo0(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    private static String OooOOoo() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
            return "02:00:00:00:00:00";
        } catch (Exception e) {
            e.printStackTrace();
            return "02:00:00:00:00:00";
        }
    }

    public static int OooOo(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    public static File OooOo0(Context context) {
        File file = new File(OooO0oO(context));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static int OooOo00() {
        try {
            File[] fileArrListFiles = new File("/sys/devices/system/cpu/").listFiles(new OooO00o());
            Log.e("TAG", "CPU Count=" + fileArrListFiles.length);
            return fileArrListFiles.length;
        } catch (Exception e) {
            Log.e("TAG", "CPU Count: Failed.");
            e.printStackTrace();
            return 1;
        }
    }

    public static String OooOo0O() {
        return w4.OooO0OO();
    }

    public static Point OooOo0o(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static String OooOoO() {
        return Build.VERSION.SDK_INT >= 26 ? Build.getSerial() : Build.SERIAL;
    }

    @SuppressLint({"HardwareIds", "MissingPermission"})
    private static String OooOoO0() {
        return Build.VERSION.SDK_INT >= 26 ? Build.getSerial() : Build.SERIAL;
    }

    public static long OooOoOO(Context context) {
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

    public static boolean OooOoo(String str, Context context) {
        String strOooOO0 = OooOO0(str, context);
        return !TextUtils.isEmpty(strOooOO0) && strOooOO0.compareTo(Oooo0(System.currentTimeMillis() / 1000, OooO0O0)) >= 0;
    }

    public static String OooOoo0(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean OooOooO(Context context, String str) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            applicationInfo = null;
        }
        return applicationInfo != null;
    }

    public static boolean OooOooo(Context context, String str) {
        PackageInfo packageInfo;
        if (str == null) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static String Oooo0(long j, String str) {
        if (str == null || str.isEmpty()) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        return new SimpleDateFormat(str, Locale.getDefault()).format(new Date(j * 1000));
    }

    public static int Oooo000(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void Oooo00O(LocalApplication localApplication) {
        localApplication.setInitialLetter(!TextUtils.isEmpty(localApplication.getApplicationName()) ? new OooO0O0().OooO00o(localApplication.getApplicationName()) : "#");
    }

    public static String Oooo00o(long j, String str) {
        if (str == null || str.isEmpty()) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(j);
        return simpleDateFormat.format(gregorianCalendar.getTime());
    }

    public static long Oooo0O0(String str) {
        try {
            Date date = new SimpleDateFormat(OooO0O0, Locale.getDefault()).parse(str);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.set(calendar.get(1), calendar.get(2), calendar.get(5) + 1, 0, 0);
            return calendar.getTimeInMillis();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static void Oooo0OO(String str, Context context, String str2) {
        try {
            File file = new File(OooOo0(context), str);
            if (!file.exists()) {
                file.createNewFile();
            }
            Oooo0oO(file, str2);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "AppUtils--writeDateToFile:" + e.getMessage());
        }
    }

    public static void Oooo0o(Context context, String str, String str2) {
        try {
            File file = new File(OooOo0(context), str);
            if (!file.exists()) {
                file.createNewFile();
            }
            Oooo0oO(file, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void Oooo0o0(String str, Context context, String str2, boolean z) {
        try {
            File file = new File(OooOo0(context), str);
            if (!file.exists()) {
                file.createNewFile();
            }
            Oooo0oo(file, str2, z);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void Oooo0oO(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void Oooo0oo(File file, String str, boolean z) {
        try {
            FileWriter fileWriter = new FileWriter(file, z);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

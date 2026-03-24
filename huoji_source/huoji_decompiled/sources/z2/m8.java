package z2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Vibrator;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.ac.R;
import com.cyjh.elfin.ui.activity.ElfinFreeActivity;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class m8 {
    private static final long OooO00o = 1000;
    private static final long[] OooO0O0 = {500, 200, 500, 200};
    private static final int OooO0OO = -1;

    public static String OooO(Context context) {
        return ContextCompat.checkSelfPermission(context, com.anythink.china.common.d.a) != 0 ? "" : ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
    }

    public static String OooO00o(Context context) {
        String str = OooO(context) + OooOOoo(context);
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String strOooOO0 = u8.OooOO0("deviceid");
        String str2 = "AppDevicesUtils-- acquireDevicesId2:" + strOooOO0;
        if (TextUtils.isEmpty(strOooOO0)) {
            strOooOO0 = UUID.randomUUID().toString();
            String str3 = "AppDevicesUtils-- acquireDevicesId3:" + strOooOO0;
            u8.OooOo0O("deviceid", strOooOO0);
        }
        return strOooOO0;
    }

    public static void OooO0O0(Context context, Class cls, int i) {
        Intent intent = new Intent();
        intent.putExtra(ElfinFreeActivity.class.getCanonicalName(), i);
        intent.setClass(context, cls);
        intent.addFlags(2097152);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    private static String OooO0OO(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(String.format("%02X:", Byte.valueOf(b)));
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    private static String OooO0Oo(String str, String str2) {
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

    public static String OooO0o(Context context) {
        return Settings.System.getString(context.getContentResolver(), "android_id");
    }

    public static boolean OooO0o0(Context context, String str) {
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

    public static String OooO0oO(Context context) {
        try {
            return context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0oo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String OooOO0(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i < 23) {
            Log.e("=====", "6.0以下");
            return OooOOo(context);
        }
        if (i < 24 && i >= 23) {
            Log.e("=====", "6.0以上7.0以下");
            return OooOOoo(context);
        }
        if (i < 24) {
            return "02:00:00:00:00:00";
        }
        Log.e("=====", "7.0以上");
        if (!TextUtils.isEmpty(OooOOoo(context))) {
            Log.e("=====", "7.0以上1");
            return OooOOoo(context);
        }
        if (TextUtils.isEmpty(OooOo())) {
            Log.e("=====", "7.0以上3");
            return OooOOo0();
        }
        Log.e("=====", "7.0以上2");
        return OooOo();
    }

    public static String OooOO0O(Context context) {
        return Build.VERSION.RELEASE;
    }

    public static int OooOO0o(Context context, float f) {
        return (int) (((double) (context.getResources().getDisplayMetrics().density * f)) + 0.5d);
    }

    public static String OooOOO(boolean z) {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (networkInterfaceNextElement.isUp()) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if (!inetAddressNextElement.isLoopbackAddress()) {
                            String hostAddress = inetAddressNextElement.getHostAddress();
                            boolean z3 = hostAddress.indexOf(58) < 0;
                            if (z) {
                                if (z3) {
                                    return hostAddress;
                                }
                            } else if (!z3) {
                                int iIndexOf = hostAddress.indexOf(37);
                                return iIndexOf < 0 ? hostAddress.toUpperCase() : hostAddress.substring(0, iIndexOf).toUpperCase();
                            }
                        }
                    }
                }
            }
            return null;
        } catch (SocketException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooOOO0(Context context) {
        return ContextCompat.checkSelfPermission(context, com.anythink.china.common.d.a) != 0 ? "" : ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
    }

    public static InetAddress OooOOOO() {
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

    public static String OooOOOo() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress()) {
                        return inetAddressNextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (SocketException e) {
            Log.e("Wifi IpAddress", e.toString());
            return null;
        }
    }

    public static String OooOOo(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    public static String OooOOo0() {
        String strOooO0Oo = OooO0Oo("busybox ifconfig", "HWaddr");
        return strOooO0Oo == null ? "网络异常" : (strOooO0Oo.length() <= 0 || !strOooO0Oo.contains("HWaddr")) ? strOooO0Oo : strOooO0Oo.substring(strOooO0Oo.indexOf("HWaddr") + 6, strOooO0Oo.length() - 1);
    }

    public static String OooOOoo(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i < 23) {
            return OooOo0(context);
        }
        if (i >= 23 && i < 24) {
            return OooOo0O();
        }
        if (i < 24) {
            return "02:00:00:00:00:00";
        }
        String strOooOo0o = OooOo0o();
        if ("02:00:00:00:00:00".equals(strOooOo0o)) {
            strOooOo0o = OooOOo0();
        }
        return "02:00:00:00:00:00".equals(strOooOo0o) ? OooOo00() : strOooOo0o;
    }

    public static String OooOo() {
        Enumeration<NetworkInterface> networkInterfaces;
        String strOooO0OO = null;
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (SocketException e) {
            e.printStackTrace();
            networkInterfaces = null;
        }
        if (networkInterfaces == null) {
            return null;
        }
        while (networkInterfaces.hasMoreElements()) {
            try {
                strOooO0OO = OooO0OO(networkInterfaces.nextElement().getHardwareAddress());
            } catch (SocketException e2) {
                e2.printStackTrace();
            }
            if (strOooO0OO != null) {
                break;
            }
        }
        return strOooO0OO;
    }

    private static String OooOo0(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    public static String OooOo00() {
        try {
            byte[] hardwareAddress = NetworkInterface.getByInetAddress(OooOOOO()).getHardwareAddress();
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

    private static String OooOo0O() {
        try {
            return new BufferedReader(new FileReader(new File("/sys/class/net/wlan0/address"))).readLine();
        } catch (IOException e) {
            e.printStackTrace();
            return "02:00:00:00:00:00";
        }
    }

    private static String OooOo0o() {
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

    public static int OooOoO(Context context, float f) {
        return (int) (((double) (f / context.getResources().getDisplayMetrics().density)) + 0.5d);
    }

    public static String OooOoO0(Context context) {
        String subscriberId;
        return (ContextCompat.checkSelfPermission(context, com.anythink.china.common.d.a) == 0 && (subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId()) != null) ? (subscriberId.startsWith("46000") || subscriberId.startsWith("46002") || subscriberId.startsWith("46007")) ? "1" : (subscriberId.startsWith("46001") || subscriberId.startsWith("46006")) ? "2" : subscriberId.startsWith("46003") ? "3" : "0" : "0";
    }

    public static Point OooOoOO(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static int OooOoo(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", g6.OooO0O0);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int OooOoo0(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    public static String OooOooO(Context context) {
        return new WebView(context).getSettings().getUserAgentString();
    }

    public static String OooOooo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean Oooo(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage == null) {
                return false;
            }
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
            context.startActivity(launchIntentForPackage);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean Oooo0(Context context, String str) {
        Log.e("xys", "installApplicationNormal:" + context + ",path:" + str);
        return Oooo00o(context, new File(str));
    }

    public static String Oooo000(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if (!wifiManager.isWifiEnabled()) {
            wifiManager.setWifiEnabled(true);
        }
        return Oooo0O0(wifiManager.getConnectionInfo().getIpAddress());
    }

    @TargetApi(26)
    public static void Oooo00O(final Context context, File file) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26 && !Oooo0o(context)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle("安装权限");
            builder.setMessage("需要打开允许来自此来源，请去设置中开启此权限");
            builder.setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: z2.h8
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    m8.Oooo0oo(context, dialogInterface, i2);
                }
            });
            builder.create().show();
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        if (i >= 24) {
            intent.setFlags(1);
            intent.setDataAndType(FileProvider.getUriForFile(context, context.getString(R.string.pay_appid), file), "application/vnd.android.package-archive");
        } else {
            intent.setDataAndType(Uri.parse("file://" + file.toString()), "application/vnd.android.package-archive");
            intent.setFlags(268435456);
        }
        context.startActivity(intent);
    }

    public static boolean Oooo00o(Context context, File file) {
        try {
            Log.e("xys", "mainfile:" + file);
            Uri uriFromFile = Uri.fromFile(file);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("xys", "var4:" + e.getMessage());
            return true;
        }
    }

    private static String Oooo0O0(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    public static boolean Oooo0OO(Context context, String str) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        ArrayList arrayList = new ArrayList();
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                arrayList.add(installedPackages.get(i).packageName);
            }
        }
        return arrayList.contains(str);
    }

    @RequiresApi(api = 26)
    private static boolean Oooo0o(Context context) {
        if (context == null) {
            return false;
        }
        return context.getPackageManager().canRequestPackageInstalls();
    }

    public static boolean Oooo0o0(Context context) {
        return Build.CPU_ABI.equalsIgnoreCase("x86");
    }

    public static boolean Oooo0oO(Context context, String str) {
        PackageInfo packageInfo;
        if (str == null) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static /* synthetic */ void Oooo0oo(Context context, DialogInterface dialogInterface, int i) {
        OoooO0(context);
        dialogInterface.dismiss();
    }

    public static void OoooO(Context context, long j) {
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        if (vibrator.hasVibrator()) {
            vibrator.vibrate(j);
        }
    }

    @RequiresApi(api = 26)
    private static void OoooO0(Context context) {
        if (context == null) {
            return;
        }
        ((Activity) context).startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + context.getPackageName())), 10000);
    }

    public static String OoooO00() {
        return Build.BRAND;
    }

    public static void OoooO0O(Context context) {
        OoooO(context, OooO00o);
    }

    public static void OoooOO0(Context context) {
        o000oOoO(context, OooO0O0, -1);
    }

    public static void o000oOoO(Context context, long[] jArr, int i) {
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        if (vibrator.hasVibrator()) {
            vibrator.vibrate(jArr, i);
        }
    }
}

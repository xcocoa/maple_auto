package com.umeng.commonsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.anythink.china.common.d;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.statistics.b;
import com.umeng.commonsdk.statistics.common.MLog;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Locale;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.microedition.khronos.opengles.GL10;
import org.slf4j.Marker;
import z2.o4;
import z2.w4;

/* JADX INFO: loaded from: classes2.dex */
public class UMUtils {
    public static final int DEFAULT_TIMEZONE = 8;
    private static final String KEY_APP_KEY = "appkey";
    private static final String KEY_CHANNEL = "channel";
    private static final String KEY_LAST_APP_KEY = "last_appkey";
    private static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    private static final String KEY_SHARED_PREFERENCES_NAME = "umeng_common_config";
    public static final String MOBILE_NETWORK = "2G/3G";
    private static final String SD_PERMISSION = "android.permission.WRITE_EXTERNAL_STORAGE";
    private static final String TAG = "UMUtils";
    public static final String UNKNOW = "";
    public static final String WIFI = "Wi-Fi";
    private static final Pattern pattern = Pattern.compile("UTDID\">([^<]+)");

    public static String MD5(String str) {
        try {
            if (str == null) {
                return null;
            }
            try {
                try {
                    byte[] bytes = str.getBytes();
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.reset();
                    messageDigest.update(bytes);
                    byte[] bArrDigest = messageDigest.digest();
                    StringBuffer stringBuffer = new StringBuffer();
                    for (byte b : bArrDigest) {
                        stringBuffer.append(String.format("%02X", Byte.valueOf(b)));
                    }
                    return stringBuffer.toString();
                } catch (Exception e) {
                    if (b.f) {
                        Log.e(TAG, "MD5 e is " + e);
                    }
                    return null;
                }
            } catch (Exception unused) {
                return str.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
            }
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "MD5 e is " + th);
            }
            return null;
        }
    }

    private static String byte2HexFormatted(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i]);
            int length = hexString.length();
            if (length == 1) {
                hexString = "0" + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase());
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    private static String bytes2Hex(byte[] bArr) {
        String str = "";
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                str = str + "0";
            }
            str = str + hexString;
        }
        return str;
    }

    public static boolean checkPermission(Context context, String str) {
        if (context == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                if (((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() != 0) {
                    return false;
                }
            } catch (Exception e) {
                e.a(context, e);
                return false;
            }
        } else if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static String encryptBySHA1(String str) {
        try {
            try {
                byte[] bytes = str.getBytes();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    messageDigest.update(bytes);
                    return bytes2Hex(messageDigest.digest());
                } catch (Exception unused) {
                    return null;
                }
            } catch (Exception e) {
                if (b.f) {
                    Log.e(TAG, "encrypt by SHA1 e is " + e);
                }
                return null;
            }
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "encrypt by SHA1 e is " + th);
            }
            return null;
        }
    }

    public static String getAppMD5Signature(Context context) {
        PackageInfo packageInfo;
        CertificateFactory certificateFactory;
        X509Certificate x509Certificate;
        if (context == null) {
            return null;
        }
        try {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                packageInfo = null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(packageInfo.signatures[0].toByteArray());
            try {
                certificateFactory = CertificateFactory.getInstance("X509");
            } catch (CertificateException e2) {
                e2.printStackTrace();
                certificateFactory = null;
            }
            try {
                x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
            } catch (CertificateException e3) {
                e3.printStackTrace();
                x509Certificate = null;
            }
            try {
                return byte2HexFormatted(MessageDigest.getInstance("MD5").digest(x509Certificate.getEncoded()));
            } catch (NoSuchAlgorithmException e4) {
                e4.printStackTrace();
                return null;
            } catch (CertificateEncodingException e5) {
                e5.printStackTrace();
                return null;
            }
        } catch (Exception e6) {
            if (b.f) {
                Log.e(TAG, "get app MD5 signature e is " + e6);
            }
            e.a(context, e6);
            return null;
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get app MD5 signature e is " + th);
            }
            e.a(context, th);
            return null;
        }
    }

    public static String getAppName(Context context) {
        StringBuilder sb;
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Exception e) {
            e = e;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("get app name e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
            return null;
        } catch (Throwable th) {
            e = th;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("get app name e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
            return null;
        }
    }

    public static String getAppVersinoCode(Context context, String str) {
        if (context != null && str != null) {
            try {
                return String.valueOf(context.getPackageManager().getPackageInfo(str, 0).versionCode);
            } catch (Exception e) {
                if (b.f) {
                    Log.e(TAG, "get app version code e is " + e);
                }
            } catch (Throwable th) {
                if (b.f) {
                    Log.e(TAG, "get app version code e is " + th);
                }
                return "";
            }
        }
        return "";
    }

    public static String getAppVersionCode(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get app version code e is " + e);
            }
            return "";
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get app version code e is " + th);
            }
            return "";
        }
    }

    public static String getAppVersionName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            if (b.f) {
                Log.e(TAG, "get app version name e is " + e);
            }
            return "";
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get app version name e is " + th);
            }
            return "";
        }
    }

    public static String getAppVersionName(Context context, String str) {
        if (context != null && str != null) {
            try {
                return context.getPackageManager().getPackageInfo(str, 0).versionName;
            } catch (PackageManager.NameNotFoundException e) {
                if (b.f) {
                    Log.e(TAG, "get app version name e is " + e);
                }
                e.a(context, e);
            } catch (Throwable th) {
                if (b.f) {
                    Log.e(TAG, "get app version name e is " + th);
                }
                e.a(context, th);
                return "";
            }
        }
        return "";
    }

    public static synchronized String getAppkey(Context context) {
        if (context == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences == null) {
                return null;
            }
            return sharedPreferences.getString("appkey", null);
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get app key e is " + e);
            }
            e.a(context, e);
            return null;
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get app key e is " + th);
            }
            e.a(context, th);
            return null;
        }
    }

    public static String getAppkeyByXML(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return null;
            }
            String string = applicationInfo.metaData.getString("UMENG_APPKEY");
            if (string != null) {
                return string.trim();
            }
            MLog.e(b.c, "getAppkey failed. the applicationinfo is null!");
            return null;
        } catch (Throwable th) {
            MLog.e(b.c, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", th);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0037 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x002f -> B:28:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Properties getBuildProp() throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        IOException e;
        Properties properties = new Properties();
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
                    try {
                        properties.load(fileInputStream);
                        fileInputStream.close();
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                fileInputStream = null;
                e = e4;
            } catch (Throwable th3) {
                th = th3;
                if (fileInputStream2 != null) {
                }
                throw th;
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        return properties;
    }

    public static String getCPU() {
        String line = null;
        try {
            try {
                FileReader fileReader = new FileReader("/proc/cpuinfo");
                try {
                    BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
                    line = bufferedReader.readLine();
                    bufferedReader.close();
                    fileReader.close();
                } catch (IOException e) {
                    if (b.f) {
                        Log.e(TAG, "Could not read from file /proc/cpuinfo, e is " + e);
                    }
                }
            } catch (FileNotFoundException e2) {
                if (b.f) {
                    Log.e(TAG, "Could not read from file /proc/cpuinfo, e is " + e2);
                }
            }
            return line != null ? line.substring(line.indexOf(58) + 1).trim() : "";
        } catch (Exception e3) {
            if (b.f) {
                Log.e(TAG, "get cpu e is " + e3);
            }
            return "";
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get cpu e is " + th);
            }
            return "";
        }
    }

    public static String getChannel(Context context) {
        if (context == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getString("channel", null);
            }
            return null;
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get channel e is " + e);
            }
            e.a(context, e);
            return null;
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get channel e is " + th);
            }
            e.a(context, th);
            return null;
        }
    }

    public static String getChannelByXML(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return null;
            }
            String string = applicationInfo.metaData.getString("UMENG_CHANNEL");
            if (string != null) {
                return string.trim();
            }
            MLog.e(b.c, "getChannel failed. the applicationinfo is null!");
            return null;
        } catch (Throwable th) {
            MLog.e(b.c, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.", th);
            return null;
        }
    }

    public static String getDeviceToken(Context context) {
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            Class<?> cls = Class.forName("com.umeng.message.MessageSharedPrefs");
            if (cls == null || (method = cls.getMethod("getInstance", Context.class)) == null || (objInvoke = method.invoke(cls, applicationContext)) == null || (method2 = cls.getMethod("getDeviceToken", new Class[0])) == null || (objInvoke2 = method2.invoke(objInvoke, new Object[0])) == null || !(objInvoke2 instanceof String)) {
                return null;
            }
            return (String) objInvoke2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getDeviceType(Context context) {
        if (context == null) {
            return "Phone";
        }
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "Tablet" : "Phone";
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get device type e is " + e);
            }
            e.a(context, e);
            return null;
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get device type e is " + th);
            }
            e.a(context, th);
            return null;
        }
    }

    public static String getDisplayResolution(Context context) {
        if (context == null) {
            return "";
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            return String.valueOf(displayMetrics.heightPixels) + Marker.ANY_MARKER + String.valueOf(i);
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get display resolution e is " + e);
            }
            e.a(context, e);
            return "";
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get display resolution e is " + th);
            }
            e.a(context, th);
            return "";
        }
    }

    private static File getFile(Context context) {
        if (context != null && checkPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") && Environment.getExternalStorageState().equals("mounted")) {
            try {
                return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String getFileMD5(File file) {
        try {
            try {
                byte[] bArr = new byte[1024];
                try {
                    if (!file.isFile()) {
                        return "";
                    }
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    FileInputStream fileInputStream = new FileInputStream(file);
                    while (true) {
                        int i = fileInputStream.read(bArr, 0, 1024);
                        if (i == -1) {
                            fileInputStream.close();
                            return String.format("%1$032x", new BigInteger(1, messageDigest.digest()));
                        }
                        messageDigest.update(bArr, 0, i);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return null;
                }
            } catch (Exception e2) {
                if (b.f) {
                    Log.e(TAG, "get file MD5 e is " + e2);
                }
                return null;
            }
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get file MD5 e is " + th);
            }
            return null;
        }
    }

    private static String getFlymeVersion(Properties properties) {
        try {
            String lowerCase = properties.getProperty("ro.build.display.id").toLowerCase(Locale.getDefault());
            if (lowerCase.contains("flyme os")) {
                return lowerCase.split(o4.OooO00o.OooO0Oo)[2];
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String[] getGPU(GL10 gl10) {
        try {
            return new String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "Could not read gpu infor, e is " + e);
            }
            return new String[0];
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "Could not read gpu infor, e is " + th);
            }
            return new String[0];
        }
    }

    public static String getImsi(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, d.a)) {
                return telephonyManager.getSubscriberId();
            }
            return null;
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get imei e is " + e);
            }
            e.a(context, e);
            return null;
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get imei e is " + th);
            }
            e.a(context, th);
            return null;
        }
    }

    public static String getLastAppkey(Context context) {
        if (context == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getString(KEY_LAST_APP_KEY, null);
            }
            return null;
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get last app key e is " + e);
            }
            e.a(context, e);
            return null;
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get last app key e is " + th);
            }
            e.a(context, th);
            return null;
        }
    }

    public static Locale getLocale(Context context) {
        Locale locale;
        if (context == null) {
            return null;
        }
        try {
            try {
                Configuration configuration = new Configuration();
                configuration.setToDefaults();
                Settings.System.getConfiguration(context.getContentResolver(), configuration);
                locale = configuration.locale;
            } catch (Exception e) {
                try {
                    if (b.f) {
                        Log.e(TAG, "fail to read user config locale, e is " + e);
                    }
                    locale = null;
                } catch (Exception e2) {
                    if (b.f) {
                        Log.e(TAG, "get locale e is " + e2);
                    }
                    e.a(context, e2);
                    return null;
                }
            }
            return locale == null ? Locale.getDefault() : locale;
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get locale e is " + th);
            }
            e.a(context, th);
            return null;
        }
    }

    public static String getMac(Context context) {
        if (context == null) {
            return null;
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            if (!b.f) {
                return "";
            }
            Log.e(TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            return "";
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get mac e is " + e);
            }
            e.a(context, e);
            return null;
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get mac e is " + th);
            }
            e.a(context, th);
            return null;
        }
    }

    public static String[] getNetworkAccessMode(Context context) {
        StringBuilder sb;
        String[] strArr = {"", ""};
        if (context == null) {
            return strArr;
        }
        try {
        } catch (Exception e) {
            e = e;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("get network access mode e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
        } catch (Throwable th) {
            e = th;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("get network access mode e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
        }
        if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            strArr[0] = "";
            return strArr;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            strArr[0] = "";
            return strArr;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "Wi-Fi";
            return strArr;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "2G/3G";
            strArr[1] = networkInfo2.getSubtypeName();
            return strArr;
        }
        return strArr;
    }

    public static String getNetworkOperatorName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return (checkPermission(context, d.a) && telephonyManager != null) ? telephonyManager.getNetworkOperatorName() : "";
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get network operator e is " + e);
            }
            e.a(context, e);
            return "";
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get network operator e is " + th);
            }
            e.a(context, th);
            return "";
        }
    }

    public static String getOperator(Context context) {
        StringBuilder sb;
        if (context == null) {
            return "Unknown";
        }
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e) {
            e = e;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("get get operator e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
            return "Unknown";
        } catch (Throwable th) {
            e = th;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("get get operator e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
            return "Unknown";
        }
    }

    public static String getRegisteredOperator(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, d.a)) {
                return telephonyManager.getNetworkOperator();
            }
            return null;
        } catch (Exception e) {
            if (b.f) {
                Log.e(TAG, "get registered operator e is " + e);
            }
            e.a(context, e);
            return null;
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get registered operator e is " + th);
            }
            e.a(context, th);
            return null;
        }
    }

    public static String getSubOSName(Context context) {
        String str;
        if (context == null) {
            return null;
        }
        try {
            try {
                Properties buildProp = getBuildProp();
                try {
                    String property = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
                    if (!TextUtils.isEmpty(property)) {
                        str = w4.OooO0O0;
                    } else if (isFlyMe()) {
                        str = "Flyme";
                    } else {
                        if (TextUtils.isEmpty(getYunOSVersion(buildProp))) {
                            return property;
                        }
                        str = "YunOS";
                    }
                    return str;
                } catch (Exception e) {
                    e.a(context, e);
                    return null;
                }
            } catch (Throwable th) {
                if (b.f) {
                    Log.e(TAG, "get sub os name e is " + th);
                }
                e.a(context, th);
                return null;
            }
        } catch (Exception e2) {
            if (b.f) {
                Log.e(TAG, "get sub os name e is " + e2);
            }
            e.a(context, e2);
            return null;
        }
    }

    public static String getSubOSVersion(Context context) {
        if (context == null) {
            return null;
        }
        try {
            try {
                Properties buildProp = getBuildProp();
                try {
                    String property = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
                    if (TextUtils.isEmpty(property)) {
                        try {
                            return isFlyMe() ? getFlymeVersion(buildProp) : getYunOSVersion(buildProp);
                        } catch (Exception unused) {
                        }
                    }
                    return property;
                } catch (Exception e) {
                    e.a(context, e);
                    return null;
                }
            } catch (Throwable th) {
                if (b.f) {
                    Log.e(TAG, "get sub os version e is " + th);
                }
                e.a(context, th);
                return null;
            }
        } catch (Exception e2) {
            if (b.f) {
                Log.e(TAG, "get sub os version e is " + e2);
            }
            e.a(context, e2);
            return null;
        }
    }

    public static String getUMId(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return UMEnvelopeBuild.imprintProperty(context.getApplicationContext(), v.e, null);
        } catch (Exception e) {
            e.a(context, e);
            return null;
        }
    }

    public static String getUTDID(Context context) {
        if (context == null) {
            return null;
        }
        try {
            try {
                try {
                    return (String) Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", Context.class).invoke(null, context.getApplicationContext());
                } catch (Exception unused) {
                    return readUTDId(context);
                }
            } catch (Exception e) {
                if (b.f) {
                    Log.e(TAG, "get utiid e is " + e);
                }
                return null;
            }
        } catch (Throwable th) {
            if (b.f) {
                Log.e(TAG, "get utiid e is " + th);
            }
            return null;
        }
    }

    private static String getYunOSVersion(Properties properties) {
        String property = properties.getProperty("ro.yunos.version");
        if (TextUtils.isEmpty(property)) {
            return null;
        }
        return property;
    }

    public static boolean isDebug(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e) {
            e.a(context, e);
            return false;
        }
    }

    private static boolean isFlyMe() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isSdCardWrittenable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    private static String parseId(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    private static String readStreamToString(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        char[] cArr = new char[1024];
        StringWriter stringWriter = new StringWriter();
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (-1 == i) {
                return stringWriter.toString();
            }
            stringWriter.write(cArr, 0, i);
        }
    }

    private static String readUTDId(Context context) {
        File file;
        if (context != null && (file = getFile(context)) != null && file.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    return parseId(readStreamToString(fileInputStream));
                } finally {
                    safeClose(fileInputStream);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static void safeClose(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized void setAppkey(Context context, String str) {
        if (context != null) {
            if (str != null) {
                try {
                    try {
                        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
                        if (sharedPreferences != null) {
                            sharedPreferences.edit().putString("appkey", str).commit();
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (b.f) {
                            Log.e(TAG, "set app key e is " + th);
                        }
                        e.a(context, th);
                    }
                } catch (Exception e) {
                    th = e;
                    if (b.f) {
                        Log.e(TAG, "set app key e is " + th);
                    }
                    e.a(context, th);
                }
            }
        }
    }

    public static void setChannel(Context context, String str) {
        StringBuilder sb;
        if (context == null || str == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString("channel", str).commit();
            }
        } catch (Exception e) {
            e = e;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("set channel e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
        } catch (Throwable th) {
            e = th;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("set channel e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
        }
    }

    public static void setLastAppkey(Context context, String str) {
        StringBuilder sb;
        if (context == null || str == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString(KEY_LAST_APP_KEY, str).commit();
            }
        } catch (Exception e) {
            e = e;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("set last app key e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
        } catch (Throwable th) {
            e = th;
            if (b.f) {
                sb = new StringBuilder();
                sb.append("set last app key e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
            e.a(context, e);
        }
    }
}

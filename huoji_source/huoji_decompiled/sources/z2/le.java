package z2;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.cyjh.mobileanjian.ipc.utils.RomUtils;
import com.sun.mail.pop3.POP3Message;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.io.FileUtils;

/* JADX INFO: loaded from: classes.dex */
public final class le {
    private static le OooOOO = null;
    private static final File OooOOOO = new File(Environment.getExternalStorageDirectory(), ".oldmarkuser");
    private static final String OooOOOo = "com.cyjh.mobileanjian";
    public final boolean OooO;
    public final String OooO00o;
    public final String OooO0O0 = Build.VERSION.RELEASE;
    public final String OooO0OO;
    public final String OooO0Oo;
    public final String OooO0o;
    public final String OooO0o0;
    public final String OooO0oO;
    public final String OooO0oo;
    public final String OooOO0;
    public final String OooOO0O;
    public final boolean OooOO0o;
    public final boolean OooOOO0;

    private le(Context context, String str, String str2) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        String macAddress = POP3Message.UNKNOWN;
        if (connectionInfo != null && connectionInfo.getMacAddress() != null) {
            macAddress = connectionInfo.getMacAddress();
        }
        this.OooO0OO = OooO0OO(macAddress);
        String knownRomVersion = RomUtils.getKnownRomVersion();
        this.OooO0Oo = knownRomVersion;
        this.OooO00o = RomUtils.isEmulator() ? knownRomVersion : String.format("%s %s", Build.BRAND, Build.MODEL);
        this.OooO0oO = lg.OooO00o(context);
        this.OooOO0O = lg.OooO0O0(context);
        String packageName = context.getPackageName();
        this.OooO0o = packageName;
        this.OooOOO0 = "com.cyjh.mobileanjian".equals(packageName);
        this.OooO = false;
        this.OooO0oo = str;
        this.OooOO0 = str2;
        File file = OooOOOO;
        boolean z = !file.exists();
        this.OooOO0o = z;
        if (z) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String fileToString = null;
        try {
            File file2 = new File("/proc/version");
            if (file2.exists() && file2.canRead()) {
                fileToString = FileUtils.readFileToString(file2);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        this.OooO0o0 = TextUtils.isEmpty(fileToString) ? "Unknown" : fileToString;
    }

    public static le OooO00o() {
        return OooOOO;
    }

    private static String OooO0O0(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        return (connectionInfo == null || connectionInfo.getMacAddress() == null) ? POP3Message.UNKNOWN : connectionInfo.getMacAddress();
    }

    private static final String OooO0OO(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & 255);
                while (hexString.length() < 2) {
                    hexString = "0".concat(String.valueOf(hexString));
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return str;
        }
    }

    public static void OooO0Oo(Context context, String str, String str2) {
        if (OooOOO != null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        OooOOO = new le(context, str, str2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("手机型号: ");
        sb.append(this.OooO00o);
        sb.append("\nLinux: ");
        sb.append(this.OooO0o0);
        sb.append("\nMAC的MD5: ");
        sb.append(this.OooO0OO);
        sb.append("\n安卓版本: ");
        sb.append(this.OooO0O0);
        sb.append("\n定制安卓: ");
        sb.append(this.OooO0Oo);
        sb.append("\n应用名称: ");
        sb.append(this.OooO0oO);
        sb.append("\n应用包名: ");
        sb.append(this.OooO0o);
        sb.append("\n应用版本: ");
        sb.append(this.OooOO0O);
        sb.append("\n唯一标识: ");
        sb.append(this.OooO0oo);
        sb.append("\n精灵版本: ");
        sb.append(this.OooOO0);
        sb.append("\n产品形态: UNKNOWN\n是否付费: ");
        sb.append(this.OooO ? "免费" : "收费");
        sb.append("\n");
        return sb.toString();
    }
}

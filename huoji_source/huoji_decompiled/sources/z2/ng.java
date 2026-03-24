package z2;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public final class ng {
    public static String OooO00o(@NonNull Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        return connectionInfo == null ? "" : connectionInfo.getMacAddress();
    }

    private static String OooO0O0(@NonNull Context context) {
        String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        return (deviceId == null || deviceId.equals("")) ? OooO00o(context) : deviceId;
    }
}

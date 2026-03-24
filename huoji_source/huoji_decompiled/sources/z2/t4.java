package z2;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes.dex */
public class t4 {
    private static final int OooO = 17;
    private static ConnectivityManager OooO00o = null;
    public static final int OooO0O0 = 1;
    public static final int OooO0OO = 4;
    public static final int OooO0Oo = 3;
    public static final int OooO0o = 5;
    public static final int OooO0o0 = 2;
    public static final int OooO0oO = -1;
    private static final int OooO0oo = 16;
    private static final int OooOO0 = 18;
    private static final int OooOO0O = 1;

    private t4() {
        throw new UnsupportedOperationException("cannot be instantiated");
    }

    public static boolean OooO(Context context) {
        NetworkInfo networkInfoOooO00o = OooO00o(context);
        return networkInfoOooO00o != null && networkInfoOooO00o.isAvailable() && networkInfoOooO00o.getSubtype() == 13;
    }

    private static NetworkInfo OooO00o(Context context) {
        if (OooO00o == null) {
            OooO00o = (ConnectivityManager) context.getSystemService("connectivity");
        }
        return OooO00o.getActiveNetworkInfo();
    }

    public static boolean OooO0O0(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0044 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int OooO0OO(Context context) {
        NetworkInfo networkInfoOooO00o = OooO00o(context);
        if (networkInfoOooO00o == null || !networkInfoOooO00o.isAvailable()) {
            return -1;
        }
        if (networkInfoOooO00o.getType() == 1) {
            return 1;
        }
        if (networkInfoOooO00o.getType() != 0) {
            return 5;
        }
        switch (networkInfoOooO00o.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return 3;
            case 13:
            case 18:
                return 4;
            default:
                String subtypeName = networkInfoOooO00o.getSubtypeName();
                if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                    return 5;
                }
                break;
        }
    }

    public static int OooO0Oo(Context context) {
        int iOooO0OO = OooO0OO(context);
        if (iOooO0OO == -1) {
            return 5;
        }
        int i = 1;
        if (iOooO0OO != 1) {
            i = 2;
            if (iOooO0OO != 2) {
                i = 3;
                if (iOooO0OO != 3) {
                    i = 4;
                    if (iOooO0OO != 4) {
                        return 0;
                    }
                }
            }
        }
        return i;
    }

    public static String OooO0o(Context context) {
        TelephonyManager telephonyManagerOooO0oo = OooO0oo(context);
        if (telephonyManagerOooO0oo != null) {
            return telephonyManagerOooO0oo.getNetworkOperatorName();
        }
        return null;
    }

    public static String OooO0o0(Context context) {
        int iOooO0OO = OooO0OO(context);
        return iOooO0OO != -1 ? iOooO0OO != 1 ? iOooO0OO != 2 ? iOooO0OO != 3 ? iOooO0OO != 4 ? "unknow" : "4g" : "3g" : "2g" : "wf" : "ethernet";
    }

    public static int OooO0oO(Context context) {
        TelephonyManager telephonyManagerOooO0oo = OooO0oo(context);
        if (telephonyManagerOooO0oo != null) {
            return telephonyManagerOooO0oo.getPhoneType();
        }
        return -1;
    }

    public static TelephonyManager OooO0oo(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    public static boolean OooOO0(Context context) {
        NetworkInfo networkInfoOooO00o = OooO00o(context);
        return networkInfoOooO00o != null && networkInfoOooO00o.isAvailable();
    }

    public static boolean OooOO0O(Context context) {
        NetworkInfo networkInfoOooO00o = OooO00o(context);
        return networkInfoOooO00o != null && networkInfoOooO00o.isConnected();
    }

    public static boolean OooOO0o(Context context) {
        NetworkInfo networkInfoOooO00o = OooO00o(context);
        return networkInfoOooO00o != null && networkInfoOooO00o.getType() == 1;
    }

    public static void OooOOO0(Context context) {
        context.startActivity(Build.VERSION.SDK_INT > 10 ? new Intent("android.settings.SETTINGS") : new Intent("android.settings.WIRELESS_SETTINGS"));
    }
}

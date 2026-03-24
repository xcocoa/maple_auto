package com.octopus.ad.internal.utilities;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.anythink.expressad.foundation.g.a;
import com.octopus.ad.ADBidEvent;
import com.octopus.ad.b.e;
import com.octopus.ad.utils.b.d;
import com.octopus.ad.utils.b.l;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceInfoUtil {
    public static String ETHERNET_SERVICE = "ethernet";
    public static int SCREEN_DECIMAL_DIGITS = 2;

    private static void getIdentifiersAndDevType(Context context, DeviceInfo deviceInfo) {
        try {
            deviceInfo.devType = ((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getPhoneType() != 0 ? e.b.DEVICE_PHONE : e.b.DEVICE_FLAT;
        } catch (SecurityException unused) {
            HaoboLog.e(HaoboLog.baseLogTag, "No permission to access imei");
            int i = context.getResources().getConfiguration().screenLayout & 15;
            deviceInfo.devType = (i == 4 || i == 3) ? e.b.DEVICE_FLAT : e.b.DEVICE_PHONE;
        }
        deviceInfo.root = l.a();
    }

    private static void getScreenInformations(Context context, DeviceInfo deviceInfo) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        deviceInfo.resolution = displayMetrics.widthPixels + "_" + displayMetrics.heightPixels;
        float f = ((float) displayMetrics.heightPixels) / displayMetrics.ydpi;
        float f2 = ((float) displayMetrics.widthPixels) / displayMetrics.xdpi;
        double dSqrt = Math.sqrt((double) ((f2 * f2) + (f * f)));
        deviceInfo.screenSize = String.format("%.2f", Double.valueOf(Math.round(dSqrt * r2) / Math.pow(10.0d, (double) SCREEN_DECIMAL_DIGITS)));
    }

    private static void getSdkUID(Context context, DeviceInfo deviceInfo) {
        String str = (String) SPUtils.get(context, DeviceInfo.SDK_UID_KEY_NEW, "");
        deviceInfo.sdkUID = str;
        if (TextUtils.isEmpty(str)) {
            deviceInfo.generateSdkUID(context);
        }
    }

    public static void retrieveDeviceInfo(Context context) {
        DeviceInfo deviceInfo = DeviceInfo.getInstance();
        if (TextUtils.isEmpty(deviceInfo.sdkUID)) {
            try {
                getIdentifiersAndDevType(context, deviceInfo);
                getScreenInformations(context, deviceInfo);
                getSdkUID(context, deviceInfo);
                deviceInfo.getMarks(context);
                if (!TextUtils.isEmpty(deviceInfo.manufacturer) && (deviceInfo.manufacturer.equalsIgnoreCase(ADBidEvent.HUAWEI) || deviceInfo.manufacturer.equalsIgnoreCase("HONOR"))) {
                    deviceInfo.agVercode = l.k(context);
                    deviceInfo.hmsVercode = l.l(context);
                }
                deviceInfo.wxInstalled = d.a(context, a.bC);
                deviceInfo.appList = l.b(context);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}

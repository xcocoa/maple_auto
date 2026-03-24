package com.octopus.ad.internal.utilities;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.octopus.ad.R;
import com.octopus.ad.b.e;
import com.octopus.ad.internal.m;
import com.octopus.ad.utils.b.l;
import java.util.Calendar;
import java.util.Locale;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceInfo {
    public static String SDK_UID_KEY = "SDK_UID_KEY";
    public static String SDK_UID_KEY_NEW = "SDK_UID_KEY_NEW";
    private static final int algorithmVersion = 1;
    public static String density;
    public static String densityDpi;
    public static String harddiskSizeByte;
    public static String physicalMemoryByte;
    private static DeviceInfo sDeviceInfoInstance;
    public String agVercode;
    public String appList;
    public String bootMark;
    public String hmsVercode;
    public String root;
    public String updateMark;
    public boolean wxInstalled;
    public String sdkUID = null;
    public boolean firstLaunch = false;
    public final String os = Build.VERSION.SDK_INT + " (" + Build.VERSION.RELEASE + ")";
    public e.b devType = e.b.DEVICE_OTHER;
    public final String brand = Build.BRAND;
    public final String model = Build.MODEL;
    public final String manufacturer = Build.MANUFACTURER;
    public String resolution = null;
    public String screenSize = null;
    public final String language = Locale.getDefault().getLanguage();

    static {
        try {
            System.loadLibrary("octopus");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        sDeviceInfoInstance = null;
    }

    private DeviceInfo() {
    }

    private String generateCurrentTimeMillis() {
        Calendar calendar = Calendar.getInstance(Locale.CHINA);
        calendar.clear();
        calendar.set(2020, 0, 1, 0, 0, 0);
        return String.valueOf(System.currentTimeMillis() - calendar.getTimeInMillis());
    }

    private String generateFourDigitRandom() {
        Random random = new Random();
        return "" + random.nextInt(10) + random.nextInt(10) + random.nextInt(10) + random.nextInt(10);
    }

    public static DeviceInfo getInstance() {
        DeviceInfo deviceInfo;
        synchronized (DeviceInfo.class) {
            if (sDeviceInfoInstance == null) {
                sDeviceInfoInstance = new DeviceInfo();
                HaoboLog.v(HaoboLog.baseLogTag, HaoboLog.getString(R.string.init));
                density = m.a().h.getResources().getDisplayMetrics().density + "";
                densityDpi = m.a().h.getResources().getDisplayMetrics().densityDpi + "";
                physicalMemoryByte = l.j(m.a().h);
                harddiskSizeByte = l.b();
            }
            deviceInfo = sDeviceInfoInstance;
        }
        return deviceInfo;
    }

    public void generateSdkUID(Context context) {
        String strGenerateFourDigitRandom = generateFourDigitRandom();
        String strGenerateCurrentTimeMillis = generateCurrentTimeMillis();
        String str = StringUtil.md5(this.brand + "_" + this.model + "_" + l.d(context) + "_1_" + strGenerateFourDigitRandom + "_" + strGenerateCurrentTimeMillis) + "_1_" + strGenerateFourDigitRandom + "_" + strGenerateCurrentTimeMillis;
        this.sdkUID = str;
        SPUtils.put(context, SDK_UID_KEY_NEW, str);
    }

    public native String getBootMark();

    public void getMarks(Context context) {
        try {
            int i = SPUtils.getInt(context, "SystemMarkStatus", 0);
            Log.e("OctopusAd", "getMarks status= " + i);
            int i2 = 1;
            if (i == 1) {
                SPUtils.putInt(context, "SystemMarkStatus", 3);
                SPUtils.put(context, "SystemMarkStatusExpireTime", Long.valueOf(System.currentTimeMillis()));
                i = 3;
            }
            if (i == 0 || i == 2) {
                SPUtils.putInt(context, "SystemMarkStatus", 1);
            } else {
                i2 = i;
            }
            if (i2 == 3) {
                Long l = (Long) SPUtils.get(context, "SystemMarkStatusExpireTime", Long.valueOf(Long.parseLong("0")));
                if (l.longValue() == 0 || Long.valueOf(System.currentTimeMillis() - l.longValue()).longValue() <= -1702967296) {
                    return;
                }
                SPUtils.putInt(context, "SystemMarkStatus", 0);
                SPUtils.put(context, "SystemMarkStatusExpireTime", Long.valueOf(Long.parseLong("0")));
                Log.d("OctopusAd", "bootMark expireTime= null and status = 0");
                return;
            }
            String bootMark = getBootMark();
            if (bootMark != null) {
                this.bootMark = bootMark.substring(0, Math.min(36, bootMark.length()));
            }
            this.updateMark = getUpdateMark();
            SPUtils.putInt(context, "SystemMarkStatus", 2);
            Log.e("OctopusAd", "bootMark = " + this.bootMark + ",updateMark = " + this.updateMark);
        } catch (Throwable th) {
            th.printStackTrace();
            Log.d("OctopusAd", "Exception：" + th.getMessage());
        }
    }

    public native String getUpdateMark();
}

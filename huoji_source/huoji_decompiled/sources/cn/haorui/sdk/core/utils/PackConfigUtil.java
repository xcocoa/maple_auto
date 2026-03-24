package cn.haorui.sdk.core.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.HRConfig;
import cn.haorui.sdk.core.utils.PackageBean;
import com.anythink.china.common.d;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.umeng.commonsdk.proguard.v;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class PackConfigUtil {
    private static String PACKAGEKEY = "packageKey";
    private static final String TAG = "PackConfigUtil";
    private static String androidId;
    public static PackageBean.DClick dclk;
    private static String imei;
    private static String packageName;
    public static PckIdBean requirePck;

    public static class a implements HttpGetJsonCallback<OriginalResponse> {
        public final /* synthetic */ Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // cn.haorui.sdk.core.utils.HttpGetJsonCallback
        public void onFailure(@NotNull IOException iOException) {
            LogUtil.e(PackConfigUtil.TAG, iOException.toString());
            try {
                String string = AdSdk.getSharedPreferences().getString(PackConfigUtil.PACKAGEKEY, "");
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                PackConfigUtil.checkPck(this.a, (PackageBean) new Gson().fromJson(string, PackageBean.class));
            } catch (JsonSyntaxException e) {
                e.printStackTrace();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0031 A[Catch: Exception -> 0x004a, TRY_LEAVE, TryCatch #0 {Exception -> 0x004a, blocks: (B:3:0x0002, B:6:0x000c, B:11:0x002b, B:13:0x0031, B:8:0x0016, B:10:0x001e), top: B:18:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        @Override // cn.haorui.sdk.core.utils.HttpGetJsonCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onResponse(OriginalResponse originalResponse) {
            String string;
            OriginalResponse originalResponse2 = originalResponse;
            try {
                String str = "";
                if (originalResponse2.getCode() != 200) {
                    if (originalResponse2.getCode() == 304) {
                        string = AdSdk.getSharedPreferences().getString(PackConfigUtil.PACKAGEKEY, "");
                    }
                    if (TextUtils.isEmpty(str)) {
                        PackageBean packageBean = (PackageBean) new Gson().fromJson(str, PackageBean.class);
                        PackConfigUtil.dclk = packageBean.getDclk();
                        PackConfigUtil.checkPck(this.a, packageBean);
                        return;
                    }
                    return;
                }
                string = SecurityHelper.decryptAES(originalResponse2.getBody());
                str = string;
                if (TextUtils.isEmpty(str)) {
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static class b implements HttpGetJsonCallback<OriginalResponse> {
        @Override // cn.haorui.sdk.core.utils.HttpGetJsonCallback
        public void onFailure(@NotNull IOException iOException) {
            LogUtil.e(PackConfigUtil.TAG, iOException.toString());
        }

        @Override // cn.haorui.sdk.core.utils.HttpGetJsonCallback
        public void onResponse(OriginalResponse originalResponse) {
            LogUtil.e(PackConfigUtil.TAG, originalResponse.getBody());
        }
    }

    private static void checkAndReportResult(Context context, List<PackageBean.AppBean.PackBean> list, List<PackageBean.AppBean.PackBean> list2, Integer num, String str, String str2) {
        try {
            requirePck = getPackBean(context, list, num.intValue());
            String strEncryptAES = SecurityHelper.encryptAES(generateData(context, getPackBean(context, list2, num.intValue()), str));
            HashMap map = new HashMap();
            map.put("data", strEncryptAES);
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            HttpUtil.asyncRequestJson(str2, null, map, null, new b());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkPck(Context context, PackageBean packageBean) {
        if (packageBean != null) {
            String ver = packageBean.getVer();
            PackageBean.AppBean app = packageBean.getApp();
            if (app != null) {
                String url = app.getUrl();
                List<PackageBean.AppBean.PackBean> required = app.getRequired();
                List<PackageBean.AppBean.PackBean> others = app.getOthers();
                if (required.isEmpty() && others.isEmpty()) {
                    return;
                }
                checkAndReportResult(context, required, others, app.getTtl(), ver, url);
                try {
                    AdSdk.getSharedPreferences().edit().putString(PACKAGEKEY, new Gson().toJson(packageBean)).commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String generateData(Context context, PckIdBean pckIdBean, String str) {
        HashMap map = new HashMap();
        map.put("app_id", AdSdk.adConfig().appId());
        if (!TextUtils.isEmpty("1.4.6.8")) {
            map.put("sdk_version", "1.4.6.8");
            map.put("sdk_version_code", Long.toString(1040608L));
        }
        getPackageName(context);
        if (!TextUtils.isEmpty(packageName)) {
            map.put("app_package", packageName);
        }
        String str2 = Build.MANUFACTURER;
        if (!TextUtils.isEmpty(str2)) {
            map.put(v.C, str2);
        }
        String str3 = Build.BRAND;
        if (!TextUtils.isEmpty(str3)) {
            map.put(v.A, str3);
        }
        String str4 = Build.MODEL;
        if (!TextUtils.isEmpty(str4)) {
            map.put("device_model", str4);
        }
        Locale locale = getLocale(context);
        if (locale != null) {
            map.put(v.J, locale.getCountry());
            map.put("language", locale.getLanguage());
        }
        map.put("init_uuid", HRConfig.initUUID());
        map.put("init_time", Long.toString(HRConfig.initTime()));
        map.put("ver", str);
        if (!TextUtils.isEmpty(AdSdk.getLocalOaid())) {
            map.put("device_oaid", AdSdk.getLocalOaid());
        }
        if (AdSdk.adConfig().customController() == null || !AdSdk.adConfig().customController().isCanUseAndroidId() || AdSdk.adConfig().customController().getAndroidId() == null) {
            getAndroidId(context);
        } else {
            androidId = AdSdk.adConfig().customController().getAndroidId();
        }
        if (!TextUtils.isEmpty(androidId)) {
            map.put("device_adid", androidId);
        }
        if (AdSdk.adConfig().customController() == null) {
            getImei(context);
            if (!TextUtils.isEmpty(imei)) {
            }
        } else if (AdSdk.adConfig().customController().enablePersonalRecommend()) {
            getImei(context);
            if (!TextUtils.isEmpty(imei)) {
                map.put("device_imei", imei);
            }
        }
        String app_y = requirePck.getApp_y();
        if (!TextUtils.isEmpty(pckIdBean.getApp_y())) {
            app_y = app_y + "." + pckIdBean.getApp_y();
        }
        String app_n = requirePck.getApp_n();
        if (!TextUtils.isEmpty(pckIdBean.getApp_n())) {
            app_n = app_n + "." + pckIdBean.getApp_n();
        }
        if (!TextUtils.isEmpty(app_y)) {
            if (app_y.startsWith(".")) {
                app_y = app_y.substring(1);
            }
            map.put("app_y", app_y);
        }
        if (!TextUtils.isEmpty(app_n)) {
            if (app_n.startsWith(".")) {
                app_n = app_n.substring(1);
            }
            map.put("app_n", app_n);
        }
        return new Gson().toJson(map);
    }

    public static String getAndroidId(Context context) {
        if (TextUtils.isEmpty(androidId)) {
            androidId = Settings.System.getString(context.getContentResolver(), "android_id");
        }
        return String.valueOf(androidId);
    }

    public static void getConfig(Context context) {
        PackageBean packageBean;
        String string = AdSdk.getSharedPreferences().getString(PACKAGEKEY, "");
        HashMap map = new HashMap();
        map.put("app_id", AdSdk.adConfig().appId());
        if (!TextUtils.isEmpty("1.4.6.8")) {
            map.put("sdk_version", "1.4.6.8");
            map.put("sdk_version_code", Long.toString(1040608L));
        }
        getPackageName(context);
        if (!TextUtils.isEmpty(packageName)) {
            map.put("app_package", packageName);
        }
        if (!TextUtils.isEmpty(AdSdk.getLocalOaid())) {
            map.put("device_oaid", AdSdk.getLocalOaid());
        }
        if (AdSdk.adConfig().customController() == null || !AdSdk.adConfig().customController().isCanUseAndroidId() || AdSdk.adConfig().customController().getAndroidId() == null) {
            getAndroidId(context);
        } else {
            androidId = AdSdk.adConfig().customController().getAndroidId();
        }
        if (!TextUtils.isEmpty(androidId)) {
            map.put("device_adid", androidId);
        }
        String str = Build.MANUFACTURER;
        if (!TextUtils.isEmpty(str)) {
            map.put(v.C, str);
        }
        String str2 = Build.BRAND;
        if (!TextUtils.isEmpty(str2)) {
            map.put(v.A, str2);
        }
        String str3 = Build.MODEL;
        if (!TextUtils.isEmpty(str3)) {
            map.put("device_model", str3);
        }
        Locale locale = getLocale(context);
        if (locale != null) {
            map.put(v.J, locale.getCountry());
            map.put("language", locale.getLanguage());
        }
        map.put("init_uuid", HRConfig.initUUID());
        map.put("init_time", Long.toString(HRConfig.initTime()));
        Gson gson = new Gson();
        if (!TextUtils.isEmpty(string) && (packageBean = (PackageBean) gson.fromJson(string, PackageBean.class)) != null && !TextUtils.isEmpty(packageBean.getVer())) {
            map.put("ver", packageBean.getVer());
        }
        String json = gson.toJson(map);
        try {
            json = SecurityHelper.encryptAES(json);
        } catch (Exception e) {
            e.printStackTrace();
        }
        HashMap map2 = new HashMap();
        map2.put("message", json);
        HttpUtil.asyncRequestJson(AdSdk.adConfig().isTest() ? HRConstants.HR_DYNC_TEST : HRConstants.HR_DYNC_PROD, null, map2, null, new a(context));
    }

    public static String getImei(Context context) {
        try {
            if (TextUtils.isEmpty(imei)) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (ContextCompat.checkSelfPermission(context, d.a) == 0) {
                    int i = Build.VERSION.SDK_INT;
                    imei = i >= 29 ? null : i >= 26 ? telephonyManager.getImei() : telephonyManager.getDeviceId();
                }
            }
        } catch (Exception unused) {
        }
        return imei;
    }

    private static Locale getLocale(Context context) {
        return context.getResources().getConfiguration().locale;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static PckIdBean getPackBean(Context context, List<PackageBean.AppBean.PackBean> list, int i) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        if (list != null && list.size() > 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                PackageBean.AppBean.PackBean packBean = list.get(i2);
                String app_package = packBean.getApp_package();
                if (System.currentTimeMillis() - (packBean.getLastCheckTime() / 1000) > i) {
                    if (TextUtils.isEmpty(app_package) || app_package.contains("://")) {
                        try {
                        } catch (URISyntaxException e) {
                            e.printStackTrace();
                        }
                        z = Intent.parseUri(app_package, 0).resolveActivity(AdSdk.getContext().getPackageManager()) != null;
                    } else {
                        try {
                            if (context.getPackageManager().getPackageInfo(app_package, 256) != null) {
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (z) {
                        if (!TextUtils.isEmpty(packBean.getId())) {
                            packBean.setInstalled(true);
                            if (i2 != 0) {
                                sb.append(".");
                            }
                            sb.append(packBean.getId());
                        }
                    } else if (!TextUtils.isEmpty(packBean.getId())) {
                        if (i2 != 0) {
                            sb2.append(".");
                        }
                        sb2.append(packBean.getId());
                    }
                    packBean.setLastCheckTime(System.currentTimeMillis());
                } else if (!TextUtils.isEmpty(packBean.getId())) {
                    if (packBean.getInstalled()) {
                        if (i2 != 0) {
                            sb.append(".");
                        }
                        sb.append(packBean.getId());
                    } else {
                        if (i2 != 0) {
                            sb2.append(".");
                        }
                        sb2.append(packBean.getId());
                    }
                }
            }
        }
        PckIdBean pckIdBean = new PckIdBean();
        pckIdBean.setApp_y(sb.toString());
        pckIdBean.setApp_n(sb2.toString());
        return pckIdBean;
    }

    private static String getPackageName(Context context) {
        if (TextUtils.isEmpty(packageName)) {
            packageName = context.getPackageName();
        }
        return packageName;
    }
}

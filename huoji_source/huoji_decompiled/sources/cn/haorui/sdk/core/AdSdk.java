package cn.haorui.sdk.core;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import androidx.annotation.NonNull;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.oaid.impl.f;
import cn.haorui.sdk.core.oaid.impl.g;
import cn.haorui.sdk.core.oaid.impl.h;
import cn.haorui.sdk.core.oaid.impl.i;
import cn.haorui.sdk.core.oaid.impl.j;
import cn.haorui.sdk.core.oaid.impl.k;
import cn.haorui.sdk.core.oaid.impl.m;
import cn.haorui.sdk.core.oaid.impl.n;
import cn.haorui.sdk.core.oaid.impl.o;
import cn.haorui.sdk.core.oaid.impl.p;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.LocalThreadPools;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.PackConfigUtil;
import cn.haorui.sdk.core.utils.RequestUtil;
import com.octopus.ad.ADBidEvent;
import z2.w4;

/* JADX INFO: loaded from: classes.dex */
public class AdSdk {
    private static final String TAG = "AdSdk";
    private static HRConfig adConfig = null;
    private static Context context = null;
    private static String local_oaid = null;
    private static String oaid = null;
    private static int oaid_errno = -1;

    public static class a implements cn.haorui.sdk.core.oaid.a {
        public void a(String str) {
            String unused = AdSdk.local_oaid = str;
            AdSdk.getSharedPreferences().edit().putString("local_oaid", str).apply();
        }
    }

    public static class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            PackConfigUtil.getConfig(AdSdk.context);
            AdSdk.initUA();
        }
    }

    public static HRConfig adConfig() {
        HRConfig hRConfig = adConfig;
        if (hRConfig != null) {
            return hRConfig;
        }
        throw new RuntimeException("SDK IS NOT INITED");
    }

    public static Context getContext() {
        return context;
    }

    public static String getLocalOaid() {
        if ((TextUtils.isEmpty(local_oaid) || "unknown".equals(local_oaid)) && adConfig().customController() != null) {
            local_oaid = adConfig().customController().getOaid();
        }
        return local_oaid;
    }

    public static String getOaid() {
        if (TextUtils.isEmpty(oaid) && adConfig().customController() != null) {
            oaid = adConfig().customController().getOaid();
        }
        return oaid;
    }

    public static int getOaid_errno() {
        return oaid_errno;
    }

    public static SharedPreferences getSharedPreferences() {
        return context.getApplicationContext().getSharedPreferences("AdSailSdk", 0);
    }

    public static String getVersionName() {
        return "1.4.6.8";
    }

    public static void init(Context context2, @NonNull HRConfig hRConfig) {
        try {
        } catch (Exception e) {
            adConfig = null;
            e.printStackTrace();
            LogUtil.e(TAG, "SDK INIT ERROR");
        }
        if (adConfig != null) {
            return;
        }
        if (hRConfig == null) {
            throw new IllegalArgumentException("config is null");
        }
        context = context2.getApplicationContext();
        adConfig = hRConfig;
        cn.haorui.sdk.core.a.a(HRConstants.PLATFORM_HR).config().init(context2, adConfig.appId(), "");
        LogUtil.d(TAG, "hr init start");
        initPackConfig();
        HRConfig hRConfig2 = adConfig;
        if (hRConfig2 == null || !hRConfig2.enableOaid()) {
            local_oaid = "unknown";
        } else {
            initLocalOaid();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void initLocalOaid() {
        cn.haorui.sdk.core.oaid.b hVar;
        cn.haorui.sdk.core.oaid.b jVar;
        StringBuilder sb;
        Class cls;
        if (Build.VERSION.SDK_INT < 28) {
            return;
        }
        String string = getSharedPreferences().getString("local_oaid", "");
        if (!TextUtils.isEmpty(string)) {
            local_oaid = string;
        }
        Context applicationContext = context;
        a aVar = new a();
        if (applicationContext != null && !(applicationContext instanceof Application)) {
            applicationContext = applicationContext.getApplicationContext();
        }
        cn.haorui.sdk.core.oaid.b bVar = cn.haorui.sdk.core.loader.e.a;
        if (bVar == null) {
            String str = Build.MANUFACTURER;
            boolean z = false;
            if (!str.equalsIgnoreCase("LENOVO")) {
                String str2 = Build.BRAND;
                boolean z3 = str2.equalsIgnoreCase("LENOVO") || str2.equalsIgnoreCase("ZUK");
                if (z3) {
                    hVar = new h(applicationContext);
                    cn.haorui.sdk.core.loader.e.a = hVar;
                    if (hVar == null && hVar.a()) {
                        String str3 = "Manufacturer interface has been found: " + cn.haorui.sdk.core.loader.e.a.getClass().getName();
                        bVar = cn.haorui.sdk.core.loader.e.a;
                    } else {
                        jVar = new j(applicationContext);
                        if (jVar.a()) {
                            jVar = new f(applicationContext);
                            if (jVar.a()) {
                                sb = new StringBuilder();
                                sb.append("Google Play Service has been found: ");
                                cls = f.class;
                            } else {
                                cn.haorui.sdk.core.oaid.impl.d dVar = new cn.haorui.sdk.core.oaid.impl.d();
                                String str4 = "OAID/AAID was not supported: " + cn.haorui.sdk.core.oaid.impl.d.class.getName();
                                bVar = dVar;
                                cn.haorui.sdk.core.loader.e.a = bVar;
                            }
                        } else {
                            sb = new StringBuilder();
                            sb.append("Mobile Security Alliance has been found: ");
                            cls = j.class;
                        }
                        sb.append(cls.getName());
                        sb.toString();
                        bVar = jVar;
                        cn.haorui.sdk.core.loader.e.a = bVar;
                    }
                } else {
                    if (!(str.equalsIgnoreCase("MOTOLORA") || Build.BRAND.equalsIgnoreCase("MOTOLORA"))) {
                        if (str.equalsIgnoreCase("MEIZU") || Build.BRAND.equalsIgnoreCase("MEIZU") || Build.DISPLAY.toUpperCase().contains(w4.OooO0Oo)) {
                            hVar = new i(applicationContext);
                        } else {
                            if (str.equalsIgnoreCase("NUBIA") || Build.BRAND.equalsIgnoreCase("NUBIA")) {
                                hVar = new k(applicationContext);
                            } else if (!str.equalsIgnoreCase(ADBidEvent.XIAOMI)) {
                                String str5 = Build.BRAND;
                                boolean z4 = str5.equalsIgnoreCase(ADBidEvent.XIAOMI) || str5.equalsIgnoreCase("REDMI");
                                if (z4 || (!TextUtils.isEmpty(cn.haorui.sdk.core.loader.e.a("ro.miui.ui.version.name", "")))) {
                                    hVar = new p(applicationContext);
                                } else {
                                    if (!(str.equalsIgnoreCase("BLACKSHARK") || Build.BRAND.equalsIgnoreCase("BLACKSHARK"))) {
                                        if (str.equalsIgnoreCase("SAMSUNG") || Build.BRAND.equalsIgnoreCase("SAMSUNG")) {
                                            hVar = new n(applicationContext);
                                        } else {
                                            if (str.equalsIgnoreCase("VIVO") || Build.BRAND.equalsIgnoreCase("VIVO") || !TextUtils.isEmpty(cn.haorui.sdk.core.loader.e.a("ro.vivo.os.version", ""))) {
                                                hVar = new o(applicationContext);
                                            } else {
                                                if (str.equalsIgnoreCase("ASUS") || Build.BRAND.equalsIgnoreCase("ASUS")) {
                                                    hVar = new cn.haorui.sdk.core.oaid.impl.a(applicationContext);
                                                } else if (!str.equalsIgnoreCase(ADBidEvent.HUAWEI)) {
                                                    String str6 = Build.BRAND;
                                                    boolean z5 = str6.equalsIgnoreCase(ADBidEvent.HUAWEI) || str6.equalsIgnoreCase("HONOR");
                                                    if (z5 || (!TextUtils.isEmpty(cn.haorui.sdk.core.loader.e.a("ro.build.version.emui", "")))) {
                                                        hVar = new g(applicationContext);
                                                    } else if (!str.equalsIgnoreCase("OPPO")) {
                                                        String str7 = Build.BRAND;
                                                        boolean z6 = str7.equalsIgnoreCase("OPPO") || str7.equalsIgnoreCase("REALME") || !TextUtils.isEmpty(cn.haorui.sdk.core.loader.e.a("ro.build.version.opporom", ""));
                                                        if (z6) {
                                                            hVar = new m(applicationContext);
                                                        } else {
                                                            if (!(str.equalsIgnoreCase("ONEPLUS") || Build.BRAND.equalsIgnoreCase("ONEPLUS"))) {
                                                                try {
                                                                    applicationContext.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0);
                                                                    z = true;
                                                                } catch (Exception unused) {
                                                                }
                                                                hVar = z ? new cn.haorui.sdk.core.oaid.impl.b(applicationContext) : cn.haorui.sdk.core.loader.e.a("ro.odm.manufacturer", "").equalsIgnoreCase("PRIZE") ? new cn.haorui.sdk.core.oaid.impl.c(applicationContext) : TextUtils.isEmpty(cn.haorui.sdk.core.loader.e.a("ro.build.freeme.label", "")) ^ true ? new cn.haorui.sdk.core.oaid.impl.e(applicationContext) : null;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    cn.haorui.sdk.core.loader.e.a = hVar;
                    if (hVar == null) {
                        jVar = new j(applicationContext);
                        if (jVar.a()) {
                        }
                        sb.append(cls.getName());
                        sb.toString();
                        bVar = jVar;
                        cn.haorui.sdk.core.loader.e.a = bVar;
                    }
                }
            }
        }
        bVar.a(aVar);
    }

    private static void initPackConfig() {
        LocalThreadPools.getInstance().execute(new b());
    }

    public static void initSdkIfNot(@NonNull Context context2, @NonNull SdkAdInfo sdkAdInfo) {
        e eVarA = cn.haorui.sdk.core.a.a(sdkAdInfo.getSdk());
        if (eVarA != null) {
            eVarA.config().init(context2, sdkAdInfo.getApp_id(), sdkAdInfo.getApp_key());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initUA() {
        try {
            try {
                if (TextUtils.isEmpty(getSharedPreferences().getString("install_time", ""))) {
                    getSharedPreferences().edit().putString("install_time", String.valueOf(System.currentTimeMillis())).apply();
                }
            } catch (Throwable unused) {
                return;
            }
        } catch (Exception e) {
            try {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        RequestUtil.setUserAgent(WebSettings.getDefaultUserAgent(context));
        RequestUtil.setRomVersion(RequestUtil.getRomVersion());
    }

    public static void setOaid_errno(int i) {
        oaid_errno = i;
    }
}

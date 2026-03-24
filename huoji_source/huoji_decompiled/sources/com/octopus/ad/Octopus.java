package com.octopus.ad;

import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.utilities.UserEnvInfo;
import com.octopus.ad.utils.b.g;

/* JADX INFO: loaded from: classes2.dex */
public class Octopus {
    private static OctopusAdSdkController a;
    private static boolean b;

    public static OctopusAdSdkController getCustomController() {
        return a;
    }

    public static int getLocationDecimalDigits() {
        return UserEnvInfo.getInstance().getLocationDecimalDigits();
    }

    public static boolean getLocationEnabled() {
        return UserEnvInfo.getInstance().locationEnabled;
    }

    public static String getOaid(Context context) {
        return g.a(context);
    }

    public static String getSdkVersion() {
        return "1.5.8.9";
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void init(Context context, String str) {
        m.a().a(context, str);
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void init(Context context, String str, OctopusAdSdkController octopusAdSdkController) {
        a = octopusAdSdkController;
        m.a().a(context, str);
        m.a().b(str);
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void init(Context context, String str, OctopusAdSdkController octopusAdSdkController, String str2) {
        a = octopusAdSdkController;
        m.a().a(context, str);
        if ("OctopusGroup".equals(str2)) {
            m.a().a(str);
        } else {
            m.a().b(str);
        }
    }

    public static boolean isHttpsEnabled() {
        return m.a().a;
    }

    public static boolean isLimitPersonalAds() {
        return b;
    }

    public static void logTagInfo(String str, boolean z) {
        m.a().a(str, z);
    }

    public static void setAppMuted(boolean z) {
        m.a().a(z);
    }

    public static void setAppVolume(float f) {
        m.a().a(f);
    }

    public static void setIsDownloadDirect(boolean z) {
        m.a().b(z);
    }

    public static void setLimitPersonalAds(boolean z) {
        b = z;
    }

    public static void setLocationDecimalDigits(int i) {
        UserEnvInfo.getInstance().setLocationDecimalDigits(i);
    }

    public static void setLocationEnabled(boolean z) {
        UserEnvInfo.getInstance().locationEnabled = z;
    }

    public static void useHttps(boolean z) {
        m.a().a = z;
    }
}

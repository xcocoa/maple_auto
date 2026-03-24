package com.anythink.core.api;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public class ATSDKGlobalSetting {
    private static volatile Drawable mDirectlySplashAdCTAButtongBgDrawable;
    private static volatile String mDirectlySplashAdShakeIconString;

    public static Drawable getDirectlySplashAdCTAButtongBgDrawable() {
        return mDirectlySplashAdCTAButtongBgDrawable;
    }

    public static String getDirectlySplashAdShakeIconString() {
        return mDirectlySplashAdShakeIconString;
    }

    public static void setDirectlySplashAdCTAButtongBgDrawable(Drawable drawable) {
        mDirectlySplashAdCTAButtongBgDrawable = drawable;
    }

    public static void setDirectlySplashAdShakeIconString(String str) {
        mDirectlySplashAdShakeIconString = str;
    }
}

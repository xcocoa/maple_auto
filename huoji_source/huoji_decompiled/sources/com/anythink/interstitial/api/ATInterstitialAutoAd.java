package com.anythink.interstitial.api;

import android.app.Activity;
import android.content.Context;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.interstitial.a.c;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ATInterstitialAutoAd {
    public static void addPlacementId(String... strArr) {
        c.a().a(strArr);
    }

    public static ATAdStatusInfo checkAdStatus(String str) {
        return c.a().c(str);
    }

    public static List<ATAdInfo> checkValidAdCaches(String str) {
        c.a();
        return c.d(str);
    }

    public static void entryAdScenario(String str, String str2) {
        c.a();
        c.a(str, str2, (Map<String, Object>) null);
    }

    public static void entryAdScenario(String str, String str2, Map<String, Object> map) {
        c.a();
        c.a(str, str2, map);
    }

    public static void init(Context context, String[] strArr, ATInterstitialAutoLoadListener aTInterstitialAutoLoadListener) {
        c.a().a(context, strArr, aTInterstitialAutoLoadListener);
    }

    public static boolean isAdReady(String str) {
        return c.a().b(str);
    }

    public static void removePlacementId(String... strArr) {
        c.a();
        c.b(strArr);
    }

    public static void setLocalExtra(String str, Map<String, Object> map) {
        c.a();
        c.a(str, map);
    }

    public static void show(Activity activity, String str, ATInterstitialAutoEventListener aTInterstitialAutoEventListener) {
        c.a().a(activity, str, "", aTInterstitialAutoEventListener);
    }

    public static void show(Activity activity, String str, String str2, ATInterstitialAutoEventListener aTInterstitialAutoEventListener) {
        c.a().a(activity, str, str2, aTInterstitialAutoEventListener);
    }
}

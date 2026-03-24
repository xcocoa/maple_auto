package com.anythink.rewardvideo.api;

import android.app.Activity;
import android.content.Context;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.rewardvideo.a.c;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ATRewardVideoAutoAd {
    public static void addPlacementId(String... strArr) {
        c.a().a(strArr);
    }

    public static ATAdStatusInfo checkAdStatus(String str) {
        return c.a().c(str);
    }

    public static List<ATAdInfo> checkValidAdCaches(String str) {
        return c.a().d(str);
    }

    public static void entryAdScenario(String str, String str2) {
        c.a();
        c.a(str, str2, (Map<String, Object>) null);
    }

    public static void entryAdScenario(String str, String str2, Map<String, Object> map) {
        c.a();
        c.a(str, str2, map);
    }

    public static void init(Context context, String[] strArr, ATRewardVideoAutoLoadListener aTRewardVideoAutoLoadListener) {
        c.a().a(context, strArr, aTRewardVideoAutoLoadListener);
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

    public static void show(Activity activity, String str, ATRewardVideoAutoEventListener aTRewardVideoAutoEventListener) {
        c.a().a(activity, str, "", aTRewardVideoAutoEventListener);
    }

    public static void show(Activity activity, String str, String str2, ATRewardVideoAutoEventListener aTRewardVideoAutoEventListener) {
        c.a().a(activity, str, str2, aTRewardVideoAutoEventListener);
    }
}

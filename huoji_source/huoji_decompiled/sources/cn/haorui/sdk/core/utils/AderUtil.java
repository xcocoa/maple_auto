package cn.haorui.sdk.core.utils;

import cn.haorui.sdk.core.AdSdk;

/* JADX INFO: loaded from: classes.dex */
public class AderUtil {
    public static boolean getIsOperationContent(String str) {
        if (AdSdk.adConfig().userAdvertiserId() != null) {
            for (String str2 : AdSdk.adConfig().userAdvertiserId()) {
                if (str2.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }
}

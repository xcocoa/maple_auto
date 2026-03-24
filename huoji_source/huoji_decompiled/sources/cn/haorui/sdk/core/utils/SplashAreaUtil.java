package cn.haorui.sdk.core.utils;

import android.text.TextUtils;
import cn.haorui.sdk.core.AdSdk;

/* JADX INFO: loaded from: classes.dex */
public class SplashAreaUtil {
    public static boolean getShowJumpBtn(int i, String str) {
        if (i == 2 || i == 5) {
            return false;
        }
        return i == 3 || i == 4 || i == 6 || i == 7 || i == 8 || !TextUtils.isEmpty(AdSdk.adConfig().splashClickText());
    }
}

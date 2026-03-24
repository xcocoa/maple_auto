package cn.haorui.sdk.core.utils;

import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import cn.haorui.sdk.core.domain.SdkAdInfo;

/* JADX INFO: loaded from: classes.dex */
public class MacroUtil {
    public static String doReplaceUrl(String str, int i, int i2) {
        try {
            return TextUtils.isEmpty(str) ? "" : TextUtils.replace(str, new String[]{"__WIDTH__", "__HEIGHT__"}, new String[]{String.valueOf(i), String.valueOf(i2)}).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String replaceExposureMacros(@NonNull String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            return TextUtils.replace(str, new String[]{"__MS_EVENT_SEC__", "__MS_EVENT_MSEC__"}, new String[]{String.valueOf(jCurrentTimeMillis / 1000), String.valueOf(jCurrentTimeMillis)}).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String replaceFinalLoadedMacros(@NonNull String str, long j) {
        try {
            return TextUtils.isEmpty(str) ? "" : TextUtils.replace(str, new String[]{"__FINAL__", "__PST__"}, new String[]{String.valueOf(1), String.valueOf(j)}).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String replaceTimeoutMacros(@NonNull String str) {
        try {
            return TextUtils.isEmpty(str) ? "" : TextUtils.replace(str, new String[]{"__TIMEOUT__"}, new String[]{String.valueOf(1)}).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String replaceUUIDMacros(@NonNull String str, String str2, String str3) {
        try {
            return TextUtils.isEmpty(str) ? "" : TextUtils.replace(str, new String[]{"__UUID__", "__SUUID__"}, new String[]{str2, str3}).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void replaceWidthAndHeight(SdkAdInfo sdkAdInfo, View view) {
        if (sdkAdInfo == null || view == null) {
            return;
        }
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            String imp = sdkAdInfo.getImp();
            if (!TextUtils.isEmpty(imp)) {
                sdkAdInfo.setImp(doReplaceUrl(imp, width, height));
            }
            String clk = sdkAdInfo.getClk();
            if (TextUtils.isEmpty(clk)) {
                return;
            }
            sdkAdInfo.setClk(doReplaceUrl(clk, width, height));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

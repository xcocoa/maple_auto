package cn.haorui.sdk.core.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class DimensionUtils {
    public static float dip2px(Context context, float f) {
        return f * context.getResources().getDisplayMetrics().density;
    }

    public static float px2dip(Context context, float f) {
        return (f / context.getResources().getDisplayMetrics().density) + 0.5f;
    }

    public static float px2sp(Context context, float f) {
        return (f / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f;
    }

    public static float sp2px(Context context, float f) {
        return (f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f;
    }
}

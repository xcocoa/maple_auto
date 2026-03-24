package com.anythink.expressad.foundation.h;

import android.content.Context;
import android.content.res.Resources;
import z2.g6;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private static String a = "DomainSameSDKTool";

    private static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        try {
            Resources resources = context.getResources();
            return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", g6.OooO0O0)) > 0;
        } catch (Throwable th) {
            th.getMessage();
            return false;
        }
    }
}

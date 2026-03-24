package com.octopus.ad.utils.b;

import android.content.Context;
import android.text.TextUtils;
import com.octopus.ad.Octopus;
import com.octopus.ad.internal.utilities.SPUtils;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    public static String a(Context context) {
        String strB;
        if (Octopus.getCustomController() != null) {
            String oaid = Octopus.getCustomController().getOaid();
            if (!TextUtils.isEmpty(oaid)) {
                com.octopus.ad.utils.a.f.b("Oaid is Outside Input: " + oaid);
                return oaid;
            }
        }
        return (context == null || Octopus.isLimitPersonalAds() || (strB = com.octopus.ad.utils.a.b.b(context)) == null) ? "" : strB;
    }

    public static String b(Context context) {
        String str;
        return (context == null || Octopus.isLimitPersonalAds() || (str = (String) SPUtils.getFromGroupSdk(context, "__GAID__", com.octopus.ad.utils.a.b.c(context))) == null) ? "" : str;
    }
}

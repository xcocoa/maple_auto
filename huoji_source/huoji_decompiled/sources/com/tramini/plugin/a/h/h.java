package com.tramini.plugin.a.h;

import android.content.Context;
import android.net.Proxy;
import android.os.Build;
import android.text.TextUtils;
import cn.haorui.sdk.core.HRConfig;

/* JADX INFO: loaded from: classes2.dex */
public final class h {
    public static boolean a(Context context) {
        try {
            return b(context);
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    private static boolean b(Context context) {
        int port;
        String property;
        try {
            if (Build.VERSION.SDK_INT >= 14) {
                property = System.getProperty("http.proxyHost");
                String property2 = System.getProperty("http.proxyPort");
                if (property2 == null) {
                    property2 = HRConfig.GENDER_UNKNOWN;
                }
                port = Integer.parseInt(property2);
            } else {
                String host = Proxy.getHost(context);
                port = Proxy.getPort(context);
                property = host;
            }
        } catch (Throwable unused) {
        }
        return (TextUtils.isEmpty(property) || port == -1) ? false : true;
    }
}

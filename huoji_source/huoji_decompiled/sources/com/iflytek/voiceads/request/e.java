package com.iflytek.voiceads.request;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class e {
    public static void a(Context context, String str, com.iflytek.voiceads.param.a aVar, String str2) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "openBrowser");
        Context applicationContext = context.getApplicationContext();
        try {
            Intent intent = new Intent(applicationContext, (Class<?>) IFLYBrowser.class);
            intent.putExtra("url_ad", str);
            intent.putExtra("is_show", aVar.c("download_alert"));
            intent.putExtra("ad_session_id", str2);
            intent.addFlags(268435456);
            applicationContext.startActivity(intent);
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "openBrowser" + e.getMessage());
        }
    }
}

package com.iflytek.voiceads.download;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.iflytek.voiceads.download.d;
import java.util.Map;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class o extends BroadcastReceiver {
    final /* synthetic */ d a;

    o(d dVar) {
        this.a = dVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "app add" + intent.getDataString());
            for (Map.Entry entry : this.a.d.entrySet()) {
                if (((d.b) entry.getValue()).h == 1) {
                    com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", ((d.b) entry.getValue()).c + "//" + intent.getDataString());
                    if (intent.getDataString().contains(((d.b) entry.getValue()).c) || "noPackage".equals(((d.b) entry.getValue()).c)) {
                        ((d.b) entry.getValue()).h = 2;
                        this.a.a(((d.b) entry.getValue()).g);
                    }
                    this.a.d.remove(((d.b) entry.getValue()).b);
                    com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "安装完成监控");
                }
            }
            this.a.c();
        }
    }
}

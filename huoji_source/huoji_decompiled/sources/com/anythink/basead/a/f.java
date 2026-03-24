package com.anythink.basead.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public final class f extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String stringExtra;
        String stringExtra2;
        String action = intent.getAction();
        if (action != null) {
            stringExtra = intent.getStringExtra(com.anythink.china.common.a.f);
            stringExtra2 = intent.getStringExtra(com.anythink.china.common.a.g);
            action.hashCode();
            switch (action) {
                case "action_offer_download_end":
                    g.a(context.getApplicationContext()).b(stringExtra, stringExtra2);
                    break;
                case "action_offer_download_start":
                    g.a(context.getApplicationContext()).a(stringExtra, stringExtra2);
                    break;
                case "action_offer_install_successful":
                    g.a(context.getApplicationContext()).d(stringExtra, stringExtra2);
                    break;
                case "action_offer_install_start":
                    g.a(context.getApplicationContext()).c(stringExtra, stringExtra2);
                    break;
            }
        }
    }
}

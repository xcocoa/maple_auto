package com.anythink.china.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class NotificationBroadcaseReceiver extends BroadcastReceiver {
    private static final String a = NotificationBroadcaseReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        intent.getStringExtra(com.anythink.china.common.b.a.d);
        String stringExtra = intent.getStringExtra(com.anythink.china.common.b.a.e);
        String stringExtra2 = intent.getStringExtra(com.anythink.china.common.b.a.f);
        int intExtra = intent.getIntExtra(com.anythink.china.common.b.a.g, -1);
        if (TextUtils.isEmpty(action)) {
            return;
        }
        action.hashCode();
        if (action.equals(com.anythink.china.common.b.a.b)) {
            a.a(context).a(stringExtra, stringExtra2, intExtra);
        } else if (action.equals(com.anythink.china.common.b.a.c)) {
            a.a(context).a(stringExtra, stringExtra2);
        }
    }
}

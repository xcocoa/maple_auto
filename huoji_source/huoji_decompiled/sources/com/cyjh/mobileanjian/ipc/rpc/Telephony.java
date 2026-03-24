package com.cyjh.mobileanjian.ipc.rpc;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.telephony.SmsManager;

/* JADX INFO: loaded from: classes.dex */
public class Telephony {
    private static Context OooO00o;

    public static void dialNumber(String str, String str2) {
        Intent intent = str2.equals("1") ? new Intent("android.intent.action.CALL", Uri.parse("tel:".concat(String.valueOf(str)))) : new Intent("android.intent.action.DIAL", Uri.parse("tel:".concat(String.valueOf(str))));
        intent.addFlags(268435456);
        OooO00o.startActivity(intent);
    }

    public static void init(Context context) {
        OooO00o = context;
    }

    public static void sendSMS(String str, String str2) {
        SmsManager smsManager = SmsManager.getDefault();
        if (smsManager != null) {
            smsManager.sendTextMessage(str, null, str2, null, null);
        }
    }
}

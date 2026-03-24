package com.cyjh.common.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import z2.t3;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStatusReceiver extends BroadcastReceiver {
    private t3 OooO00o;

    public void OooO00o(t3 t3Var) {
        this.OooO00o = t3Var;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean z = activeNetworkInfo != null && activeNetworkInfo.isAvailable();
        t3 t3Var = this.OooO00o;
        if (t3Var != null) {
            t3Var.OooO00o(z);
        }
    }
}

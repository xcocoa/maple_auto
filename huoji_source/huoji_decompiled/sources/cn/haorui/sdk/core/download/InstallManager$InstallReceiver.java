package cn.haorui.sdk.core.download;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class InstallManager$InstallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String schemeSpecificPart;
        StringBuilder sb;
        String str;
        context.getPackageManager();
        if (intent.getAction().equals("android.intent.action.PACKAGE_ADDED")) {
            schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            sb = new StringBuilder();
            str = "onReceive:  app_added  ";
        } else {
            if (!intent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) {
                return;
            }
            schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            sb = new StringBuilder();
            str = "onReceive:  app_removed  ";
        }
        sb.append(str);
        sb.append(schemeSpecificPart);
        Log.e("InstallManager", sb.toString());
    }
}

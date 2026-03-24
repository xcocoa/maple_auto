package com.didi.virtualapk.delegate;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.didi.virtualapk.PluginManager;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteService extends LocalService {
    private static final String TAG = "VA.RemoteService";

    @Override // com.didi.virtualapk.delegate.LocalService, android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.didi.virtualapk.delegate.LocalService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return super.onStartCommand(intent, i, i2);
        }
        Intent intent2 = (Intent) intent.getParcelableExtra(LocalService.EXTRA_TARGET);
        if (intent2 != null) {
            String stringExtra = intent.getStringExtra(LocalService.EXTRA_PLUGIN_LOCATION);
            if (PluginManager.getInstance(this).getLoadedPlugin(intent2.getComponent()) == null && stringExtra != null) {
                try {
                    PluginManager.getInstance(this).loadPlugin(new File(stringExtra));
                } catch (Exception e) {
                    Log.w(TAG, e);
                }
            }
        }
        return super.onStartCommand(intent, i, i2);
    }
}

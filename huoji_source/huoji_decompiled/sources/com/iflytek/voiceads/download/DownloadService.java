package com.iflytek.voiceads.download;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class DownloadService extends Service {
    private a a = new a();

    class a extends Binder {
        a() {
        }

        public void a(com.iflytek.voiceads.download.d.a aVar) {
            com.iflytek.voiceads.download.a.a(DownloadService.this.getBaseContext()).b(aVar);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.a;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}

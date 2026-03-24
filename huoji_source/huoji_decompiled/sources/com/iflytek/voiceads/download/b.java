package com.iflytek.voiceads.download;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.iflytek.voiceads.download.DownloadService;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class b implements ServiceConnection {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.a.i = (DownloadService.a) iBinder;
        this.a.i.a(this.a.h);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.a.i = null;
    }
}

package com.anythink.china.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.anythink.china.a.a.q;

/* JADX INFO: loaded from: classes.dex */
public final class r {
    public q a;
    public ServiceConnection b = new ServiceConnection() { // from class: com.anythink.china.a.a.r.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            r.this.a = new q.a(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };
    private Context c;

    public r(Context context) {
        this.c = context;
    }

    public final void a(com.anythink.china.a.a aVar) {
        q qVar;
        try {
            Intent intent = new Intent();
            intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
            if (!this.c.bindService(intent, this.b, 1) || (qVar = this.a) == null) {
                aVar.a();
            } else {
                aVar.a(qVar.a(), false);
            }
        } catch (Throwable th) {
            th.getMessage();
            aVar.a();
        }
    }
}

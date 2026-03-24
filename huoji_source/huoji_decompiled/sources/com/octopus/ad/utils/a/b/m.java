package com.octopus.ad.utils.a.b;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public class m implements ServiceConnection {
    private final Context a;
    private final com.octopus.ad.utils.a.c b;
    private final a c;

    @FunctionalInterface
    public interface a {
        String a(IBinder iBinder) throws com.octopus.ad.utils.a.e, RemoteException;
    }

    private m(Context context, com.octopus.ad.utils.a.c cVar, a aVar) {
        this.a = context instanceof Application ? context : context.getApplicationContext();
        this.b = cVar;
        this.c = aVar;
    }

    public static void a(Context context, Intent intent, com.octopus.ad.utils.a.c cVar, a aVar) {
        new m(context, cVar, aVar).a(intent);
    }

    private void a(Intent intent) {
        try {
            if (!this.a.bindService(intent, this, 1)) {
                throw new com.octopus.ad.utils.a.e("Service binding failed");
            }
            com.octopus.ad.utils.a.f.a("Service has been bound: " + intent);
        } catch (Exception e) {
            this.b.a(e);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.octopus.ad.utils.a.f.a("Service has been connected: " + componentName.getClassName());
        try {
            try {
                try {
                    String strA = this.c.a(iBinder);
                    if (strA == null || strA.length() == 0) {
                        throw new com.octopus.ad.utils.a.e("OAID/GAID acquire failed");
                    }
                    com.octopus.ad.utils.a.f.a("OAID/GAID acquire success: " + strA);
                    this.b.a(strA);
                    this.a.unbindService(this);
                    com.octopus.ad.utils.a.f.a("Service has been unbound: " + componentName.getClassName());
                } catch (Exception e) {
                    com.octopus.ad.utils.a.f.a(e);
                }
            } catch (Exception e2) {
                com.octopus.ad.utils.a.f.a(e2);
                this.b.a(e2);
                this.a.unbindService(this);
                com.octopus.ad.utils.a.f.a("Service has been unbound: " + componentName.getClassName());
            }
        } catch (Throwable th) {
            try {
                this.a.unbindService(this);
                com.octopus.ad.utils.a.f.a("Service has been unbound: " + componentName.getClassName());
            } catch (Exception e3) {
                com.octopus.ad.utils.a.f.a(e3);
            }
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.octopus.ad.utils.a.f.a("Service has been disconnected: " + componentName.getClassName());
    }
}

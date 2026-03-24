package cn.haorui.sdk.core.oaid.impl;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.oaid.OAIDException;

/* JADX INFO: loaded from: classes.dex */
public class l implements ServiceConnection {
    public final Context a;
    public final cn.haorui.sdk.core.oaid.a b;
    public final a c;

    @FunctionalInterface
    public interface a {
        String a(IBinder iBinder);
    }

    public l(Context context, cn.haorui.sdk.core.oaid.a aVar, a aVar2) {
        this.a = context instanceof Application ? context : context.getApplicationContext();
        this.b = aVar;
        this.c = aVar2;
    }

    public static void a(Context context, Intent intent, cn.haorui.sdk.core.oaid.a aVar, a aVar2) {
        l lVar = new l(context, aVar, aVar2);
        try {
            if (!lVar.a.bindService(intent, lVar, 1)) {
                throw new OAIDException("Service binding failed");
            }
            String str = "Service has been bound: " + intent;
        } catch (Exception unused) {
            ((AdSdk.a) lVar.b).getClass();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        StringBuilder sb;
        String strA;
        String str = "Service has been connected: " + componentName.getClassName();
        try {
            try {
                try {
                    strA = this.c.a(iBinder);
                } catch (Exception unused) {
                    ((AdSdk.a) this.b).getClass();
                    this.a.unbindService(this);
                    sb = new StringBuilder();
                    sb.append("Service has been unbound: ");
                }
                if (strA == null || strA.length() == 0) {
                    throw new OAIDException("OAID/AAID acquire failed");
                }
                String str2 = "OAID/AAID acquire success: " + strA;
                ((AdSdk.a) this.b).a(strA);
                this.a.unbindService(this);
                sb = new StringBuilder();
                sb.append("Service has been unbound: ");
                sb.append(componentName.getClassName());
                sb.toString();
            } catch (Exception unused2) {
            }
        } catch (Throwable th) {
            try {
                this.a.unbindService(this);
                String str3 = "Service has been unbound: " + componentName.getClassName();
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        String str = "Service has been disconnected: " + componentName.getClassName();
    }
}

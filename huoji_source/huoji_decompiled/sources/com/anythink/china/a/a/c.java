package com.anythink.china.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.anythink.china.a.a.i;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ServiceConnection {
    private Context a;
    private com.anythink.china.a.a b;

    public c(Context context) {
        this.a = context;
    }

    public final void a(com.anythink.china.a.a aVar) {
        if (this.a == null) {
            return;
        }
        try {
            this.b = aVar;
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
            this.a.bindService(intent, this, 1);
        } catch (Throwable th) {
            com.anythink.china.a.a aVar2 = this.b;
            if (aVar2 != null) {
                th.getMessage();
                aVar2.a();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            i iVarA = i.b.a(iBinder);
            if (iVarA != null) {
                this.b.a(iVarA.b(this.a.getPackageName()), false);
            } else {
                this.b.a();
            }
        } catch (Throwable th) {
            try {
                com.anythink.china.a.a aVar = this.b;
                if (aVar != null) {
                    th.getMessage();
                    aVar.a();
                }
                try {
                    this.a.unbindService(this);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            } finally {
                try {
                    this.a.unbindService(this);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}

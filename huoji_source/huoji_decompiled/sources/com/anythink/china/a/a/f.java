package com.anythink.china.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.anythink.china.a.a.e;

/* JADX INFO: loaded from: classes.dex */
public final class f implements ServiceConnection {
    private Context a;
    private com.anythink.china.a.a b;

    public f(Context context) {
        this.a = context;
    }

    public final void a(com.anythink.china.a.a aVar) {
        if (this.a == null) {
            return;
        }
        this.b = aVar;
        try {
            Intent intent = new Intent("android.service.action.msa");
            intent.setPackage("com.android.creator");
            this.a.bindService(intent, this, 1);
        } catch (Throwable th) {
            th.getMessage();
            aVar.a();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            e eVarA = e.b.a(iBinder);
            if (eVarA != null) {
                this.b.a(eVarA.b(), false);
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

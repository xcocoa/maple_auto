package com.octopus.ad.utils.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.utils.a.a.a.g.a.a.a;
import com.octopus.ad.utils.a.b.m;

/* JADX INFO: loaded from: classes2.dex */
public class o implements com.octopus.ad.utils.a.d {
    private final Context a;

    public o(Context context) {
        this.a = context;
    }

    @Override // com.octopus.ad.utils.a.d
    public void a(com.octopus.ad.utils.a.c cVar) {
        if (this.a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        m.a(this.a, intent, cVar, new m.a() { // from class: com.octopus.ad.utils.a.b.o.1
            @Override // com.octopus.ad.utils.a.b.m.a
            public String a(IBinder iBinder) throws com.octopus.ad.utils.a.e, RemoteException {
                com.octopus.ad.utils.a.a.a.g.a.a.a aVarA = a.AbstractBinderC0216a.a(iBinder);
                if (aVarA != null) {
                    return aVarA.a();
                }
                throw new com.octopus.ad.utils.a.e("IDeviceIdService is null");
            }
        });
    }

    @Override // com.octopus.ad.utils.a.d
    public boolean a() {
        Context context = this.a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.samsung.android.deviceidservice", 0) != null;
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
            return false;
        }
    }
}

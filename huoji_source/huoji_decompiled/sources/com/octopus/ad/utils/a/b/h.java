package com.octopus.ad.utils.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.utils.a.a.a.i.a.a;
import com.octopus.ad.utils.a.b.m;

/* JADX INFO: loaded from: classes2.dex */
public class h implements com.octopus.ad.utils.a.d {
    private final Context a;

    public h(Context context) {
        this.a = context;
    }

    @Override // com.octopus.ad.utils.a.d
    public void a(com.octopus.ad.utils.a.c cVar) {
        if (this.a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        m.a(this.a, intent, cVar, new m.a() { // from class: com.octopus.ad.utils.a.b.h.1
            @Override // com.octopus.ad.utils.a.b.m.a
            public String a(IBinder iBinder) throws com.octopus.ad.utils.a.e, RemoteException {
                com.octopus.ad.utils.a.a.a.i.a.a aVarA = a.AbstractBinderC0220a.a(iBinder);
                if (aVarA == null) {
                    throw new com.octopus.ad.utils.a.e("IDeviceidInterface is null");
                }
                if (aVarA.c()) {
                    return aVarA.a();
                }
                throw new com.octopus.ad.utils.a.e("IDeviceidInterface#isSupport return false");
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
            return context.getPackageManager().getPackageInfo("com.zui.deviceidservice", 0) != null;
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
            return false;
        }
    }
}

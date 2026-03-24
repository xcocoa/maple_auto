package com.octopus.ad.utils.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.utils.a.a.a.e.a.a.a.a.a.a;
import com.octopus.ad.utils.a.b.m;

/* JADX INFO: loaded from: classes2.dex */
public class f implements com.octopus.ad.utils.a.d {
    private final Context a;

    public f(Context context) {
        this.a = context;
    }

    @Override // com.octopus.ad.utils.a.d
    public void a(com.octopus.ad.utils.a.c cVar) {
        if (this.a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        m.a(this.a, intent, cVar, new m.a() { // from class: com.octopus.ad.utils.a.b.f.1
            @Override // com.octopus.ad.utils.a.b.m.a
            public String a(IBinder iBinder) throws com.octopus.ad.utils.a.e, RemoteException {
                com.octopus.ad.utils.a.a.a.e.a.a.a.a.a.a aVarA = a.AbstractBinderC0212a.a(iBinder);
                if (aVarA.a(true)) {
                    com.octopus.ad.utils.a.f.a("User has disabled advertising identifier");
                }
                return aVarA.a();
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
            return context.getPackageManager().getPackageInfo("com.android.vending", 0) != null;
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
            return false;
        }
    }
}

package com.octopus.ad.utils.a.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import com.octopus.ad.utils.a.a.a.h.a.a.a;
import com.octopus.ad.utils.a.b.m;

/* JADX INFO: loaded from: classes2.dex */
public class g implements com.octopus.ad.utils.a.d {
    private final Context a;
    private String b;

    public g(Context context) {
        this.a = context;
    }

    @Override // com.octopus.ad.utils.a.d
    public void a(com.octopus.ad.utils.a.c cVar) {
        Context context = this.a;
        if (context == null || cVar == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                String string = Settings.Global.getString(context.getContentResolver(), "pps_oaid");
                if (!TextUtils.isEmpty(string)) {
                    com.octopus.ad.utils.a.f.a("Get oaid from global settings: " + string);
                    cVar.a(string);
                    return;
                }
            } catch (Exception e) {
                com.octopus.ad.utils.a.f.a(e);
            }
        }
        if (TextUtils.isEmpty(this.b) && !a()) {
            cVar.a(new com.octopus.ad.utils.a.e("Huawei Advertising ID not available"));
            return;
        }
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage(this.b);
        m.a(this.a, intent, cVar, new m.a() { // from class: com.octopus.ad.utils.a.b.g.1
            @Override // com.octopus.ad.utils.a.b.m.a
            public String a(IBinder iBinder) throws com.octopus.ad.utils.a.e, RemoteException {
                com.octopus.ad.utils.a.a.a.h.a.a.a aVarA = a.AbstractBinderC0218a.a(iBinder);
                if (aVarA.b()) {
                    throw new com.octopus.ad.utils.a.e("User has disabled advertising identifier");
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
            PackageManager packageManager = context.getPackageManager();
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
                this.b = "com.huawei.hwid";
            } else if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) != null) {
                this.b = "com.huawei.hwid.tv";
            } else {
                this.b = "com.huawei.hms";
                if (packageManager.getPackageInfo("com.huawei.hms", 0) == null) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
            return false;
        }
    }
}

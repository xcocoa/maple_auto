package com.octopus.ad.utils.a.b;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.utils.a.a.a.f.a.a;
import com.octopus.ad.utils.a.b.m;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class n implements com.octopus.ad.utils.a.d {
    private final Context a;
    private String b;

    public n(Context context) {
        this.a = context instanceof Application ? context : context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"PackageManagerGetSignatures"})
    public String a(IBinder iBinder) throws com.octopus.ad.utils.a.e, PackageManager.NameNotFoundException, NoSuchAlgorithmException, RemoteException {
        String packageName = this.a.getPackageName();
        String str = this.b;
        if (str != null) {
            return a(iBinder, packageName, str);
        }
        byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(this.a.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
        StringBuilder sb = new StringBuilder();
        for (byte b : bArrDigest) {
            sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
        }
        String string = sb.toString();
        this.b = string;
        return a(iBinder, packageName, string);
    }

    private String a(IBinder iBinder, String str, String str2) throws com.octopus.ad.utils.a.e, RemoteException {
        com.octopus.ad.utils.a.a.a.f.a.a aVarA = a.AbstractBinderC0214a.a(iBinder);
        if (aVarA != null) {
            return aVarA.a(str, str2, "OUID");
        }
        throw new com.octopus.ad.utils.a.e("IOpenID is null");
    }

    @Override // com.octopus.ad.utils.a.d
    public void a(com.octopus.ad.utils.a.c cVar) {
        if (this.a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent("action.com.heytap.openid.OPEN_ID_SERVICE");
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        m.a(this.a, intent, cVar, new m.a() { // from class: com.octopus.ad.utils.a.b.n.1
            @Override // com.octopus.ad.utils.a.b.m.a
            public String a(IBinder iBinder) throws com.octopus.ad.utils.a.e, RemoteException {
                try {
                    return n.this.a(iBinder);
                } catch (RemoteException e) {
                    throw e;
                } catch (com.octopus.ad.utils.a.e e2) {
                    throw e2;
                } catch (Exception e3) {
                    throw new com.octopus.ad.utils.a.e(e3);
                }
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
            return context.getPackageManager().getPackageInfo("com.heytap.openid", 0) != null;
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
            return false;
        }
    }
}

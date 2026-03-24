package com.anythink.china.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.china.a.a.m;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    public m a;
    public ServiceConnection b = new ServiceConnection() { // from class: com.anythink.china.a.a.l.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            l.this.a = m.a.a(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            l.this.a = null;
        }
    };
    private Context c;

    public l(Context context) {
        this.c = context;
    }

    private String a(String str) {
        Signature[] signatureArr;
        String packageName = this.c.getPackageName();
        String string = null;
        try {
            signatureArr = this.c.getPackageManager().getPackageInfo(packageName, 64).signatures;
        } catch (Exception e) {
            e.printStackTrace();
            signatureArr = null;
        }
        if (signatureArr != null && signatureArr.length > 0) {
            byte[] byteArray = signatureArr[0].toByteArray();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                if (messageDigest != null) {
                    byte[] bArrDigest = messageDigest.digest(byteArray);
                    StringBuilder sb = new StringBuilder();
                    for (byte b : bArrDigest) {
                        sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
                    }
                    string = sb.toString();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return ((m.a.C0073a) this.a).a(packageName, string, str);
    }

    public final String a(com.anythink.china.a.a aVar) {
        String strA = "";
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return "";
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        if (this.c.bindService(intent, this.b, 1)) {
            try {
                SystemClock.sleep(com.anythink.expressad.video.module.a.a.m.ag);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (this.a != null) {
                strA = a("OUID");
                aVar.a(strA, false);
            }
        }
        if (TextUtils.isEmpty(strA)) {
            aVar.a();
        }
        return strA;
    }
}

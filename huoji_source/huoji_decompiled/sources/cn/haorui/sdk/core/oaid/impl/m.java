package cn.haorui.sdk.core.oaid.impl;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import cn.haorui.sdk.core.oaid.OAIDException;
import cn.haorui.sdk.core.oaid.impl.l;
import cn.haorui.sdk.core.oaid.repeackage.com.heytap.openid.a;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class m implements cn.haorui.sdk.core.oaid.b {
    public final Context a;
    public String b;

    public class a implements l.a {
        public a() {
        }

        @Override // cn.haorui.sdk.core.oaid.impl.l.a
        public String a(IBinder iBinder) throws RemoteException {
            try {
                return m.a(m.this, iBinder);
            } catch (RemoteException e) {
                throw e;
            } catch (OAIDException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new OAIDException(e3);
            }
        }
    }

    public m(Context context) {
        this.a = context instanceof Application ? context : context.getApplicationContext();
    }

    public static String a(m mVar, IBinder iBinder) {
        String packageName = mVar.a.getPackageName();
        String string = mVar.b;
        if (string == null) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(mVar.a.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
            }
            string = sb.toString();
            mVar.b = string;
        }
        return mVar.a(iBinder, packageName, string);
    }

    public final String a(IBinder iBinder, String str, String str2) {
        cn.haorui.sdk.core.oaid.repeackage.com.heytap.openid.a c0022a;
        int i = a.AbstractBinderC0021a.a;
        if (iBinder == null) {
            c0022a = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            c0022a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof cn.haorui.sdk.core.oaid.repeackage.com.heytap.openid.a)) ? new a.AbstractBinderC0021a.C0022a(iBinder) : (cn.haorui.sdk.core.oaid.repeackage.com.heytap.openid.a) iInterfaceQueryLocalInterface;
        }
        if (c0022a != null) {
            return c0022a.a(str, str2, "OUID");
        }
        throw new OAIDException("IOpenID is null");
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent("action.com.heytap.openid.OPEN_ID_SERVICE");
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        l.a(this.a, intent, aVar, new a());
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        Context context = this.a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.heytap.openid", 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }
}

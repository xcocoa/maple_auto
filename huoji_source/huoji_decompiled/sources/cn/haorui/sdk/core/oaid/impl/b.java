package cn.haorui.sdk.core.oaid.impl;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import cn.haorui.sdk.core.oaid.OAIDException;
import cn.haorui.sdk.core.oaid.impl.l;
import cn.haorui.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a;

/* JADX INFO: loaded from: classes.dex */
public class b implements cn.haorui.sdk.core.oaid.b {
    public final Context a;

    public class a implements l.a {
        public a() {
        }

        @Override // cn.haorui.sdk.core.oaid.impl.l.a
        public String a(IBinder iBinder) {
            cn.haorui.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a c0018a;
            int i = a.AbstractBinderC0017a.a;
            if (iBinder == null) {
                c0018a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                c0018a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof cn.haorui.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a)) ? new a.AbstractBinderC0017a.C0018a(iBinder) : (cn.haorui.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a) iInterfaceQueryLocalInterface;
            }
            if (c0018a != null) {
                return c0018a.a(b.this.a.getPackageName());
            }
            throw new OAIDException("IDeviceIdManager is null");
        }
    }

    public b(Context context) {
        this.a = context instanceof Application ? context : context.getApplicationContext();
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
        l.a(this.a, intent, aVar, new a());
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        Context context = this.a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }
}

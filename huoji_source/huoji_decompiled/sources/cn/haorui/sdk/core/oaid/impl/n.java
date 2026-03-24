package cn.haorui.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import cn.haorui.sdk.core.oaid.OAIDException;
import cn.haorui.sdk.core.oaid.impl.l;
import cn.haorui.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a;

/* JADX INFO: loaded from: classes.dex */
public class n implements cn.haorui.sdk.core.oaid.b {
    public final Context a;

    public class a implements l.a {
        public a(n nVar) {
        }

        @Override // cn.haorui.sdk.core.oaid.impl.l.a
        public String a(IBinder iBinder) {
            cn.haorui.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a c0024a;
            int i = a.AbstractBinderC0023a.a;
            if (iBinder == null) {
                c0024a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.deviceidservice.IDeviceIdService");
                c0024a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof cn.haorui.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a)) ? new a.AbstractBinderC0023a.C0024a(iBinder) : (cn.haorui.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a) iInterfaceQueryLocalInterface;
            }
            if (c0024a != null) {
                return c0024a.a();
            }
            throw new OAIDException("IDeviceIdService is null");
        }
    }

    public n(Context context) {
        this.a = context;
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        l.a(this.a, intent, aVar, new a(this));
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        Context context = this.a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.samsung.android.deviceidservice", 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }
}

package cn.haorui.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import cn.haorui.sdk.core.oaid.OAIDException;
import cn.haorui.sdk.core.oaid.impl.l;
import cn.haorui.sdk.core.oaid.repeackage.com.zui.deviceidservice.a;

/* JADX INFO: loaded from: classes.dex */
public class h implements cn.haorui.sdk.core.oaid.b {
    public final Context a;

    public class a implements l.a {
        public a(h hVar) {
        }

        @Override // cn.haorui.sdk.core.oaid.impl.l.a
        public String a(IBinder iBinder) {
            cn.haorui.sdk.core.oaid.repeackage.com.zui.deviceidservice.a c0026a;
            int i = a.AbstractBinderC0025a.a;
            if (iBinder == null) {
                c0026a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.zui.deviceidservice.IDeviceidInterface");
                c0026a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof cn.haorui.sdk.core.oaid.repeackage.com.zui.deviceidservice.a)) ? new a.AbstractBinderC0025a.C0026a(iBinder) : (cn.haorui.sdk.core.oaid.repeackage.com.zui.deviceidservice.a) iInterfaceQueryLocalInterface;
            }
            if (c0026a == null) {
                throw new OAIDException("IDeviceidInterface is null");
            }
            if (c0026a.b()) {
                return c0026a.a();
            }
            throw new OAIDException("IDeviceidInterface#isSupport return false");
        }
    }

    public h(Context context) {
        this.a = context;
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        l.a(this.a, intent, aVar, new a(this));
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        Context context = this.a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.zui.deviceidservice", 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }
}

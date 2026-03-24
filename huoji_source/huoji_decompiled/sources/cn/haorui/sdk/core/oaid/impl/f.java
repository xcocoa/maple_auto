package cn.haorui.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import cn.haorui.sdk.core.oaid.impl.l;
import cn.haorui.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a;

/* JADX INFO: loaded from: classes.dex */
public class f implements cn.haorui.sdk.core.oaid.b {
    public final Context a;

    public class a implements l.a {
        public a(f fVar) {
        }

        @Override // cn.haorui.sdk.core.oaid.impl.l.a
        public String a(IBinder iBinder) {
            cn.haorui.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a c0020a;
            int i = a.AbstractBinderC0019a.a;
            if (iBinder == null) {
                c0020a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                c0020a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof cn.haorui.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a)) ? new a.AbstractBinderC0019a.C0020a(iBinder) : (cn.haorui.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a) iInterfaceQueryLocalInterface;
            }
            c0020a.a(true);
            return c0020a.c();
        }
    }

    public f(Context context) {
        this.a = context;
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        l.a(this.a, intent, aVar, new a(this));
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        Context context = this.a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.android.vending", 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }
}

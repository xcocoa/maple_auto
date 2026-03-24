package cn.haorui.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import cn.haorui.sdk.core.oaid.OAIDException;
import cn.haorui.sdk.core.oaid.impl.l;
import cn.haorui.sdk.core.oaid.repeackage.com.android.creator.a;

/* JADX INFO: loaded from: classes.dex */
public class e implements cn.haorui.sdk.core.oaid.b {
    public final Context a;

    public class a implements l.a {
        public a(e eVar) {
        }

        @Override // cn.haorui.sdk.core.oaid.impl.l.a
        public String a(IBinder iBinder) {
            cn.haorui.sdk.core.oaid.repeackage.com.android.creator.a c0012a;
            int i = a.AbstractBinderC0011a.a;
            if (iBinder == null) {
                c0012a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
                c0012a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof cn.haorui.sdk.core.oaid.repeackage.com.android.creator.a)) ? new a.AbstractBinderC0011a.C0012a(iBinder) : (cn.haorui.sdk.core.oaid.repeackage.com.android.creator.a) iInterfaceQueryLocalInterface;
            }
            if (c0012a != null) {
                return c0012a.a();
            }
            throw new OAIDException("IdsSupplier is null");
        }
    }

    public e(Context context) {
        this.a = context;
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent("android.service.action.msa");
        intent.setPackage("com.android.creator");
        l.a(this.a, intent, aVar, new a(this));
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        Context context = this.a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.android.creator", 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }
}

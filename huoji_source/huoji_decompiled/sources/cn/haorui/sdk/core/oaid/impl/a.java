package cn.haorui.sdk.core.oaid.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import cn.haorui.sdk.core.oaid.OAIDException;
import cn.haorui.sdk.core.oaid.impl.l;
import cn.haorui.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a;

/* JADX INFO: loaded from: classes.dex */
public class a implements cn.haorui.sdk.core.oaid.b {
    public final Context a;

    /* JADX INFO: renamed from: cn.haorui.sdk.core.oaid.impl.a$a, reason: collision with other inner class name */
    public class C0010a implements l.a {
        public C0010a(a aVar) {
        }

        @Override // cn.haorui.sdk.core.oaid.impl.l.a
        public String a(IBinder iBinder) {
            cn.haorui.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a c0014a;
            int i = a.AbstractBinderC0013a.a;
            if (iBinder == null) {
                c0014a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.asus.msa.SupplementaryDID.IDidAidlInterface");
                c0014a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof cn.haorui.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a)) ? new a.AbstractBinderC0013a.C0014a(iBinder) : (cn.haorui.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a) iInterfaceQueryLocalInterface;
            }
            if (c0014a == null) {
                throw new OAIDException("IDidAidlInterface is null");
            }
            if (c0014a.b()) {
                return c0014a.a();
            }
            throw new OAIDException("IDidAidlInterface#isSupport return false");
        }
    }

    public a(Context context) {
        this.a = context;
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        l.a(this.a, intent, aVar, new C0010a(this));
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        Context context = this.a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.asus.msa.SupplementaryDID", 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }
}

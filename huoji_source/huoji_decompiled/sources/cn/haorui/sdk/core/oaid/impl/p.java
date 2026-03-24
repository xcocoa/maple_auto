package cn.haorui.sdk.core.oaid.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.oaid.OAIDException;

/* JADX INFO: loaded from: classes.dex */
public class p implements cn.haorui.sdk.core.oaid.b {
    public final Context a;
    public Class<?> b;
    public Object c;

    @SuppressLint({"PrivateApi"})
    public p(Context context) {
        this.a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.b = cls;
            this.c = cls.newInstance();
        } catch (Exception unused) {
        }
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        Class<?> cls = this.b;
        if (cls == null || this.c == null) {
            new OAIDException("Xiaomi IdProvider not exists");
            return;
        }
        try {
            String str = (String) cls.getMethod("getOAID", Context.class).invoke(this.c, this.a);
            if (str == null || str.length() == 0) {
                throw new OAIDException("OAID query failed");
            }
            String str2 = "OAID query success: " + str;
            ((AdSdk.a) aVar).a(str);
        } catch (Exception unused) {
        }
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        return this.c != null;
    }
}

package com.octopus.ad.utils.a.b;

import android.annotation.SuppressLint;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public class q implements com.octopus.ad.utils.a.d {
    private final Context a;
    private Class<?> b;
    private Object c;

    @SuppressLint({"PrivateApi"})
    public q(Context context) {
        this.a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.b = cls;
            this.c = cls.newInstance();
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
        }
    }

    private String b() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return (String) this.b.getMethod("getOAID", Context.class).invoke(this.c, this.a);
    }

    @Override // com.octopus.ad.utils.a.d
    public void a(com.octopus.ad.utils.a.c cVar) {
        if (this.a == null || cVar == null) {
            return;
        }
        if (this.b == null || this.c == null) {
            cVar.a(new com.octopus.ad.utils.a.e("Xiaomi IdProvider not exists"));
            return;
        }
        try {
            String strB = b();
            if (strB == null || strB.length() == 0) {
                throw new com.octopus.ad.utils.a.e("OAID query failed");
            }
            com.octopus.ad.utils.a.f.a("OAID query success: " + strB);
            cVar.a(strB);
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
            cVar.a(e);
        }
    }

    @Override // com.octopus.ad.utils.a.d
    public boolean a() {
        return this.c != null;
    }
}

package com.umeng.commonsdk.amap;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.e;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private Context a;
    private Class<?> b;
    private Object c;

    public a(Context context) {
        e.a("ContentValues", "new UMAmapLocation");
        if (context == null) {
            MLog.e("Context参数不能为null");
            return;
        }
        this.a = context.getApplicationContext();
        try {
            Class<?> cls = Class.forName("com.amap.api.netlocation.AMapNetworkLocationClient");
            this.b = cls;
            if (cls != null) {
                this.c = cls.getConstructor(Context.class).newInstance(this.a);
            }
        } catch (Exception e) {
            e.a("ContentValues", "new UMAmapLocation e is " + e);
        }
    }

    public Class<?> a() {
        return this.b;
    }

    public synchronized byte[] b() {
        byte[] bArr;
        Method method;
        e.a("ContentValues", "UMAmapLocation getNetworkLocationParameter");
        bArr = null;
        try {
            Class<?> cls = this.b;
            if (cls != null && this.c != null && (method = cls.getMethod("getNetworkLocationParameter", new Class[0])) != null) {
                bArr = (byte[]) method.invoke(this.c, new Object[0]);
            }
        } catch (Exception e) {
            e.a("ContentValues", "getNetworkLocationParameter e is " + e);
        }
        return bArr;
    }

    public synchronized void c() {
        Method method;
        e.a("ContentValues", "UMAmapLocation destory");
        try {
            Class<?> cls = this.b;
            if (cls != null && this.c != null && (method = cls.getMethod("destroy", new Class[0])) != null) {
                method.invoke(this.c, new Object[0]);
            }
        } catch (Exception e) {
            e.a("ContentValues", "UMAmapLocation destory e is " + e);
        }
    }
}

package com.anythink.core.common;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.f.az;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class x {
    private static final String c = "x";
    private static volatile x d;
    public Map<String, az> a;
    public Context b;

    private x(Context context) {
        this.b = context.getApplicationContext();
        a();
    }

    public static x a(Context context) {
        if (d == null) {
            synchronized (x.class) {
                if (d == null) {
                    d = new x(context);
                }
            }
        }
        return d;
    }

    private void a() {
        if (this.a == null) {
            this.a = new ConcurrentHashMap(5);
            try {
                Map<String, ?> mapA = com.anythink.core.common.o.s.a(this.b, com.anythink.core.common.b.h.F);
                if (mapA != null) {
                    for (Map.Entry<String, ?> entry : mapA.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof String) {
                            this.a.put(key, az.a((String) value));
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private az b(String str) {
        Map<String, az> map = this.a;
        if (map != null) {
            return map.remove(str);
        }
        return null;
    }

    private static void b() {
    }

    public final void a(String str) {
        Map<String, az> map = this.a;
        if (map == null) {
            return;
        }
        try {
            az azVar = map.get(str);
            if (azVar != null) {
                com.anythink.core.common.o.s.a(this.b, com.anythink.core.common.b.h.F, str, azVar.a().toString());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(String str, String str2, az.a aVar, az.a aVar2) {
        Map<String, az> map = this.a;
        if (map == null) {
            return;
        }
        az azVar = map.get(str);
        if (azVar == null) {
            synchronized (this) {
                azVar = this.a.get(str);
                if (azVar == null) {
                    azVar = new az();
                    azVar.b(str2);
                    this.a.put(str, azVar);
                }
            }
        }
        if (TextUtils.equals(str2, azVar.b())) {
            if (aVar != null) {
                azVar.a(aVar);
                azVar.a(System.currentTimeMillis());
            }
            if (aVar2 != null) {
                azVar.b(aVar2);
            }
        }
    }
}

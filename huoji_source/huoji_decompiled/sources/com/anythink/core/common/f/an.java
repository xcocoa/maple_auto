package com.anythink.core.common.f;

import com.anythink.core.api.ATAdInfo;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class an {
    private Map<String, Object> b;
    private e c;
    private Map<String, String> d;
    private boolean f;
    private Map<String, String> h;
    private String g = "";
    public final Object a = new Object();
    private Map<String, com.anythink.core.common.f> e = new ConcurrentHashMap(1);

    public final com.anythink.core.common.f a(String str) {
        return this.e.get(str);
    }

    public final Object a() {
        return this.a;
    }

    public final void a(ATAdInfo aTAdInfo) {
        if (aTAdInfo != null) {
            this.c = new e(aTAdInfo.getAdsourceId(), aTAdInfo.getShowId(), aTAdInfo.getNetworkFirmId());
        } else {
            this.c = null;
        }
    }

    public final void a(String str, com.anythink.core.common.f fVar) {
        this.e.put(str, fVar);
    }

    public final void a(String str, Object obj) {
        if (this.b == null) {
            this.b = new ConcurrentHashMap(2);
        }
        this.b.put(str, obj);
    }

    public final void a(String str, String str2) {
        synchronized (this) {
            if (this.d == null) {
                this.d = new ConcurrentHashMap(2);
            }
        }
        this.d.put(str, str2);
    }

    public final void a(Map<String, Object> map) {
        this.b = map;
    }

    public final void a(boolean z) {
        this.f = z;
    }

    public final void a(Object[] objArr) {
        this.g = com.anythink.core.common.o.i.a(objArr);
    }

    public final String b(String str) {
        Map<String, String> map = this.d;
        return map == null ? "" : map.remove(str);
    }

    public final Map<String, Object> b() {
        return this.b;
    }

    public final void b(String str, String str2) {
        if (this.h == null) {
            this.h = new ConcurrentHashMap(2);
        }
        this.h.put(str, str2);
    }

    public final e c() {
        return this.c;
    }

    public final String c(String str) {
        Map<String, String> map = this.h;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public final boolean d() {
        return this.f;
    }

    public final String e() {
        return this.g;
    }
}

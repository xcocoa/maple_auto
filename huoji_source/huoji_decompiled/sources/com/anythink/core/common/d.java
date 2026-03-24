package com.anythink.core.common;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.f.av;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static final String a = "d";
    private static volatile d e;
    private Context b;
    private final Map<String, com.anythink.core.common.f.p> c = new ConcurrentHashMap(8);
    private Map<String, String> d;

    private d() {
    }

    public static d a() {
        if (e == null) {
            synchronized (d.class) {
                if (e == null) {
                    e = new d();
                }
            }
        }
        return e;
    }

    public final com.anythink.core.common.f.p a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.anythink.core.common.f.p pVarRemove = this.c.remove(str);
        StringBuilder sb = new StringBuilder("popBiddingRecorder, placementId: ");
        sb.append(str);
        sb.append(", lastBiddingRecorder: ");
        sb.append(pVarRemove);
        if (pVarRemove != null) {
            com.anythink.core.common.o.s.a(this.b, com.anythink.core.common.b.h.N, str);
        }
        return pVarRemove;
    }

    public final void a(Context context) {
        com.anythink.core.common.f.p pVarA;
        this.b = context;
        try {
            Map<String, ?> mapA = com.anythink.core.common.o.s.a(context, com.anythink.core.common.b.h.N);
            if (mapA != null) {
                for (Map.Entry<String, ?> entry : mapA.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if ((value instanceof String) && (pVarA = com.anythink.core.common.f.p.a((String) value)) != null) {
                        this.c.put(key, pVarA);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(String str, com.anythink.core.common.f.p pVar) {
        StringBuilder sb = new StringBuilder("putBiddingRecorder, placementId: ");
        sb.append(str);
        sb.append(", currentBiddingRecorder: ");
        sb.append(pVar);
        this.c.put(str, pVar);
    }

    public final synchronized void a(String str, String str2) {
        if (this.d == null) {
            this.d = new ConcurrentHashMap();
        }
        this.d.put(str, str2);
    }

    public final void a(String str, String str2, String str3) {
        av avVarA;
        com.anythink.core.common.f.p pVar = this.c.get(str);
        if (pVar == null || (avVarA = pVar.a()) == null || !TextUtils.equals(avVarA.u(), str3) || !TextUtils.equals(pVar.b(), str2)) {
            return;
        }
        StringBuilder sb = new StringBuilder("markShowStatus, placementId: ");
        sb.append(str);
        sb.append(", requestId: ");
        sb.append(str2);
        sb.append(", adSourceId: ");
        sb.append(str3);
        pVar.c();
        b(str);
    }

    public final void b(String str) {
        try {
            com.anythink.core.common.f.p pVar = this.c.get(str);
            if (pVar != null) {
                com.anythink.core.common.o.s.a(this.b, com.anythink.core.common.b.h.N, str, pVar.g().toString());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void b(String str, String str2, String str3) {
        av avVarA;
        com.anythink.core.common.f.p pVar = this.c.get(str);
        if (pVar == null || (avVarA = pVar.a()) == null || !TextUtils.equals(avVarA.u(), str3) || !TextUtils.equals(pVar.b(), str2)) {
            return;
        }
        StringBuilder sb = new StringBuilder("markClickStatus, placementId: ");
        sb.append(str);
        sb.append(", requestId: ");
        sb.append(str2);
        sb.append(", adSourceId: ");
        sb.append(str3);
        pVar.d();
        b(str);
    }

    public final synchronized String c(String str) {
        Map<String, String> map = this.d;
        if (map == null) {
            return null;
        }
        return map.remove(str);
    }
}

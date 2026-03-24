package com.anythink.core.common;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.f.aq;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class v {
    private static final String b = "v";
    private static volatile v f;
    public Context a;
    private final Map<String, Integer> c = new ConcurrentHashMap(8);
    private final Map<String, aq> d = new ConcurrentHashMap(8);
    private final Map<String, Boolean> e = new ConcurrentHashMap(8);

    private v(Context context) {
        this.a = context.getApplicationContext();
    }

    public static v a(Context context) {
        if (f == null) {
            synchronized (v.class) {
                if (f == null) {
                    f = new v(context);
                }
            }
        }
        return f;
    }

    private boolean c(String str) {
        Boolean boolValueOf = this.e.get(str);
        if (boolValueOf == null) {
            boolValueOf = Boolean.valueOf(com.anythink.core.common.o.s.c(this.a, com.anythink.core.common.b.h.I, str));
            if (boolValueOf.booleanValue()) {
                StringBuilder sb = new StringBuilder("checkFirstLoadAfterInstall: ");
                sb.append(str);
                sb.append(",  update to false");
                com.anythink.core.common.o.s.b(this.a, com.anythink.core.common.b.h.I, str);
            }
            this.e.put(str, Boolean.FALSE);
        }
        StringBuilder sb2 = new StringBuilder("checkFirstLoadAfterInstall: ");
        sb2.append(str);
        sb2.append(", is first load after install: ");
        sb2.append(boolValueOf);
        return boolValueOf.booleanValue();
    }

    public final aq a(String str, String str2) {
        Boolean boolValueOf = this.e.get(str);
        if (boolValueOf == null) {
            boolValueOf = Boolean.valueOf(com.anythink.core.common.o.s.c(this.a, com.anythink.core.common.b.h.I, str));
            if (boolValueOf.booleanValue()) {
                StringBuilder sb = new StringBuilder("checkFirstLoadAfterInstall: ");
                sb.append(str);
                sb.append(",  update to false");
                com.anythink.core.common.o.s.b(this.a, com.anythink.core.common.b.h.I, str);
            }
            this.e.put(str, Boolean.FALSE);
        }
        StringBuilder sb2 = new StringBuilder("checkFirstLoadAfterInstall: ");
        sb2.append(str);
        sb2.append(", is first load after install: ");
        sb2.append(boolValueOf);
        boolean zBooleanValue = boolValueOf.booleanValue();
        aq aqVarRemove = this.d.remove(str);
        if (aqVarRemove == null) {
            StringBuilder sb3 = new StringBuilder("placementId: ");
            sb3.append(str);
            sb3.append(", first request after boot");
            aqVarRemove = new aq("", zBooleanValue);
        } else {
            StringBuilder sb4 = new StringBuilder("placementId: ");
            sb4.append(str);
            sb4.append(", not first request after boot");
        }
        this.d.put(str, new aq(str2, false));
        return aqVarRemove;
    }

    public final void a(String str) {
        Integer num = this.c.get(str);
        if (num == null) {
            StringBuilder sb = new StringBuilder("updateBidCount: ");
            sb.append(str);
            sb.append(", it is first bid");
            this.c.put(str, 1);
            return;
        }
        StringBuilder sb2 = new StringBuilder("updateBidCount: ");
        sb2.append(str);
        sb2.append(", bid count: ");
        sb2.append(num.intValue() + 1);
        this.c.put(str, Integer.valueOf(num.intValue() + 1));
    }

    public final void a(String str, String str2, boolean z) {
        aq aqVar;
        if (TextUtils.isEmpty(str) || (aqVar = this.d.get(str)) == null || !TextUtils.equals(str2, aqVar.a())) {
            return;
        }
        StringBuilder sb = new StringBuilder("recordLoadResult: ");
        sb.append(str);
        sb.append(", requestId: ");
        sb.append(str2);
        sb.append(", load result: ");
        sb.append(z);
        aqVar.a(z);
    }

    public final int b(String str) {
        Integer num = this.c.get(str);
        if (num == null) {
            return 1;
        }
        return num.intValue();
    }
}

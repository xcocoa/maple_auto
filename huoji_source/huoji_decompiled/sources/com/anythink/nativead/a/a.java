package com.anythink.nativead.a;

import android.content.Context;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.f;
import com.anythink.core.common.f.h;
import com.anythink.core.common.o.v;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String a = "a";
    private static Map<String, a> e = new ConcurrentHashMap(3);
    private Context b;
    private String c;
    private f d;

    private a(Context context, String str) {
        this.b = context.getApplicationContext();
        this.c = str;
        this.d = f.a(context, str, "0");
    }

    public static a a(Context context, String str) {
        a aVar = e.get(str);
        if (aVar == null) {
            synchronized (a.class) {
                if (aVar == null) {
                    aVar = new a(context, str);
                    e.put(str, aVar);
                }
            }
        }
        return aVar;
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        return this.d.a(context, map);
    }

    public final com.anythink.core.common.f.b a(String str, Map<String, Object> map) {
        final com.anythink.core.common.f.b bVarA = this.d.a(this.b, false, true, map);
        if (bVarA == null || !(bVarA.e() instanceof com.anythink.nativead.unitgroup.a) || !(bVarA.d() instanceof CustomNativeAdapter)) {
            return null;
        }
        h detail = bVarA.e().getDetail();
        detail.B = str;
        bVarA.a(bVarA.c() + 1);
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.nativead.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.a.a().a(bVarA);
            }
        });
        v.a(map, detail);
        v.a(this.c, detail);
        return bVarA;
    }

    public final List<ATAdInfo> a(Context context) {
        return this.d.b(context);
    }

    public final void a(Context context, com.anythink.core.common.b.a aVar, com.anythink.core.common.b.b bVar, Map<String, Object> map, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        com.anythink.core.common.f.v vVar = new com.anythink.core.common.f.v();
        vVar.a(context);
        vVar.e = bVar;
        vVar.d = 0;
        if (map != null) {
            try {
                vVar.g = new HashMap(map);
            } catch (Throwable unused) {
            }
        }
        vVar.l = aTAdxBidFloorInfo;
        this.d.b(this.b, "0", this.c, vVar, aVar);
    }
}

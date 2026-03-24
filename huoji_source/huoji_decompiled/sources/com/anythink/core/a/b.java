package com.anythink.core.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.d;
import com.anythink.core.common.o.s;
import com.anythink.core.d.f;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static volatile b c;
    public final String a = b.class.getSimpleName();
    public ConcurrentHashMap<String, d> b = new ConcurrentHashMap<>();

    public static b a() {
        if (c == null) {
            synchronized (b.class) {
                if (c == null) {
                    c = new b();
                }
            }
        }
        return c;
    }

    public final boolean a(Context context, String str, f fVar) {
        if (fVar.aw() <= 0) {
            return false;
        }
        d dVar = this.b.get(str);
        if (dVar == null) {
            String strB = s.b(context, h.w, str, "");
            dVar = new d();
            if (!TextUtils.isEmpty(strB)) {
                dVar.a(strB);
            }
            this.b.put(str, dVar);
        }
        StringBuilder sb = new StringBuilder("Load Cap info:");
        sb.append(str);
        sb.append(":");
        sb.append(dVar.toString());
        return dVar.a >= fVar.aw() && System.currentTimeMillis() - dVar.b <= fVar.ax();
    }

    public final void b(Context context, String str, f fVar) {
        d dVar = this.b.get(str);
        if (dVar == null) {
            String strB = s.b(context, h.w, str, "");
            d dVar2 = new d();
            if (!TextUtils.isEmpty(strB)) {
                dVar2.a(strB);
            }
            this.b.put(str, dVar2);
            dVar = dVar2;
        }
        if (System.currentTimeMillis() - dVar.b > fVar.ax()) {
            dVar.b = System.currentTimeMillis();
            dVar.a = 0;
        }
        dVar.a++;
        StringBuilder sb = new StringBuilder("After save load cap:");
        sb.append(str);
        sb.append(":");
        sb.append(dVar.toString());
        s.a(context, h.w, str, dVar.toString());
    }
}

package com.anythink.basead.f.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.basead.c.c;
import com.anythink.core.common.f.z;
import com.anythink.core.d.f;
import com.anythink.core.d.h;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static b a;
    private Context b;
    private ConcurrentHashMap<String, c> d = new ConcurrentHashMap<>();
    private SimpleDateFormat c = new SimpleDateFormat("yyyyMMdd");

    private b(Context context) {
        this.b = context.getApplicationContext();
    }

    public static b a(Context context) {
        if (a == null) {
            a = new b(context);
        }
        return a;
    }

    public final String a() {
        List<c> listB = com.anythink.basead.b.c.a(this.b).b(this.c.format(new Date(System.currentTimeMillis())));
        JSONArray jSONArray = new JSONArray();
        if (listB != null) {
            Iterator<c> it = listB.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().a);
            }
        }
        return jSONArray.toString();
    }

    public final void a(z zVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = this.c.format(new Date(jCurrentTimeMillis));
        final c cVarD = d(zVar);
        if (cVarD.f.equals(str)) {
            cVarD.d++;
        } else {
            cVarD.d = 1;
            cVarD.f = str;
        }
        cVarD.e = jCurrentTimeMillis;
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.basead.f.a.b.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.basead.b.c.a(b.this.b).c(cVarD.f);
                com.anythink.basead.b.c.a(b.this.b).a(cVarD);
            }
        }, 2, true);
    }

    public final boolean a(String str) {
        List<z> listR;
        f fVarA = h.a(this.b).a(str);
        if (fVarA == null || (listR = fVarA.R()) == null || listR.size() <= 0) {
            return false;
        }
        Iterator<z> it = listR.iterator();
        while (it.hasNext()) {
            if (!b(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean b(z zVar) {
        c cVarD = d(zVar);
        int i = zVar.c;
        return i != -1 && cVarD.d >= i;
    }

    public final boolean c(z zVar) {
        return System.currentTimeMillis() - d(zVar).e <= zVar.d;
    }

    public final c d(z zVar) {
        String str = this.c.format(new Date(System.currentTimeMillis()));
        c cVarA = this.d.get(zVar.t());
        if (cVarA == null) {
            cVarA = com.anythink.basead.b.c.a(this.b).a(zVar.t());
            if (cVarA == null) {
                cVarA = new c();
                cVarA.a = zVar.t();
                cVarA.b = zVar.c;
                cVarA.c = zVar.d;
                cVarA.e = 0L;
                cVarA.d = 0;
                cVarA.f = str;
            }
            this.d.put(zVar.t(), cVarA);
        }
        if (!TextUtils.equals(str, cVarA.f)) {
            cVarA.f = str;
            cVarA.d = 0;
        }
        return cVarA;
    }
}

package com.anythink.basead.a;

import android.content.Context;
import android.content.IntentFilter;
import com.anythink.core.common.f.l;
import com.anythink.core.common.k;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private static volatile g b;
    public f a;
    private Context c;
    private ConcurrentHashMap<String, l> d = new ConcurrentHashMap<>();

    private g(Context context) {
        this.c = context;
    }

    public static g a(Context context) {
        if (b == null) {
            synchronized (g.class) {
                if (b == null) {
                    b = new g(context);
                }
            }
        }
        return b;
    }

    private void b() {
        if (this.a != null) {
            k.a(this.c).a(this.a);
            this.a = null;
        }
    }

    public final void a() {
        if (this.c != null && this.a == null) {
            this.a = new f();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(com.anythink.china.common.a.b);
            intentFilter.addAction(com.anythink.china.common.a.c);
            intentFilter.addAction(com.anythink.china.common.a.d);
            intentFilter.addAction(com.anythink.china.common.a.e);
            k.a(this.c).a(this.a, intentFilter);
        }
    }

    public final void a(String str, l lVar) {
        this.d.put(str, lVar);
    }

    public final void a(String str, String str2) {
        l lVar = this.d.get(str);
        if (lVar != null) {
            com.anythink.basead.c.i iVar = new com.anythink.basead.c.i("", "");
            com.anythink.basead.c.b bVar = new com.anythink.basead.c.b();
            iVar.i = bVar;
            bVar.a = str2;
            a.a(18, lVar, iVar);
        }
    }

    public final void b(String str, String str2) {
        l lVar = this.d.get(str);
        if (lVar != null) {
            com.anythink.basead.c.i iVar = new com.anythink.basead.c.i("", "");
            com.anythink.basead.c.b bVar = new com.anythink.basead.c.b();
            iVar.i = bVar;
            bVar.a = str2;
            a.a(19, lVar, iVar);
        }
    }

    public final void c(String str, String str2) {
        l lVar = this.d.get(str);
        if (lVar != null) {
            com.anythink.basead.c.i iVar = new com.anythink.basead.c.i("", "");
            com.anythink.basead.c.b bVar = new com.anythink.basead.c.b();
            iVar.i = bVar;
            bVar.a = str2;
            a.a(20, lVar, iVar);
        }
    }

    public final void d(String str, String str2) {
        l lVarRemove = this.d.remove(str);
        if (lVarRemove != null) {
            com.anythink.basead.c.i iVar = new com.anythink.basead.c.i("", "");
            com.anythink.basead.c.b bVar = new com.anythink.basead.c.b();
            iVar.i = bVar;
            bVar.a = str2;
            a.a(21, lVarRemove, iVar);
        }
        if (this.d.size() != 0 || this.a == null) {
            return;
        }
        k.a(this.c).a(this.a);
        this.a = null;
    }
}

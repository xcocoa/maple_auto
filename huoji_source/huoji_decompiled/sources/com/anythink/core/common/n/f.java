package com.anythink.core.common.n;

import android.content.Context;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.k;
import com.anythink.core.common.h.a.c;
import com.anythink.core.common.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f extends m<k> {
    private static volatile f g;

    private f(Context context) {
        super(context);
    }

    public static f a(Context context) {
        if (g == null) {
            synchronized (f.class) {
                if (g == null) {
                    g = new f(context);
                }
            }
        }
        return g;
    }

    @Override // com.anythink.core.common.m
    public final void a(List<k> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<k> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a().toString());
        }
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
        if (aVarB == null) {
            com.anythink.core.common.h.b bVar = new com.anythink.core.common.h.b(this.d, 0, arrayList);
            bVar.p();
            bVar.a(0, (com.anythink.core.common.h.k) null);
        } else if (aVarB.w() != 1) {
            com.anythink.core.common.h.b bVar2 = new com.anythink.core.common.h.b(this.d, aVarB.w(), arrayList);
            bVar2.p();
            bVar2.a(0, (com.anythink.core.common.h.k) null);
        } else {
            com.anythink.core.common.h.a.a aVar = new com.anythink.core.common.h.a.a(arrayList);
            aVar.a(1, aVarB.v());
            aVar.a();
            aVar.a((c.a) null);
        }
    }
}

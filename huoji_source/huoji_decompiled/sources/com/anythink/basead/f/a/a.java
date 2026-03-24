package com.anythink.basead.f.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.basead.a.b.b;
import com.anythink.basead.a.e;
import com.anythink.basead.c.c;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ab;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.z;
import com.anythink.core.d.f;
import com.anythink.core.d.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static a a;
    private Context b;

    private a(Context context) {
        this.b = context.getApplicationContext();
    }

    public static a a(Context context) {
        if (a == null) {
            a = new a(context);
        }
        return a;
    }

    private static boolean a(z zVar) {
        List<String> listJ = n.a().j();
        if (listJ == null) {
            return false;
        }
        Iterator<String> it = listJ.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(zVar.F(), it.next())) {
                return true;
            }
        }
        return false;
    }

    public final z a(String str, String str2) {
        f fVarA = h.a(this.b).a(str);
        if (fVarA == null) {
            return null;
        }
        return fVarA.b(str2);
    }

    public final void a(String str) {
        List<z> listR;
        ab abVarQ;
        f fVarA = h.a(this.b).a(str);
        if (fVarA == null || (listR = fVarA.R()) == null || (abVarQ = fVarA.Q()) == null) {
            return;
        }
        e.a();
        if (listR != null) {
            int size = listR.size();
            for (int i = 0; i < size; i++) {
                m mVar = new m();
                mVar.n = abVarQ;
                e.a(str, true, listR.get(i), mVar, null);
            }
        }
    }

    public final void a(String str, z zVar, m mVar, b.InterfaceC0049b interfaceC0049b) {
        if (a(zVar)) {
            interfaceC0049b.a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.h, com.anythink.basead.c.f.H));
            return;
        }
        if (b.a(this.b).b(zVar)) {
            interfaceC0049b.a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.e, com.anythink.basead.c.f.A));
        } else if (b.a(this.b).c(zVar)) {
            interfaceC0049b.a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.f, com.anythink.basead.c.f.B));
        } else {
            e.a();
            e.a(str, zVar, mVar, interfaceC0049b);
        }
    }

    public final boolean a(z zVar, m mVar, boolean z) {
        if (this.b == null || zVar == null || a(zVar)) {
            return false;
        }
        if (z) {
            e.a();
            return e.a(zVar, mVar);
        }
        if (!b.a(this.b).b(zVar) && !b.a(this.b).c(zVar)) {
            e.a();
            if (e.a(zVar, mVar)) {
                return true;
            }
        }
        return false;
    }

    public final String b(String str) {
        f fVarA = h.a(this.b).a(str);
        if (fVarA == null) {
            return "";
        }
        List<z> listR = fVarA.R();
        ArrayList arrayList = new ArrayList();
        if (listR == null || listR.size() == 0) {
            return "";
        }
        for (int size = listR.size() - 1; size >= 0; size--) {
            z zVar = listR.get(size);
            e.a();
            if (e.a(zVar, fVarA.ah(), fVarA.Q())) {
                arrayList.add(b.a(this.b).d(zVar));
            } else {
                listR.remove(size);
            }
        }
        if (arrayList.size() == 0) {
            return "";
        }
        Collections.sort(arrayList, new Comparator<c>() { // from class: com.anythink.basead.f.a.a.1
            private static int a(c cVar, c cVar2) {
                return Integer.valueOf(cVar.d).compareTo(Integer.valueOf(cVar2.d));
            }

            @Override // java.util.Comparator
            public final /* synthetic */ int compare(c cVar, c cVar2) {
                return Integer.valueOf(cVar.d).compareTo(Integer.valueOf(cVar2.d));
            }
        });
        return ((c) arrayList.get(0)).a;
    }
}

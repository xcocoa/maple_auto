package com.anythink.expressad.foundation.g.c;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    private a a;
    private String b;
    private e c;
    private List<e> d;

    private void a(e eVar) {
        this.c = eVar;
    }

    private void b(e eVar) {
        if (this.d == null) {
            this.d = new ArrayList();
        }
        eVar.c = this;
        this.d.add(eVar);
    }

    public final a a() {
        return this.a;
    }

    public final void a(a aVar) {
        this.a = aVar;
    }

    public final void a(a aVar, String str) {
        e eVar = new e();
        eVar.a = aVar;
        eVar.b = str;
        b(eVar);
    }

    public final void a(String str) {
        this.b = str;
    }

    public final void a(List<e> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<e> it = list.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    public final String b() {
        return this.b;
    }

    public final e c() {
        return this.c;
    }

    public final List<e> d() {
        return this.d;
    }
}

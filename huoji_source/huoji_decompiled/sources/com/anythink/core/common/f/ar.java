package com.anythink.core.common.f;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ar {
    private String a;
    private List<b> b;

    public ar(String str, List<b> list) {
        this.a = str;
        this.b = list;
    }

    public final String a() {
        return this.a;
    }

    public final synchronized void a(int i) {
        List<b> list = this.b;
        if (list != null) {
            Iterator<b> it = list.iterator();
            while (it.hasNext()) {
                it.next().d().getUnitGroupInfo().n = i;
            }
        }
    }

    public final synchronized void a(b bVar) {
        List<b> list = this.b;
        if (list != null) {
            list.remove(bVar);
        }
    }

    public final synchronized int b() {
        List<b> list = this.b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final synchronized b c() {
        List<b> list = this.b;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.b.get(0);
    }

    public final synchronized boolean d() {
        List<b> list = this.b;
        b bVar = (list == null || list.size() <= 0) ? null : this.b.get(0);
        if (bVar != null) {
            return bVar.a();
        }
        return false;
    }

    public final synchronized double e() {
        List<b> list = this.b;
        b bVar = (list == null || list.size() <= 0) ? null : this.b.get(0);
        if (bVar != null) {
            return com.anythink.core.common.o.h.a(bVar.d().getUnitGroupInfo());
        }
        return 0.0d;
    }

    public final synchronized long f() {
        List<b> list = this.b;
        b bVar = (list == null || list.size() <= 0) ? null : this.b.get(0);
        if (bVar != null) {
            return bVar.b();
        }
        return 0L;
    }

    public final synchronized void g() {
        List<b> list = this.b;
        if (list == null) {
            return;
        }
        for (b bVar : list) {
            if (bVar != null) {
                com.anythink.core.b.d.b.a(bVar, true);
                bVar.l();
            }
        }
    }
}

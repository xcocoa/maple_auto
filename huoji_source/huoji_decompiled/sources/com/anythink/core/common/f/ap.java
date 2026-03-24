package com.anythink.core.common.f;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ap {
    public com.anythink.core.d.f a;
    public h b;
    public List<av> c;
    public List<av> d;
    public List<av> e;
    public List<av> f;
    public int g;

    public ap(com.anythink.core.d.f fVar, h hVar, int i) {
        this.g = 0;
        this.a = fVar;
        this.b = hVar;
        this.g = i;
    }

    public final com.anythink.core.d.f a() {
        return this.a;
    }

    public final void a(List<av> list) {
        this.c = list;
    }

    public final int b() {
        return this.g;
    }

    public final void b(List<av> list) {
        this.d = list;
    }

    public final h c() {
        return this.b;
    }

    public final void c(List<av> list) {
        this.e = list;
    }

    public final List<av> d() {
        return this.c;
    }

    public final void d(List<av> list) {
        this.f = list;
    }

    public final List<av> e() {
        return this.d;
    }

    public final List<av> f() {
        return this.e;
    }

    public final List<av> g() {
        return this.f;
    }

    public final boolean h() {
        List<av> list = this.c;
        if (list != null && list.size() > 0) {
            return true;
        }
        List<av> list2 = this.d;
        if (list2 != null && list2.size() > 0) {
            return true;
        }
        List<av> list3 = this.e;
        if (list3 != null && list3.size() > 0) {
            return true;
        }
        List<av> list4 = this.f;
        return list4 != null && list4.size() > 0;
    }
}

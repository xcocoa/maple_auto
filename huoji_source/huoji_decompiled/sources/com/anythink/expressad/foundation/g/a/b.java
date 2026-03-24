package com.anythink.expressad.foundation.g.a;

import android.util.Log;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<K, V> extends a<K, V> {
    private static final int b = 16;
    private static final int c = 16777216;
    private final int d;
    private final List<V> f = Collections.synchronizedList(new LinkedList());
    private final AtomicInteger e = new AtomicInteger();

    private b(int i) {
        this.d = i;
        if (i > 16777216) {
            Log.w(a.a, String.format("You set too large memory cache size (more than %1$d Mb)", 16));
        }
    }

    private int e() {
        return this.d;
    }

    @Override // com.anythink.expressad.foundation.g.a.a, com.anythink.expressad.foundation.g.a.e
    public final void a(K k) {
        Object objB = super.b(k);
        if (objB != null && this.f.remove(objB)) {
            this.e.addAndGet(-c());
        }
        super.a(k);
    }

    @Override // com.anythink.expressad.foundation.g.a.a, com.anythink.expressad.foundation.g.a.e
    public final boolean a(K k, V v) {
        boolean z;
        int iC = c();
        int i = this.d;
        int iAddAndGet = this.e.get();
        if (iC < i) {
            while (iAddAndGet + iC > i) {
                if (this.f.remove(d())) {
                    iAddAndGet = this.e.addAndGet(-c());
                }
            }
            this.f.add(v);
            this.e.addAndGet(iC);
            z = true;
        } else {
            z = false;
        }
        super.a(k, v);
        return z;
    }

    @Override // com.anythink.expressad.foundation.g.a.a, com.anythink.expressad.foundation.g.a.e
    public final void b() {
        this.f.clear();
        this.e.set(0);
        super.b();
    }

    public abstract int c();

    public abstract V d();
}

package com.anythink.expressad.video.dynview.d;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a<K, V> extends HashMap<K, V> {
    private ReferenceQueue<V> a = new ReferenceQueue<>();
    private HashMap<K, a<K, V>.C0150a<K, V>> b = new HashMap<>();

    /* JADX INFO: renamed from: com.anythink.expressad.video.dynview.d.a$a, reason: collision with other inner class name */
    public class C0150a<K, V> extends SoftReference<V> {
        public K a;

        public C0150a(K k, V v, ReferenceQueue referenceQueue) {
            super(v, referenceQueue);
            this.a = k;
        }
    }

    private void a() {
        while (true) {
            C0150a c0150a = (C0150a) this.a.poll();
            if (c0150a == null) {
                return;
            } else {
                this.b.remove(c0150a.a);
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        a();
        return this.b.containsKey(obj);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        a();
        a<K, V>.C0150a<K, V> c0150a = this.b.get(obj);
        if (c0150a == null) {
            return null;
        }
        return c0150a.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        a();
        a<K, V>.C0150a<K, V> c0150aPut = this.b.put(k, new C0150a<>(k, v, this.a));
        if (c0150aPut == null) {
            return null;
        }
        return c0150aPut.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        a();
        a<K, V>.C0150a<K, V> c0150aRemove = this.b.remove(obj);
        if (c0150aRemove == null) {
            return null;
        }
        return c0150aRemove.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final int size() {
        a();
        return this.b.size();
    }
}

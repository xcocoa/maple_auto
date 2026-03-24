package com.anythink.expressad.foundation.g.a;

import java.lang.ref.Reference;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<K, V> implements e<K, V> {
    public static final String a = "cache";
    private final Map<K, Reference<V>> b = Collections.synchronizedMap(new HashMap());

    @Override // com.anythink.expressad.foundation.g.a.e
    public final Collection<K> a() {
        HashSet hashSet;
        synchronized (this.b) {
            hashSet = new HashSet(this.b.keySet());
        }
        return hashSet;
    }

    @Override // com.anythink.expressad.foundation.g.a.e
    public void a(K k) {
        this.b.remove(k);
    }

    @Override // com.anythink.expressad.foundation.g.a.e
    public boolean a(K k, V v) {
        this.b.put(k, c(v));
        return true;
    }

    @Override // com.anythink.expressad.foundation.g.a.e
    public final V b(K k) {
        Reference<V> reference = this.b.get(k);
        if (reference != null) {
            return reference.get();
        }
        return null;
    }

    @Override // com.anythink.expressad.foundation.g.a.e
    public void b() {
        this.b.clear();
    }

    public abstract Reference<V> c(V v);
}

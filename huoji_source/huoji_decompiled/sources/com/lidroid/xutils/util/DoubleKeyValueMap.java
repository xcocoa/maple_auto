package com.lidroid.xutils.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class DoubleKeyValueMap<K1, K2, V> {
    private ConcurrentHashMap<K1, ConcurrentHashMap<K2, V>> k1_k2V_map = new ConcurrentHashMap<>();

    public void clear() {
        if (this.k1_k2V_map.size() > 0) {
            Iterator<ConcurrentHashMap<K2, V>> it = this.k1_k2V_map.values().iterator();
            while (it.hasNext()) {
                it.next().clear();
            }
            this.k1_k2V_map.clear();
        }
    }

    public boolean containsKey(K1 k1) {
        return this.k1_k2V_map.containsKey(k1);
    }

    public boolean containsKey(K1 k1, K2 k2) {
        if (this.k1_k2V_map.containsKey(k1)) {
            return this.k1_k2V_map.get(k1).containsKey(k2);
        }
        return false;
    }

    public V get(K1 k1, K2 k2) {
        ConcurrentHashMap<K2, V> concurrentHashMap = this.k1_k2V_map.get(k1);
        if (concurrentHashMap == null) {
            return null;
        }
        return concurrentHashMap.get(k2);
    }

    public ConcurrentHashMap<K2, V> get(K1 k1) {
        return this.k1_k2V_map.get(k1);
    }

    public Collection<V> getAllValues() {
        Set<K1> setKeySet = this.k1_k2V_map.keySet();
        if (setKeySet == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<K1> it = setKeySet.iterator();
        while (it.hasNext()) {
            Collection<V> collectionValues = this.k1_k2V_map.get(it.next()).values();
            if (collectionValues != null) {
                arrayList.addAll(collectionValues);
            }
        }
        return arrayList;
    }

    public Collection<V> getAllValues(K1 k1) {
        ConcurrentHashMap<K2, V> concurrentHashMap = this.k1_k2V_map.get(k1);
        if (concurrentHashMap == null) {
            return null;
        }
        return concurrentHashMap.values();
    }

    public Set<K1> getFirstKeys() {
        return this.k1_k2V_map.keySet();
    }

    public void put(K1 k1, K2 k2, V v) {
        ConcurrentHashMap<K2, V> concurrentHashMap;
        if (k1 == null || k2 == null || v == null) {
            return;
        }
        if (this.k1_k2V_map.containsKey(k1) && (concurrentHashMap = this.k1_k2V_map.get(k1)) != null) {
            concurrentHashMap.put(k2, v);
            return;
        }
        ConcurrentHashMap<K2, V> concurrentHashMap2 = new ConcurrentHashMap<>();
        concurrentHashMap2.put(k2, v);
        this.k1_k2V_map.put(k1, concurrentHashMap2);
    }

    public void remove(K1 k1) {
        this.k1_k2V_map.remove(k1);
    }

    public void remove(K1 k1, K2 k2) {
        ConcurrentHashMap<K2, V> concurrentHashMap = this.k1_k2V_map.get(k1);
        if (concurrentHashMap != null) {
            concurrentHashMap.remove(k2);
        }
    }

    public int size() {
        int size = 0;
        if (this.k1_k2V_map.size() == 0) {
            return 0;
        }
        Iterator<ConcurrentHashMap<K2, V>> it = this.k1_k2V_map.values().iterator();
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }
}

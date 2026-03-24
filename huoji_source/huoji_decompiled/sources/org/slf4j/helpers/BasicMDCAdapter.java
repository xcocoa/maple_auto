package org.slf4j.helpers;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.slf4j.spi.MDCAdapter;

/* JADX INFO: loaded from: classes2.dex */
public class BasicMDCAdapter implements MDCAdapter {
    public static boolean IS_JDK14 = isJDK14();
    private InheritableThreadLocal inheritableThreadLocal = new InheritableThreadLocal();

    public static boolean isJDK14() {
        try {
            return System.getProperty("java.version").startsWith("1.4");
        } catch (SecurityException unused) {
            return false;
        }
    }

    @Override // org.slf4j.spi.MDCAdapter
    public void clear() {
        Map map = (Map) this.inheritableThreadLocal.get();
        if (map != null) {
            map.clear();
            if (isJDK14()) {
                this.inheritableThreadLocal.set(null);
            } else {
                this.inheritableThreadLocal.remove();
            }
        }
    }

    @Override // org.slf4j.spi.MDCAdapter
    public String get(String str) {
        Map map = (Map) this.inheritableThreadLocal.get();
        if (map == null || str == null) {
            return null;
        }
        return (String) map.get(str);
    }

    @Override // org.slf4j.spi.MDCAdapter
    public Map getCopyOfContextMap() {
        Map map = (Map) this.inheritableThreadLocal.get();
        if (map == null) {
            return null;
        }
        Map mapSynchronizedMap = Collections.synchronizedMap(new HashMap());
        synchronized (map) {
            mapSynchronizedMap.putAll(map);
        }
        return mapSynchronizedMap;
    }

    public Set getKeys() {
        Map map = (Map) this.inheritableThreadLocal.get();
        if (map != null) {
            return map.keySet();
        }
        return null;
    }

    @Override // org.slf4j.spi.MDCAdapter
    public void put(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("key cannot be null");
        }
        Map mapSynchronizedMap = (Map) this.inheritableThreadLocal.get();
        if (mapSynchronizedMap == null) {
            mapSynchronizedMap = Collections.synchronizedMap(new HashMap());
            this.inheritableThreadLocal.set(mapSynchronizedMap);
        }
        mapSynchronizedMap.put(str, str2);
    }

    @Override // org.slf4j.spi.MDCAdapter
    public void remove(String str) {
        Map map = (Map) this.inheritableThreadLocal.get();
        if (map != null) {
            map.remove(str);
        }
    }

    @Override // org.slf4j.spi.MDCAdapter
    public void setContextMap(Map map) {
        this.inheritableThreadLocal.set(Collections.synchronizedMap(new HashMap(map)));
    }
}

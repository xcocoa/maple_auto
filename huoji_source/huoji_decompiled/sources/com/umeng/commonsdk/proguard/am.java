package com.umeng.commonsdk.proguard;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class am implements Serializable {
    private static Map<Class<? extends aa>, Map<? extends ah, am>> d = new HashMap();
    public final String a;
    public final byte b;
    public final an c;

    public am(String str, byte b, an anVar) {
        this.a = str;
        this.b = b;
        this.c = anVar;
    }

    public static Map<? extends ah, am> a(Class<? extends aa> cls) {
        if (!d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("IllegalAccessException for TBase class: " + cls.getName() + ", message: " + e.getMessage());
            } catch (InstantiationException e2) {
                throw new RuntimeException("InstantiationException for TBase class: " + cls.getName() + ", message: " + e2.getMessage());
            }
        }
        return d.get(cls);
    }

    public static void a(Class<? extends aa> cls, Map<? extends ah, am> map) {
        d.put(cls, map);
    }
}

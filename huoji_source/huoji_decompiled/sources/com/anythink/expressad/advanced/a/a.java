package com.anythink.expressad.advanced.a;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static Map<String, Boolean> a = new HashMap();

    private static void a() {
        a.clear();
    }

    public static void a(String str) {
        a.put(str, Boolean.TRUE);
    }

    public static boolean b(String str) {
        if (a.containsKey(str)) {
            return a.get(str).booleanValue();
        }
        return false;
    }

    public static void c(String str) {
        a.remove(str);
    }
}

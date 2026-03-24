package com.anythink.basead.a;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static final String a = "c";
    private static volatile c c;
    public ConcurrentHashMap<String, com.anythink.basead.c.d> b = new ConcurrentHashMap<>();

    private c() {
    }

    public static c a() {
        if (c == null) {
            synchronized (c.class) {
                if (c == null) {
                    c = new c();
                }
            }
        }
        return c;
    }

    public final com.anythink.basead.c.d a(int i, String str) {
        return this.b.get(i + str);
    }

    public final void a(int i, String str, com.anythink.basead.c.d dVar) {
        this.b.put(i + str, dVar);
    }
}

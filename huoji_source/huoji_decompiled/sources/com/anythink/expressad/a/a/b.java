package com.anythink.expressad.a.a;

import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static int a = 0;
    public static int b = 1;
    private String c;
    private int d;
    private HashSet<String> e = new HashSet<>();
    private long f = System.currentTimeMillis();
    private com.anythink.expressad.foundation.d.c g;
    private String h;
    private int i;
    private boolean j;
    private boolean k;
    private int l;

    public b(String str, String str2) {
        this.c = str;
        b(str2);
    }

    private String i() {
        return this.c;
    }

    private HashSet<String> j() {
        return this.e;
    }

    public final void a(int i) {
        this.l = i;
    }

    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        this.g = cVar;
    }

    public final void a(String str) {
        this.h = str;
    }

    public final void a(boolean z) {
        this.j = z;
    }

    public final boolean a() {
        return this.j;
    }

    public final void b(int i) {
        this.i = i;
    }

    public final void b(String str) {
        this.d++;
        this.e.add(str);
    }

    public final void b(boolean z) {
        this.k = z;
    }

    public final boolean b() {
        return this.k;
    }

    public final int c() {
        return this.l;
    }

    public final int d() {
        return this.i;
    }

    public final String e() {
        return this.h;
    }

    public final com.anythink.expressad.foundation.d.c f() {
        return this.g;
    }

    public final int g() {
        return this.d;
    }

    public final long h() {
        return this.f;
    }
}

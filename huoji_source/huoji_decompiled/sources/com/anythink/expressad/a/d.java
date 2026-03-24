package com.anythink.expressad.a;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 4;
    public static final int e = 8;
    public static final int f = 16;
    public static final int g = 32;
    private int a = 1;
    public e h;

    private int a() {
        return this.a;
    }

    private void a(int i) {
        this.a = i;
    }

    private void a(e eVar) {
        this.h = eVar;
    }

    private boolean c() {
        int i = this.a;
        return i == 8 || i == 16;
    }

    private boolean d() {
        return this.a == 2;
    }

    private boolean e() {
        return this.a == 32;
    }

    private boolean f() {
        return this.a == 4;
    }

    public void b() {
        this.a = 8;
    }
}

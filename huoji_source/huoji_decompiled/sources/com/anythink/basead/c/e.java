package com.anythink.basead.c;

/* JADX INFO: loaded from: classes.dex */
public class e {
    public String a;
    public String b;

    public e(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return "code[ " + this.a + " ],desc[ " + this.b + " ]";
    }
}

package com.umeng.commonsdk.proguard;

/* JADX INFO: loaded from: classes2.dex */
public class ba extends ag {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    private static final long h = 1;
    public int g;

    public ba() {
        this.g = 0;
    }

    public ba(int i) {
        this.g = 0;
        this.g = i;
    }

    public ba(int i, String str) {
        super(str);
        this.g = 0;
        this.g = i;
    }

    public ba(int i, String str, Throwable th) {
        super(str, th);
        this.g = 0;
        this.g = i;
    }

    public ba(int i, Throwable th) {
        super(th);
        this.g = 0;
        this.g = i;
    }

    public ba(String str) {
        super(str);
        this.g = 0;
    }

    public ba(String str, Throwable th) {
        super(str, th);
        this.g = 0;
    }

    public ba(Throwable th) {
        super(th);
        this.g = 0;
    }

    public int a() {
        return this.g;
    }
}

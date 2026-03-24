package com.umeng.commonsdk.proguard;

/* JADX INFO: loaded from: classes2.dex */
public class bo extends ag {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    private static final long g = 1;
    public int f;

    public bo() {
        this.f = 0;
    }

    public bo(int i) {
        this.f = 0;
        this.f = i;
    }

    public bo(int i, String str) {
        super(str);
        this.f = 0;
        this.f = i;
    }

    public bo(int i, String str, Throwable th) {
        super(str, th);
        this.f = 0;
        this.f = i;
    }

    public bo(int i, Throwable th) {
        super(th);
        this.f = 0;
        this.f = i;
    }

    public bo(String str) {
        super(str);
        this.f = 0;
    }

    public bo(String str, Throwable th) {
        super(str, th);
        this.f = 0;
    }

    public bo(Throwable th) {
        super(th);
        this.f = 0;
    }

    public int a() {
        return this.f;
    }
}

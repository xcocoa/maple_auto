package com.anythink.core.common.f;

/* JADX INFO: loaded from: classes.dex */
public final class j extends aj {
    public static final int a = 1;
    public static final int b = 2;
    public static final String c = "return_flag";
    public static final String d = "sdk_native_im_w";
    public static final String e = "sdk_native_im_h";
    private String av;
    private String aw;
    private int ax = 1;
    private int ay;

    public final String a() {
        return this.aw;
    }

    public final void a(int i) {
        this.ax = i;
    }

    public final void a(String str) {
        this.aw = str;
    }

    public final String b() {
        return this.av;
    }

    public final void b(int i) {
        this.ay = i;
    }

    public final void b(String str) {
        this.av = str;
    }

    public final int c() {
        return this.ax;
    }

    @Override // com.anythink.core.common.f.l
    public final int d() {
        return this.ax == 1 ? 2 : 4;
    }

    public final int e() {
        return this.ay;
    }
}

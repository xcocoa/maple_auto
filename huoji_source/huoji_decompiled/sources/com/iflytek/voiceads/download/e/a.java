package com.iflytek.voiceads.download.e;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a extends RuntimeException {
    private int a;

    public a(int i) {
        this.a = i;
    }

    public a(int i, String str) {
        super(str);
        this.a = i;
    }

    public a(int i, String str, Throwable th) {
        super(str, th);
        this.a = i;
    }
}

package com.iflytek.voiceads.download.d;

import java.io.Serializable;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class b implements Serializable {
    private String a;
    private long b;
    private long c;
    private long d;

    public b(String str, long j, long j2) {
        this.a = str;
        this.b = j;
        this.c = j2;
    }

    public String a() {
        return this.a;
    }

    public void a(long j) {
        this.d = j;
    }

    public long b() {
        return this.b;
    }

    public long c() {
        return this.c;
    }

    public long d() {
        return this.d;
    }
}

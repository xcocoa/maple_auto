package com.anythink.core.common.f;

/* JADX INFO: loaded from: classes.dex */
public final class aq {
    private String a;
    private boolean b;
    private Boolean c;

    public aq(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public final synchronized String a() {
        return this.a;
    }

    public final synchronized void a(boolean z) {
        this.c = Boolean.valueOf(z);
    }

    public final synchronized boolean b() {
        return this.b;
    }

    public final synchronized Boolean c() {
        return this.c;
    }
}

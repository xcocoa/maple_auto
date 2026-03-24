package com.anythink.expressad.videocommon.b;

import com.anythink.core.common.res.a.a;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private String a;
    private int b;
    private int c;
    private com.anythink.core.common.res.a.a d;

    public b(String str, int i, int i2) {
        this.a = str;
        this.b = i;
        this.c = i2;
        com.anythink.core.common.res.a.a aVarA = com.anythink.core.common.res.a.c.a().a(this.a);
        this.d = aVarA;
        aVarA.a(new com.anythink.core.common.res.a.b(i, i2));
    }

    public final void a() {
        this.d.e();
    }

    public final void a(a.AbstractC0094a abstractC0094a) {
        this.d.a(abstractC0094a);
    }

    public final void b() {
        this.d.f();
    }
}

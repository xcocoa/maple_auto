package com.anythink.core.common.f;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class s {
    private String a;
    private String b;
    private String c;

    public s(Context context, long j, String str, String str2) {
        this.a = str;
        this.b = str2;
        if (System.currentTimeMillis() - j <= 86400000) {
            this.c = com.anythink.core.common.o.s.b(context, com.anythink.core.common.b.h.p, "det".concat(String.valueOf(str)), "");
        } else {
            this.c = com.anythink.core.common.o.e.a(context, str2);
            com.anythink.core.common.o.s.a(context, com.anythink.core.common.b.h.p, "det".concat(String.valueOf(str)), this.c);
        }
    }

    private String c() {
        return this.b;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.c;
    }
}

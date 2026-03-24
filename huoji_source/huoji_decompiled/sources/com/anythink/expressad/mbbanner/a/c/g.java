package com.anythink.expressad.mbbanner.a.c;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public class g implements com.anythink.expressad.foundation.g.d.c {
    private static final String a = "g";
    private com.anythink.expressad.mbbanner.a.d.b b;
    private String c;

    public g(com.anythink.expressad.mbbanner.a.d.b bVar, String str) {
        this.b = bVar;
        this.c = str;
    }

    @Override // com.anythink.expressad.foundation.g.d.c
    public final void a(Bitmap bitmap, String str) {
        this.b.a(this.c, 1, str, true);
    }

    @Override // com.anythink.expressad.foundation.g.d.c
    public final void a(String str, String str2) {
        this.b.a(this.c, 1, str2, false);
    }
}

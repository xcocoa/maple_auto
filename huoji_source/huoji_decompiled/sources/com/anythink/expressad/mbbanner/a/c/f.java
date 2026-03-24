package com.anythink.expressad.mbbanner.a.c;

import com.anythink.expressad.videocommon.b.i;

/* JADX INFO: loaded from: classes.dex */
public class f implements i.b {
    private static final String a = "f";
    private com.anythink.expressad.mbbanner.a.d.b b;
    private String c;

    public f(com.anythink.expressad.mbbanner.a.d.b bVar, String str) {
        this.b = bVar;
        this.c = str;
    }

    @Override // com.anythink.expressad.videocommon.b.i.a
    public final void a(String str) {
        com.anythink.expressad.mbbanner.a.d.b bVar = this.b;
        if (bVar != null) {
            bVar.a(this.c, 3, str, true);
        }
    }

    @Override // com.anythink.expressad.videocommon.b.i.a
    public final void a(String str, String str2) {
        com.anythink.expressad.mbbanner.a.d.b bVar = this.b;
        if (bVar != null) {
            bVar.a(this.c, 3, str, false);
        }
    }
}

package com.anythink.basead.a.b;

import android.text.TextUtils;
import com.anythink.basead.c.i;
import com.anythink.core.common.f.l;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e extends com.anythink.core.common.res.image.b {
    private String a;
    private boolean b;
    private boolean j;
    private String k;
    private int l;
    private l m;

    public e(String str, boolean z, l lVar, String str2) {
        super(str2);
        this.m = lVar;
        this.a = str;
        this.b = z;
        this.j = TextUtils.equals(lVar.B(), str2);
        this.k = lVar.t();
        this.l = lVar.d();
    }

    @Override // com.anythink.core.common.res.image.b
    public final Map<String, String> a() {
        return null;
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(com.anythink.core.common.o.b.d dVar) {
        com.anythink.core.common.o.b.b bVarA;
        int i;
        if (this.b) {
            bVarA = com.anythink.core.common.o.b.b.a();
            i = 5;
        } else {
            bVarA = com.anythink.core.common.o.b.b.a();
            i = 4;
        }
        bVarA.a(dVar, i);
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(String str, String str2) {
        if (this.j) {
            com.anythink.core.common.n.e.a(this.a, this.k, this.c, "0", this.i, str2, this.e, 0L, this.l, this.h - this.f);
        }
        d.a().a(this.c, com.anythink.basead.c.f.a(str, str2));
    }

    @Override // com.anythink.core.common.res.image.b
    public final boolean a(InputStream inputStream) {
        com.anythink.basead.a.e.a();
        return com.anythink.basead.a.e.a(this.c, inputStream);
    }

    @Override // com.anythink.core.common.res.image.b
    public final void b() {
    }

    @Override // com.anythink.core.common.res.image.b
    public final void c() {
        if (this.j) {
            com.anythink.basead.a.a.a(30, this.m, new i("", ""));
            com.anythink.core.common.n.e.a(this.a, this.k, this.c, "1", this.i, (String) null, this.e, this.g, this.l, this.h - this.f);
        }
        d.a().a(this.c, 100);
    }
}

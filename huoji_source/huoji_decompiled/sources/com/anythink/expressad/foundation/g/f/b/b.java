package com.anythink.expressad.foundation.g.f.b;

import com.anythink.expressad.foundation.g.f.f;
import com.anythink.expressad.foundation.g.f.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends f<String> {
    private static final String a = "b";

    @Override // com.anythink.expressad.foundation.g.f.f, com.anythink.expressad.foundation.g.f.e
    public final void a(com.anythink.expressad.foundation.g.f.a.a aVar) {
        com.anythink.expressad.foundation.g.f.g.a.a(aVar);
    }

    @Override // com.anythink.expressad.foundation.g.f.f, com.anythink.expressad.foundation.g.f.e
    public final void a(k<String> kVar) {
        if (kVar != null) {
            a(kVar.a);
        }
    }

    public abstract void a(String str);

    public abstract void f();
}

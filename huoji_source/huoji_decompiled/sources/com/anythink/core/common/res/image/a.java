package com.anythink.core.common.res.image;

import com.anythink.core.common.b.n;
import com.anythink.core.common.o.b.d;
import com.anythink.core.common.o.g;
import com.anythink.core.common.res.e;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {
    public e a;
    public InterfaceC0095a b;

    /* JADX INFO: renamed from: com.anythink.core.common.res.image.a$a, reason: collision with other inner class name */
    public interface InterfaceC0095a {
        void a(e eVar);

        void a(e eVar, String str);
    }

    public a(e eVar) {
        super(eVar.f);
        this.a = eVar;
    }

    @Override // com.anythink.core.common.res.image.b
    public final Map<String, String> a() {
        return null;
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(d dVar) {
        com.anythink.core.common.o.b.b.a().a(dVar, 4);
    }

    public final void a(InterfaceC0095a interfaceC0095a) {
        this.b = interfaceC0095a;
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(String str, String str2) {
        InterfaceC0095a interfaceC0095a = this.b;
        if (interfaceC0095a != null) {
            interfaceC0095a.a(this.a, str2);
        }
    }

    @Override // com.anythink.core.common.res.image.b
    public final boolean a(InputStream inputStream) {
        com.anythink.core.common.res.d dVarA = com.anythink.core.common.res.d.a(n.a().f());
        e eVar = this.a;
        return dVarA.a(eVar.e, g.a(eVar.f), inputStream);
    }

    @Override // com.anythink.core.common.res.image.b
    public final void b() {
    }

    @Override // com.anythink.core.common.res.image.b
    public final void c() {
        InterfaceC0095a interfaceC0095a = this.b;
        if (interfaceC0095a != null) {
            interfaceC0095a.a(this.a);
        }
    }
}

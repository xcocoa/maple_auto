package com.anythink.basead.e;

import com.anythink.core.common.f.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class f implements j {
    public l a;
    public com.anythink.core.common.f.h b;

    public f(l lVar, com.anythink.core.common.f.h hVar) {
        this.a = lVar;
        this.b = hVar;
    }

    private void a() {
        l lVar = this.a;
        if (lVar instanceof com.anythink.core.common.f.j) {
            com.anythink.core.common.f.j jVar = (com.anythink.core.common.f.j) lVar;
            if (jVar.c() == 1) {
                com.anythink.core.common.a.d.a().b(jVar);
            }
        }
    }

    @Override // com.anythink.basead.e.a
    public void onAdClick(i iVar) {
        com.anythink.core.common.f.h hVar = this.b;
        if (hVar != null) {
            hVar.B(iVar.a);
            this.b.C(iVar.b);
        }
    }

    @Override // com.anythink.basead.e.a
    public void onAdShow(i iVar) {
        l lVar = this.a;
        if (lVar instanceof com.anythink.core.common.f.j) {
            com.anythink.core.common.f.j jVar = (com.anythink.core.common.f.j) lVar;
            if (jVar.c() == 1) {
                com.anythink.core.common.a.d.a().b(jVar);
            }
        }
        com.anythink.core.common.f.h hVar = this.b;
        if (hVar == null || iVar == null) {
            return;
        }
        String strAj = hVar.aj();
        strAj.hashCode();
        if (strAj.equals("1")) {
            this.b.o(iVar.c);
        } else if (strAj.equals("3")) {
            this.b.a(iVar.d);
        }
    }
}

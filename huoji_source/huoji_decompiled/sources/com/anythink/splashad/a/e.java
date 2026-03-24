package com.anythink.splashad.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.f.v;
import com.anythink.core.common.n;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e implements com.anythink.core.common.j.e {
    public f a;

    @Override // com.anythink.core.common.j.e
    public final com.anythink.core.common.f.b a(String str, boolean z, Map<String, Object> map, com.anythink.core.common.f.c cVar) {
        com.anythink.core.common.f.b bVar;
        f fVar = this.a;
        com.anythink.core.common.f.b bVar2 = (fVar == null || (bVar = fVar.d) == null || bVar.c() > 0) ? null : fVar.d;
        if (bVar2 == null) {
            return null;
        }
        com.anythink.core.common.f.h hVarH = bVar2.h();
        if (z) {
            com.anythink.core.common.n.e.a(hVarH.ai(), str, true, -1, (com.anythink.core.d.f) null, bVar2, "", "", map, cVar);
        }
        return bVar2;
    }

    @Override // com.anythink.core.common.j.e
    public final void a(com.anythink.core.common.f.b bVar) {
        f fVar = this.a;
        if (fVar == null || fVar.d != bVar) {
            return;
        }
        fVar.d = null;
    }

    @Override // com.anythink.core.common.j.e
    public final boolean a() {
        f fVar = this.a;
        return fVar != null && fVar.a();
    }

    @Override // com.anythink.core.common.j.e
    public final boolean a(Context context, String str, String str2, v vVar, n nVar) {
        f fVar = new f(context);
        this.a = fVar;
        fVar.a(vVar.a(), str, str2, vVar, nVar);
        return true;
    }

    @Override // com.anythink.core.common.j.e
    public final boolean b() {
        f fVar = this.a;
        return (fVar == null || TextUtils.isEmpty(fVar.e)) ? false : true;
    }
}

package com.anythink.expressad.foundation.g.f;

import android.content.Context;
import com.anythink.core.common.b.n;

/* JADX INFO: loaded from: classes.dex */
public final class m {
    private static m c;
    private j a;
    private com.anythink.expressad.foundation.g.f.d.b b;

    private m() {
    }

    public static com.anythink.expressad.foundation.g.f.d.b a() {
        com.anythink.expressad.foundation.g.f.d.b bVar;
        m mVar = c;
        if (mVar == null) {
            mVar = new m();
            c = mVar;
            if (mVar.b == null) {
                bVar = new com.anythink.expressad.foundation.g.f.d.b(b());
            }
            return c.b;
        }
        com.anythink.expressad.foundation.g.f.d.b bVar2 = mVar.b;
        if (bVar2 != null) {
            return bVar2;
        }
        bVar = new com.anythink.expressad.foundation.g.f.d.b(b());
        mVar.b = bVar;
        return c.b;
    }

    public static void a(Context context) {
        if (c == null) {
            m mVar = new m();
            c = mVar;
            mVar.a = new j(context.getApplicationContext());
            c.b = new com.anythink.expressad.foundation.g.f.d.b(b());
        }
    }

    public static void a(i iVar) {
        b().a(iVar);
    }

    private static j b() {
        j jVar;
        m mVar = c;
        if (mVar == null) {
            mVar = new m();
            c = mVar;
            if (mVar.a == null) {
                jVar = new j(n.a().f());
            }
            return c.a;
        }
        j jVar2 = mVar.a;
        if (jVar2 != null) {
            return jVar2;
        }
        jVar = new j(n.a().f());
        mVar.a = jVar;
        return c.a;
    }

    private static void c() {
        com.anythink.expressad.foundation.g.f.d.b bVar;
        m mVar = c;
        if (mVar == null || (bVar = mVar.b) == null) {
            return;
        }
        bVar.a();
        c.b = null;
    }
}

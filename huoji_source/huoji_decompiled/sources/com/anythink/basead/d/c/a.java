package com.anythink.basead.d.c;

import android.text.TextUtils;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.ak;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static void a(ak akVar, com.anythink.basead.d.c cVar, boolean z) {
        if (akVar == null || cVar == null) {
            return;
        }
        akVar.x(cVar.a());
        if (!z) {
            akVar.y(cVar.b());
        }
        akVar.e(cVar.d());
        akVar.r(cVar.c());
        akVar.q(cVar.e());
        akVar.b(cVar.f());
        akVar.p(cVar.g());
        akVar.c(cVar.h());
        akVar.d(cVar.i());
        akVar.f(cVar.j());
    }

    public static void a(m mVar, aj ajVar) {
        n nVar;
        if (mVar == null || ajVar == null || (nVar = mVar.n) == null || !(nVar instanceof ak)) {
            return;
        }
        n nVarO = ajVar.o();
        if (nVarO != null) {
            nVarO.x(nVar.E());
            nVarO.y(nVar.F());
            nVarO.r(nVar.y());
            nVarO.e(nVar.x());
            nVarO.s(nVar.z());
            nVarO.q(nVar.w());
            nVarO.b(nVar.t());
            nVarO.p(nVar.v());
            nVarO.d(nVar.h());
            nVarO.c(nVar.g());
            nVarO.f(nVar.K());
            mVar.n = nVarO;
        } else {
            ajVar.a(mVar.n);
        }
        if (!ajVar.I()) {
            n nVar2 = mVar.n;
            nVar2.a(nVar2.ai());
        }
        boolean z = !(ajVar instanceof j) || TextUtils.isEmpty(((j) ajVar).a());
        if (!com.anythink.basead.a.d.a(ajVar, mVar)) {
            mVar.n.j(2);
        }
        if (z && TextUtils.isEmpty(ajVar.E())) {
            mVar.n.t(0);
            mVar.n.v(0);
            mVar.n.J(2);
            mVar.n.j(2);
            mVar.n.C(1);
            mVar.n.u(-2);
            mVar.n.c(false);
            mVar.n.d(false);
            mVar.n.e(false);
            mVar.n.W(2);
            if (ajVar.k()) {
                mVar.n.w(1);
            }
        }
        if (mVar.j != 3 || com.anythink.basead.a.d.a(ajVar, mVar)) {
            mVar.n.V(0);
        }
        if (TextUtils.isEmpty(ajVar.E())) {
            mVar.n.U(1);
        }
    }
}

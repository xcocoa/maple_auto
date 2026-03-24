package com.anythink.basead.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public static int a(Context context, l lVar) {
        int iH = lVar.H();
        return com.anythink.core.common.o.i.a(context, (iH == 1 || iH == 4) ? "myoffer_cta_install_now" : "myoffer_cta_learn_more", com.anythink.expressad.foundation.h.i.g);
    }

    public static boolean a(l lVar) {
        return (TextUtils.isEmpty(lVar.x()) && TextUtils.isEmpty(lVar.v()) && TextUtils.isEmpty(lVar.w())) ? false : true;
    }

    public static boolean a(l lVar, m mVar) {
        if (lVar == null || mVar == null) {
            return false;
        }
        String strValueOf = String.valueOf(mVar.j);
        strValueOf.hashCode();
        if (strValueOf.equals("1")) {
            return true;
        }
        return strValueOf.equals("3") && lVar.G() == 1 && lVar.I();
    }

    public static boolean b(l lVar) {
        return lVar != null && lVar.k();
    }
}

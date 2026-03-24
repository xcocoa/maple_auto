package com.anythink.basead.handler;

import android.content.Context;
import com.anythink.basead.a.a;
import com.anythink.basead.a.c;
import com.anythink.basead.a.h;
import com.anythink.basead.c.d;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;

/* JADX INFO: loaded from: classes.dex */
public class OfferClickHandler extends IOfferClickHandler {
    private static d a(l lVar) {
        return c.a().a(lVar.d(), lVar.t());
    }

    @Override // com.anythink.core.api.IOfferClickHandler
    public boolean startDownloadApp(Context context, l lVar, m mVar, String str) {
        return a.a(context, mVar, lVar, c.a().a(lVar.d(), lVar.t()), str, new h());
    }
}

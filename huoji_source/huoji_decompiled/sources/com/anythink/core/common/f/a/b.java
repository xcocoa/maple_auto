package com.anythink.core.common.f.a;

import android.util.Log;
import com.anythink.core.api.ATAdAppInfo;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.l;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b extends l implements Serializable {
    public final String a;

    public b(e eVar) {
        String simpleName = b.class.getSimpleName();
        this.a = simpleName;
        o(eVar.getIconImageUrl());
        i(eVar.getStarRating().intValue());
        q(eVar.getMainImageUrl());
        m(eVar.getTitle());
        s(eVar.getCallToActionText());
        n(eVar.getDescriptionText());
        r(eVar.getAdChoiceIconUrl());
        a(eVar.getAdLogo());
        ATAdAppInfo adAppInfo = eVar.getAdAppInfo();
        if (adAppInfo != null) {
            if (n.a().A()) {
                Log.i(simpleName, "AdAppInfo:" + eVar.getAdAppInfo().toString());
            }
            z(adAppInfo.getPublisher());
            A(adAppInfo.getAppVersion());
            B(adAppInfo.getAppPrivacyUrl());
            C(adAppInfo.getAppPermissonUrl());
            c(adAppInfo.getFunctionUrl());
        }
    }

    @Override // com.anythink.core.common.f.l
    public final boolean P() {
        return true;
    }

    @Override // com.anythink.core.common.f.l
    public final List<String> b(com.anythink.core.common.f.n nVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(y());
        return arrayList;
    }

    @Override // com.anythink.core.common.f.l
    public final int d() {
        return 10;
    }

    @Override // com.anythink.core.common.f.l
    public final String q() {
        return "";
    }
}

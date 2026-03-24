package com.anythink.basead;

import android.text.TextUtils;
import com.anythink.basead.c.i;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.ak;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.q;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static Map<String, Object> a(com.anythink.basead.d.b bVar) {
        if (bVar != null) {
            return a(bVar.f());
        }
        return null;
    }

    public static Map<String, Object> a(com.anythink.basead.f.c cVar) {
        if (cVar != null) {
            return a(cVar.e());
        }
        return null;
    }

    public static Map<String, Object> a(l lVar) {
        String string;
        if (lVar == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("offer_id", lVar.t());
        map.put("creative_id", lVar.u());
        map.put(ATAdConst.NETWORK_CUSTOM_KEY.IS_DEEPLINK_OFFER, Integer.valueOf((TextUtils.isEmpty(lVar.s()) && TextUtils.isEmpty(lVar.D())) ? 0 : 1));
        if (lVar instanceof aj) {
            aj ajVar = (aj) lVar;
            map.put("dsp_id", ajVar.ad());
            if (ajVar.o() instanceof ak) {
                map.put(ATAdConst.NETWORK_CUSTOM_KEY.WS_IMP_SWITCH, Integer.valueOf(((ak) ajVar.o()).av()));
            }
            if (lVar instanceof j) {
                map.put(ATAdConst.NETWORK_CUSTOM_KEY.WS_ACTION, new q.a() { // from class: com.anythink.basead.b.1
                    private i b;

                    {
                        this.b = new i(this.a.n(), "");
                    }

                    @Override // com.anythink.core.common.f.q.a
                    public final void a(Map<String, Object> map2) {
                        i iVar = this.b;
                        iVar.l = map2;
                        com.anythink.basead.a.a.a(10, this.a, iVar);
                        com.anythink.core.common.a.a.a();
                        com.anythink.core.common.a.a.c(n.a().f(), ((j) this.a).b());
                    }

                    @Override // com.anythink.core.common.f.q.a
                    public final void b(Map<String, Object> map2) {
                        i iVar = this.b;
                        iVar.l = map2;
                        com.anythink.basead.a.a.a(36, this.a, iVar);
                    }
                });
                if (!lVar.I()) {
                    if (ajVar.o().aj() == 1) {
                        string = "6";
                    } else if (ajVar.o().ak() > 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(ajVar.o().ak());
                        string = sb.toString();
                    }
                    map.put(ATAdConst.NETWORK_CUSTOM_KEY.RV_ANIM_TYPE, string);
                }
            }
        }
        return map;
    }
}

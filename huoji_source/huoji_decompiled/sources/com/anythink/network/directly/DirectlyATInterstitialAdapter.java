package com.anythink.network.directly;

import android.app.Activity;
import android.content.Context;
import com.anythink.basead.d.d;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.l;
import com.anythink.network.adx.AdxATInterstitialAdapter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DirectlyATInterstitialAdapter extends AdxATInterstitialAdapter {
    private int d = 0;

    public void fixDirectlyInterstitial() {
        l lVarF;
        d dVar = this.b;
        if (dVar == null || (lVarF = dVar.f()) == null) {
            return;
        }
        lVarF.g(this.d == 0 ? 2 : 1);
        aj ajVar = (aj) lVarF;
        if (ajVar.ai() == 5 && this.d == 0) {
            ajVar.q(3);
        }
    }

    @Override // com.anythink.network.adx.AdxATInterstitialAdapter, com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkName() {
        return "Directly";
    }

    @Override // com.anythink.network.adx.AdxATInterstitialAdapter, com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        Object obj;
        if (map.containsKey("unit_type") && (obj = map.get("unit_type")) != null) {
            this.d = Integer.parseInt(obj.toString());
        }
        super.loadCustomNetworkAd(context, map, map2);
    }

    @Override // com.anythink.network.adx.AdxATInterstitialAdapter, com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        fixDirectlyInterstitial();
        super.show(activity);
    }
}

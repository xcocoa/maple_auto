package cn.haorui.sdk.platform.topon.recycler;

import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HRExpressAd extends CustomNativeAd {
    private static final String TAG = "HRExpressAd";
    private RecyclerAdData adData;

    public HRExpressAd(RecyclerAdData recyclerAdData) {
        this.adData = recyclerAdData;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        RecyclerAdData recyclerAdData = this.adData;
        if (recyclerAdData != null) {
            recyclerAdData.destroy();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        return this.adData.getAdView();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(view);
        this.adData.bindAdToView(view.getContext(), (ViewGroup) view, arrayList, new RecylcerAdInteractionListener() { // from class: cn.haorui.sdk.platform.topon.recycler.HRExpressAd.1
            @Override // cn.haorui.sdk.core.loader.InteractionListener
            public void onAdClicked() {
                HRExpressAd.this.notifyAdClicked();
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
            public void onAdClosed() {
                HRExpressAd.this.notifyAdDislikeClick();
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
            public void onAdRenderFailed() {
            }
        });
    }
}

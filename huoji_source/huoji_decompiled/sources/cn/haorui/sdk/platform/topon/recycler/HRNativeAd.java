package cn.haorui.sdk.platform.topon.recycler;

import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class HRNativeAd extends CustomNativeAd {
    private RecyclerAdData adData;

    public HRNativeAd(RecyclerAdData recyclerAdData) {
        this.adData = recyclerAdData;
        setAdData();
    }

    private void setAdData() {
        setTitle(this.adData.getTitle());
        setDescriptionText(this.adData.getDesc());
        setIconImageUrl(this.adData.getIconUrl());
        String[] imgUrls = this.adData.getImgUrls();
        if (imgUrls != null && imgUrls.length > 0) {
            setMainImageUrl(imgUrls[0]);
        }
        setImageUrlList(Arrays.asList(imgUrls));
        setCallToActionText(this.adData.getActionText());
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
        try {
            RecyclerAdData recyclerAdData = this.adData;
            if (recyclerAdData != null) {
                return recyclerAdData.getAdView();
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public ViewGroup getCustomAdContainer() {
        return super.getCustomAdContainer();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public boolean isNativeExpress() {
        return false;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(view);
        this.adData.bindAdToView(view.getContext(), (ViewGroup) view, arrayList, new RecylcerAdInteractionListener() { // from class: cn.haorui.sdk.platform.topon.recycler.HRNativeAd.1
            @Override // cn.haorui.sdk.core.loader.InteractionListener
            public void onAdClicked() {
                HRNativeAd.this.notifyAdClicked();
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
            public void onAdClosed() {
                HRNativeAd.this.notifyAdDislikeClick();
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
            public void onAdRenderFailed() {
            }
        });
    }
}

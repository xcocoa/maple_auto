package cn.haorui.sdk.platform.hr.interstitial;

import android.app.Activity;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.interstitial.NativeInterstitialAd;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAd;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListener;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.AderUtil;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.ResultBean;

/* JADX INFO: loaded from: classes.dex */
public class HRInterstitialAdAdapter extends InterstitialAd {
    private InterstitialAdListener apiAdListener;
    private NativeInterstitialAd interstitialAd;

    public HRInterstitialAdAdapter(@NonNull NativeInterstitialAd nativeInterstitialAd, InterstitialAdListener interstitialAdListener) {
        super(null, HRConstants.PLATFORM_HR);
        this.interstitialAd = nativeInterstitialAd;
        this.apiAdListener = interstitialAdListener;
    }

    public InterstitialAdListener getAdListener() {
        return this.apiAdListener;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        resultBean.setCid(this.interstitialAd.getAdSlot().getCid());
        resultBean.setCat(this.interstitialAd.getAdSlot().getCat());
        resultBean.setAderId(this.interstitialAd.getAdSlot().getAder_id());
        resultBean.setFromId(this.interstitialAd.getAdSlot().getFromId());
        resultBean.setReqId(this.interstitialAd.getAdSlot().getReq_id());
        resultBean.setPrice(this.interstitialAd.getAdSlot().getEcpm());
        resultBean.setEcpm(this.interstitialAd.getAdSlot().getEcpm() + "");
        resultBean.setS_code(this.interstitialAd.getAdSlot().getS_code());
        resultBean.setS_ext(this.interstitialAd.getAdSlot().getS_ext());
        resultBean.setSdkName(HRConstants.PLATFORM_HR);
        return resultBean;
    }

    public String getDeepLink() {
        if (AderUtil.getIsOperationContent(this.interstitialAd.getAdSlot().getAder_id())) {
            return this.interstitialAd.getAdSlot().getDeep_link();
        }
        return null;
    }

    public String[] getImgUrls() {
        if (AderUtil.getIsOperationContent(this.interstitialAd.getAdSlot().getAder_id())) {
            return this.interstitialAd.getAdSlot().getImageUrls();
        }
        return null;
    }

    public boolean getIsOperationContent() {
        return AderUtil.getIsOperationContent(this.interstitialAd.getAdSlot().getAder_id());
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public void setInteractionListener(InteractionListener interactionListener) {
        super.setInteractionListener(interactionListener);
        this.interstitialAd.setInteractionListener(interactionListener);
    }

    @Override // cn.haorui.sdk.core.ad.interstitial.InterstitialAd
    public void showAd() {
        this.interstitialAd.showAd();
    }

    @Override // cn.haorui.sdk.core.ad.interstitial.InterstitialAd
    public void showAd(Activity activity) {
        this.interstitialAd.showAd(activity);
    }
}

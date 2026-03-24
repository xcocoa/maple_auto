package cn.haorui.sdk.platform.hr.banner;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import cn.haorui.sdk.R;
import cn.haorui.sdk.adsail_ad.banner.BannerAdSlot;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.banner.IBannerAd;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.AderUtil;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.ResultBean;
import cn.haorui.sdk.platform.hr.BaseHrAd;

/* JADX INFO: loaded from: classes.dex */
public class HRBannerAd extends BaseHrAd implements IBannerAd {
    private Activity activity;
    private ViewGroup adContainer;
    private BannerAdSlot adSlot;

    public HRBannerAd(BannerAdSlot bannerAdSlot) {
        super(bannerAdSlot);
        this.adSlot = bannerAdSlot;
    }

    @Override // cn.haorui.sdk.platform.hr.BaseHrAd, cn.haorui.sdk.platform.hr.IAdSailAd
    public AdType getAdType() {
        return AdType.BANNER;
    }

    @Override // cn.haorui.sdk.platform.hr.BaseHrAd, cn.haorui.sdk.platform.hr.IAdSailAd
    public Context getContext() {
        Activity activity = this.activity;
        if (activity != null) {
            return activity;
        }
        ViewGroup viewGroup = this.adContainer;
        return viewGroup != null ? viewGroup.getContext() : this.adView.getContext();
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        resultBean.setCid(this.adSlot.getCid());
        resultBean.setCat(this.adSlot.getCat());
        resultBean.setAderId(this.adSlot.getAder_id());
        resultBean.setFromId(this.adSlot.getFromId());
        resultBean.setReqId(this.adSlot.getReq_id());
        resultBean.setPrice(this.adSlot.getEcpm());
        resultBean.setEcpm(String.valueOf(this.adSlot.getEcpm()));
        resultBean.setS_code(this.adSlot.getS_code());
        resultBean.setS_ext(this.adSlot.getS_ext());
        resultBean.setSdkName(HRConstants.PLATFORM_HR);
        return resultBean;
    }

    public String getDeepLink() {
        if (AderUtil.getIsOperationContent(this.adSlot.getAder_id())) {
            return this.adSlot.getDeep_link();
        }
        return null;
    }

    public String[] getImgUrls() {
        if (AderUtil.getIsOperationContent(this.adSlot.getAder_id())) {
            return this.adSlot.getImageUrls();
        }
        return null;
    }

    public boolean getIsOperationContent() {
        return AderUtil.getIsOperationContent(this.adSlot.getAder_id());
    }

    @Override // cn.haorui.sdk.core.ad.banner.IBannerAd
    public void setCloseButtonVisible(boolean z) {
        this.adView.findViewById(R.id.adsail_banner_close_button).setVisibility(z ? 0 : 4);
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public void setInteractionListener(InteractionListener interactionListener) {
        super.setInteractionListener(interactionListener);
    }

    @Override // cn.haorui.sdk.core.ad.banner.IBannerAd
    public void setWidthAndHeight(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        ImageView imageView = (ImageView) this.adView.findViewById(R.id.adsail_banner_image);
        imageView.getLayoutParams().width = i;
        imageView.getLayoutParams().height = i2;
        imageView.getParent().requestLayout();
    }

    @Override // cn.haorui.sdk.core.ad.banner.IBannerAd
    public void showAd(Activity activity, ViewGroup viewGroup) {
        View view = this.adView;
        if (view == null) {
            return;
        }
        this.activity = activity;
        this.adContainer = viewGroup;
        if (viewGroup == null || view.getParent() != null) {
            return;
        }
        viewGroup.addView(this.adView);
    }

    @Override // cn.haorui.sdk.core.ad.banner.IBannerAd
    public void showAd(ViewGroup viewGroup) {
        View view = this.adView;
        if (view == null) {
            return;
        }
        this.adContainer = viewGroup;
        if (viewGroup == null || view.getParent() != null) {
            return;
        }
        viewGroup.addView(this.adView);
    }
}

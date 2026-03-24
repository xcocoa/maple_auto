package cn.haorui.sdk.platform.hr.draw;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.core.ad.AdSlot;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.draw.DrawAd;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.ResultBean;
import cn.haorui.sdk.platform.hr.IAdSailAd;

/* JADX INFO: loaded from: classes.dex */
public class HRDrawAd extends DrawAd implements IAdSailAd {
    private static final String TAG = "AdSailDrawAd";
    private ViewGroup adContainer;
    private AdSlot adSlot;
    private View adView;

    public HRDrawAd(AdSlot adSlot, View view) {
        super(null, HRConstants.PLATFORM_HR);
        this.adSlot = adSlot;
        this.adView = view;
    }

    @Override // cn.haorui.sdk.core.ad.draw.DrawAd, cn.haorui.sdk.core.ad.draw.IDrawAd
    public void destroy() {
        View view = this.adView;
        if (view == null || !(view instanceof NormalMediaView)) {
            return;
        }
        LogUtil.e(TAG, "destroy: ");
        ((NormalMediaView) this.adView).destroy();
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public AdSlot getAdSlot() {
        return this.adSlot;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public AdType getAdType() {
        return null;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public Context getContext() {
        ViewGroup viewGroup = this.adContainer;
        return viewGroup != null ? viewGroup.getContext() : this.adView.getContext();
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        AdSlot adSlot = this.adSlot;
        if (adSlot instanceof NativeAdSlot) {
            resultBean.setCid(((NativeAdSlot) adSlot).getCid());
            resultBean.setCat(((NativeAdSlot) this.adSlot).getCat());
            resultBean.setAderId(((NativeAdSlot) this.adSlot).getAder_id());
            resultBean.setFromId(((NativeAdSlot) this.adSlot).getFromId());
            resultBean.setReqId(((NativeAdSlot) this.adSlot).getReq_id());
            resultBean.setPrice(((NativeAdSlot) this.adSlot).getEcpm());
            resultBean.setEcpm(((NativeAdSlot) this.adSlot).getEcpm() + "");
            resultBean.setS_code(((NativeAdSlot) this.adSlot).getS_code());
            resultBean.setS_ext(((NativeAdSlot) this.adSlot).getS_ext());
            resultBean.setSdkName(HRConstants.PLATFORM_HR);
        }
        return resultBean;
    }

    @Override // cn.haorui.sdk.core.ad.draw.DrawAd, cn.haorui.sdk.core.ad.draw.IDrawAd
    public int getInteractionType() {
        return this.adSlot.getInteractionType();
    }

    @Override // cn.haorui.sdk.core.ad.draw.DrawAd, cn.haorui.sdk.core.ad.draw.IDrawAd
    public void pause() {
        super.pause();
        View view = this.adView;
        if (view == null || !(view instanceof NormalMediaView)) {
            return;
        }
        LogUtil.e(TAG, "pause: ");
        ((NormalMediaView) this.adView).pause();
    }

    @Override // cn.haorui.sdk.core.ad.draw.DrawAd, cn.haorui.sdk.core.ad.draw.IDrawAd
    public void resume() {
        super.resume();
        View view = this.adView;
        if (view != null && (view instanceof NormalMediaView) && view.getVisibility() == 0) {
            LogUtil.e(TAG, "resume: ");
            ((NormalMediaView) this.adView).resume();
        }
    }

    @Override // cn.haorui.sdk.core.ad.draw.DrawAd, cn.haorui.sdk.core.ad.draw.IDrawAd
    public void setVideoMute(boolean z) {
        View view = this.adView;
        if (view == null || !(view instanceof NormalMediaView)) {
            return;
        }
        LogUtil.e(TAG, "pause: ");
        if (z) {
            ((NormalMediaView) this.adView).mute();
        } else {
            ((NormalMediaView) this.adView).unmute();
        }
    }

    @Override // cn.haorui.sdk.core.ad.draw.DrawAd, cn.haorui.sdk.core.ad.draw.IDrawAd
    public void showAd(ViewGroup viewGroup) {
        this.adContainer = viewGroup;
        super.showAd(viewGroup);
        View view = this.adView;
        if (view == null || !(view instanceof NormalMediaView)) {
            return;
        }
        LogUtil.e(TAG, "showAd: ");
        ((NormalMediaView) this.adView).start();
    }
}

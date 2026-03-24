package cn.haorui.sdk.core.ad.paster;

import android.os.Handler;
import cn.haorui.sdk.adsail_ad.nativ.INativeAdListener;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.utils.AderUtil;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.ResultBean;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HRPasterAd extends BaseAd implements PasterAd {
    private INativeAdListener adListener;
    private NativeAdSlot nativeAdSlot;

    public HRPasterAd(NativeAdSlot nativeAdSlot) {
        super(null, HRConstants.PLATFORM_HR);
        this.nativeAdSlot = nativeAdSlot;
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void destroy() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).destroy();
        }
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public String getAppIntro() {
        NativeAdSlot nativeAdSlot = this.nativeAdSlot;
        return nativeAdSlot != null ? nativeAdSlot.getApp_intro() : "";
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public String getAppIntroUrl() {
        NativeAdSlot nativeAdSlot = this.nativeAdSlot;
        return nativeAdSlot != null ? nativeAdSlot.getApp_intor_url() : "";
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public String getAppName() {
        NativeAdSlot nativeAdSlot = this.nativeAdSlot;
        return nativeAdSlot != null ? nativeAdSlot.getAppName() : "";
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public List<HRAdInfo.PermissionBean> getAppPermissionList() {
        NativeAdSlot nativeAdSlot = this.nativeAdSlot;
        if (nativeAdSlot != null) {
            return nativeAdSlot.getApp_permission();
        }
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public String getAppPremissionUrl() {
        NativeAdSlot nativeAdSlot = this.nativeAdSlot;
        return nativeAdSlot != null ? nativeAdSlot.getApp_permission_url() : "";
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public String getAppSize() {
        NativeAdSlot nativeAdSlot = this.nativeAdSlot;
        return nativeAdSlot != null ? nativeAdSlot.getApp_size() : "";
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public String getAppVersion() {
        NativeAdSlot nativeAdSlot = this.nativeAdSlot;
        return nativeAdSlot != null ? nativeAdSlot.getApp_ver() : "";
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public long getCurrentPosition() {
        try {
            if (getAdView() instanceof NormalMediaView) {
                return ((NormalMediaView) getAdView()).getCurrentPosition();
            }
            return 0L;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        resultBean.setCid(this.nativeAdSlot.getCid());
        resultBean.setCat(this.nativeAdSlot.getCat());
        resultBean.setAderId(this.nativeAdSlot.getAder_id());
        resultBean.setFromId(this.nativeAdSlot.getFromId());
        resultBean.setReqId(this.nativeAdSlot.getReq_id());
        resultBean.setPrice(this.nativeAdSlot.getEcpm());
        resultBean.setEcpm(String.valueOf(this.nativeAdSlot.getEcpm()));
        resultBean.setS_ext(this.nativeAdSlot.getS_ext());
        resultBean.setS_code(this.nativeAdSlot.getS_code());
        resultBean.setSdkName(HRConstants.PLATFORM_HR);
        return resultBean;
    }

    public String getDeepLink() {
        if (AderUtil.getIsOperationContent(this.nativeAdSlot.getAder_id())) {
            return this.nativeAdSlot.getDeep_link();
        }
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public String getDeveloper() {
        NativeAdSlot nativeAdSlot = this.nativeAdSlot;
        return nativeAdSlot != null ? nativeAdSlot.getDeveloper() : "";
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public long getDuration() {
        try {
            if (getAdView() instanceof NormalMediaView) {
                return ((NormalMediaView) getAdView()).getDuration();
            }
            return 0L;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public String[] getImgUrls() {
        return AderUtil.getIsOperationContent(this.nativeAdSlot.getAder_id()) ? this.nativeAdSlot.getImageUrls() : new String[0];
    }

    public boolean getIsOperationContent() {
        return AderUtil.getIsOperationContent(this.nativeAdSlot.getAder_id());
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public String getPrivacyAgreement() {
        NativeAdSlot nativeAdSlot = this.nativeAdSlot;
        return nativeAdSlot != null ? nativeAdSlot.getPrivacy_agreement() : "";
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void mute() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).onMute();
        }
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void onPause() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).pause();
        }
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void onResume() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).resume();
        }
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void pause() {
        onPause();
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void replay() {
        if (getAdView() instanceof NormalMediaView) {
            new Handler().postDelayed(new Runnable() { // from class: cn.haorui.sdk.core.ad.paster.HRPasterAd.1
                @Override // java.lang.Runnable
                public void run() {
                    ((NormalMediaView) HRPasterAd.this.getAdView()).replay();
                }
            }, 300L);
        }
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void resume() {
        onResume();
    }

    public void setAdListener(INativeAdListener iNativeAdListener) {
        this.adListener = iNativeAdListener;
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void setOnPreparedListener(NormalMediaView.IPreparedListener iPreparedListener) {
        try {
            if (getAdView() instanceof NormalMediaView) {
                ((NormalMediaView) getAdView()).setOnPreparedListener(iPreparedListener);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void start() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).start();
        }
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAd
    public void unmute() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).unmute();
        }
    }
}

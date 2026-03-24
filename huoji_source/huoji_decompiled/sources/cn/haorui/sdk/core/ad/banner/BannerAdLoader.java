package cn.haorui.sdk.core.ad.banner;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.banner.BannerAdSlot;
import cn.haorui.sdk.adsail_ad.banner.BannerAdSlot.BannerBuilder;
import cn.haorui.sdk.core.a;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.b;
import cn.haorui.sdk.core.loader.d;
import cn.haorui.sdk.platform.hr.HRInitConfig;
import cn.haorui.sdk.platform.hr.banner.HRViewWrapper;

/* JADX INFO: loaded from: classes.dex */
public class BannerAdLoader extends b<BannerAdListener> {
    private static final String TAG = "BannerAdLoader";
    private Integer acceptHeight;
    private Integer acceptWidth;

    public BannerAdLoader(@NonNull Activity activity, @NonNull String str, BannerAdListener bannerAdListener) {
        super(activity, str, bannerAdListener);
    }

    public BannerAdLoader(@NonNull Activity activity, @NonNull String str, BannerAdListener bannerAdListener, int i, int i2) {
        super(activity, str, bannerAdListener);
        this.acceptWidth = Integer.valueOf(i);
        this.acceptHeight = Integer.valueOf(i2);
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createAdDelegate(Context context, HRAdInfo hRAdInfo) {
        return new HRViewWrapper(this, new BannerAdSlot().new BannerBuilder().setAppId(HRInitConfig.getInstance().getAppId()).setLoadedTime(hRAdInfo.getLoadedTime()).setExpireTimestamp(hRAdInfo.getExpire_timestamp()).setEcpm(hRAdInfo.getEcpm()).setPermissionUrl(hRAdInfo.getApp_permission_url()).setPermisssList(hRAdInfo.getApp_permission()).setAppIntroUrl(hRAdInfo.getApp_intor_url()).setActType(hRAdInfo.getAct_type()).setAdType(hRAdInfo.getAd_type()).setCBC(hRAdInfo.getCbc()).setPowerCount(hRAdInfo.getPower_count()).setPowerDelay(hRAdInfo.getPower_delay()).setS_code(hRAdInfo.getS_code()).setS_ext(hRAdInfo.getS_ext()).setFromId(hRAdInfo.getFrom_id()).setReqId(hRAdInfo.getReq_id()).setDirectMarket(hRAdInfo.getDirect_market()).setPosId(hRAdInfo.getPid()).setCid(hRAdInfo.getCid()).setAderId(hRAdInfo.getAder_id()).setDrawing(hRAdInfo.getDrawing()).setClickType(hRAdInfo.getClk_type()).setPowerIndex(hRAdInfo.getPower_index()).setDClickData(hRAdInfo.getDclk()).setTitle(hRAdInfo.getTitle()).setDesc(hRAdInfo.getContent()).setIconUrl(hRAdInfo.getIcon()).setCat(hRAdInfo.getCat()).setAderId(hRAdInfo.getAder_id()).setImageUrls(hRAdInfo.getSrcUrls()).setInteractionType(hRAdInfo.getTarget_type().intValue()).setDUrl(hRAdInfo.getdUrl()).setAppName(hRAdInfo.getApp_name()).setIcon(hRAdInfo.getIcon()).setScore(hRAdInfo.getScore()).setDeveloper(hRAdInfo.getDeveloper()).setAppIntro(hRAdInfo.getApp_intro()).setAppFeature(hRAdInfo.getApp_feature()).setPaymentTypes(hRAdInfo.getPayment_types()).setAppSize(hRAdInfo.getApp_size()).setAppVer(hRAdInfo.getApp_ver()).setAppPrivacy(hRAdInfo.getApp_privacy()).setPrivacyAgreement(hRAdInfo.getPrivacy_agreement()).setPackageName(hRAdInfo.getPackage_name()).setDeepLink(hRAdInfo.getDeep_link()).setWx_username(hRAdInfo.getWx_username()).setWx_path(hRAdInfo.getWx_path()).setWxStart(hRAdInfo.getWx_start()).setWxSuccess(hRAdInfo.getWx_succ()).setWxFail(hRAdInfo.getWx_fail()).setMonitorUrl(hRAdInfo.getMonitorUrl()).setResponUrl(hRAdInfo.getResponUrl()).setClickUrl(hRAdInfo.getClickUrl()).setDn_start(hRAdInfo.getDn_start()).setDn_succ(hRAdInfo.getDn_succ()).setDn_inst_start(hRAdInfo.getDn_inst_start()).setDn_inst_succ(hRAdInfo.getDn_inst_succ()).setDn_active(hRAdInfo.getDn_active()).setDp_start(hRAdInfo.getDp_start()).setDp_fail(hRAdInfo.getDp_fail()).setDp_succ(hRAdInfo.getDp_succ()).setClickid(hRAdInfo.getClickid()).setFromLogo(hRAdInfo.getFrom_logo()).setAdPatternType(hRAdInfo.getCreative_type().intValue()).setErrorUrl(hRAdInfo.getErrorUrl()).build());
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createDelegate(SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo) {
        return a.a(sdkAdInfo.getSdk()).bannerLoader(this, sdkAdInfo, hRAdInfo);
    }

    public Integer getAcceptHeight() {
        return this.acceptHeight;
    }

    public Integer getAcceptWidth() {
        return this.acceptWidth;
    }
}

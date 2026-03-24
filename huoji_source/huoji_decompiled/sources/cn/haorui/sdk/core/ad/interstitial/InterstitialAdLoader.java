package cn.haorui.sdk.core.ad.interstitial;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.interstitial.InterstitialAdSlot;
import cn.haorui.sdk.adsail_ad.interstitial.InterstitialAdSlot.InterstitialBuilder;
import cn.haorui.sdk.core.a;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.b;
import cn.haorui.sdk.core.loader.d;
import cn.haorui.sdk.platform.hr.HRInitConfig;
import cn.haorui.sdk.platform.hr.interstitial.HRHRAdNativeWrapper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class InterstitialAdLoader extends b<InterstitialAdListener> {
    public static final String KEY_HEIGHT = "KEY_HEIGHT";
    public static final String KEY_WIDTH = "KEY_WIDTH";
    private static final String TAG = "InterstitialAdLoader";
    private boolean isClickToClose;

    public InterstitialAdLoader(@NonNull Activity activity, @NonNull String str, InterstitialAdListener interstitialAdListener) {
        super(activity, str, interstitialAdListener);
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createAdDelegate(Context context, HRAdInfo hRAdInfo) {
        return new HRHRAdNativeWrapper(this, new InterstitialAdSlot().new InterstitialBuilder().setAppId(HRInitConfig.getInstance().getAppId()).setLoadedTime(hRAdInfo.getLoadedTime()).setExpireTimestamp(hRAdInfo.getExpire_timestamp()).setEcpm(hRAdInfo.getEcpm()).setPermissionUrl(hRAdInfo.getApp_permission_url()).setPermisssList(hRAdInfo.getApp_permission()).setAppIntroUrl(hRAdInfo.getApp_intor_url()).setActType(hRAdInfo.getAct_type()).setAdType(hRAdInfo.getAd_type()).setCBC(hRAdInfo.getCbc()).setPowerCount(hRAdInfo.getPower_count()).setPowerDelay(hRAdInfo.getPower_delay()).setS_code(hRAdInfo.getS_code()).setS_ext(hRAdInfo.getS_ext()).setReqId(hRAdInfo.getReq_id()).setFromId(hRAdInfo.getFrom_id()).setDirectMarket(hRAdInfo.getDirect_market()).setPackageName(hRAdInfo.getPackage_name()).setPosId(hRAdInfo.getPid()).setCid(hRAdInfo.getCid()).setAderId(hRAdInfo.getAder_id()).setDrawing(hRAdInfo.getDrawing()).setClickType(hRAdInfo.getClk_type()).setPowerIndex(hRAdInfo.getPower_index()).setDClickData(hRAdInfo.getDclk()).setTitle(hRAdInfo.getTitle()).setDesc(hRAdInfo.getContent()).setIconUrl(hRAdInfo.getIcon()).setCat(hRAdInfo.getCat()).setAderId(hRAdInfo.getAder_id()).setImageUrls(hRAdInfo.getSrcUrls()).setInteractionType(hRAdInfo.getTarget_type().intValue()).setWidth(hRAdInfo.getWidth().intValue()).setHeight(hRAdInfo.getHeight().intValue()).setInsertStyle(hRAdInfo.getInsert_style()).setDUrl(hRAdInfo.getdUrl()).setAppName(hRAdInfo.getApp_name()).setIcon(hRAdInfo.getIcon()).setScore(hRAdInfo.getScore()).setDeveloper(hRAdInfo.getDeveloper()).setAppIntro(hRAdInfo.getApp_intro()).setAppFeature(hRAdInfo.getApp_feature()).setPaymentTypes(hRAdInfo.getPayment_types()).setAppSize(hRAdInfo.getApp_size()).setAppVer(hRAdInfo.getApp_ver()).setAppPrivacy(hRAdInfo.getApp_privacy()).setPrivacyAgreement(hRAdInfo.getPrivacy_agreement()).setDeepLink(hRAdInfo.getDeep_link()).setWx_username(hRAdInfo.getWx_username()).setWx_path(hRAdInfo.getWx_path()).setWxStart(hRAdInfo.getWx_start()).setWxSuccess(hRAdInfo.getWx_succ()).setWxFail(hRAdInfo.getWx_fail()).setMonitorUrl(hRAdInfo.getMonitorUrl()).setResponUrl(hRAdInfo.getResponUrl()).setClickUrl(hRAdInfo.getClickUrl()).setDn_start(hRAdInfo.getDn_start()).setDn_succ(hRAdInfo.getDn_succ()).setDn_inst_start(hRAdInfo.getDn_inst_start()).setDn_inst_succ(hRAdInfo.getDn_inst_succ()).setDn_active(hRAdInfo.getDn_active()).setDp_start(hRAdInfo.getDp_start()).setDp_fail(hRAdInfo.getDp_fail()).setDp_succ(hRAdInfo.getDp_succ()).setClickid(hRAdInfo.getClickid()).setFromLogo(hRAdInfo.getFrom_logo()).setAdPatternType(hRAdInfo.getCreative_type().intValue()).setErrorUrl(hRAdInfo.getErrorUrl()).setActionText(hRAdInfo.getAction_text()).setTitle(hRAdInfo.getTitle()).build());
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createDelegate(SdkAdInfo sdkAdInfo, @NonNull HRAdInfo hRAdInfo) {
        return a.a(sdkAdInfo.getSdk()).interstitialLoader(this, sdkAdInfo, hRAdInfo);
    }

    public boolean getIsClickToClose() {
        return this.isClickToClose;
    }

    public void loadAd(float f, float f2) {
        HashMap map = new HashMap();
        map.put("KEY_WIDTH", Float.valueOf(f));
        map.put("KEY_HEIGHT", Float.valueOf(f2));
        loadAd(map);
    }

    public void setClickToCloseAd(boolean z) {
        this.isClickToClose = z;
    }
}

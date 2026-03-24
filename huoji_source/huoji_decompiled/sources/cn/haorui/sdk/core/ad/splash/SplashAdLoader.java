package cn.haorui.sdk.core.ad.splash;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.splash.SplashAdSlot;
import cn.haorui.sdk.adsail_ad.splash.SplashAdSlot.SplashBuilder;
import cn.haorui.sdk.core.a;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.b;
import cn.haorui.sdk.core.loader.d;
import cn.haorui.sdk.platform.hr.HRInitConfig;
import cn.haorui.sdk.platform.hr.splash.HRHRAdNativeWrapper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class SplashAdLoader extends b<SplashAdListener> {
    public static final String KEY_AUTO_SHOW = "KEY_AUTO_SHOW";
    public static final String KEY_SKIP_BUTTON = "KEY_SKIP_BUTTON";
    private static final String TAG = "SplashAdLoader";
    private ViewGroup adContainer;
    private int fetchDelay;
    private boolean hideSkipButton;
    private boolean isMute;

    public SplashAdLoader(@NonNull Context context, ViewGroup viewGroup, @NonNull String str, SplashAdListener splashAdListener, int i) {
        super(context, str, splashAdListener);
        this.isMute = true;
        this.adContainer = viewGroup;
        this.fetchDelay = i;
    }

    public SplashAdLoader(@NonNull Context context, @NonNull String str, SplashAdListener splashAdListener, int i) {
        this(context, null, str, splashAdListener, i);
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createAdDelegate(Context context, HRAdInfo hRAdInfo) {
        SplashAdSlot splashAdSlotBuild = new SplashAdSlot().new SplashBuilder().setAppId(HRInitConfig.getInstance().getAppId()).setLoadedTime(hRAdInfo.getLoadedTime()).setExpireTimestamp(hRAdInfo.getExpire_timestamp()).setEcpm(hRAdInfo.getEcpm()).setPermissionUrl(hRAdInfo.getApp_permission_url()).setPermisssList(hRAdInfo.getApp_permission()).setAppIntroUrl(hRAdInfo.getApp_intor_url()).setActType(hRAdInfo.getAct_type()).setAdType(hRAdInfo.getAd_type()).setCBC(hRAdInfo.getCbc()).setPowerCount(hRAdInfo.getPower_count()).setPowerDelay(hRAdInfo.getPower_delay()).setS_code(hRAdInfo.getS_code()).setS_ext(hRAdInfo.getS_ext()).setReqId(hRAdInfo.getReq_id()).setFromId(hRAdInfo.getFrom_id()).setDirectMarket(hRAdInfo.getDirect_market()).setPackageName(hRAdInfo.getPackage_name()).setIsEyes(hRAdInfo.getIs_eyes()).setPosId(hRAdInfo.getPid()).setClkType(hRAdInfo.getClk_type()).setClkArea(hRAdInfo.getClk_area()).setPowerIndex(hRAdInfo.getPower_index()).setPowerType(hRAdInfo.getPower_type()).setCid(hRAdInfo.getCid()).setAderId(hRAdInfo.getAder_id()).setDrawing(hRAdInfo.getDrawing()).setClickType(hRAdInfo.getClk_type()).setPowerIndex(hRAdInfo.getPower_index()).setDClickData(hRAdInfo.getDclk()).setTitle(hRAdInfo.getTitle()).setDesc(hRAdInfo.getContent()).setIconUrl(hRAdInfo.getIcon()).setCat(hRAdInfo.getCat()).setAderId(hRAdInfo.getAder_id()).setImageUrls(hRAdInfo.getSrcUrls()).setInteractionType(hRAdInfo.getTarget_type().intValue()).setAdContainer(this.adContainer).setDUrl(hRAdInfo.getdUrl()).setAppName(hRAdInfo.getApp_name()).setIcon(hRAdInfo.getIcon()).setScore(hRAdInfo.getScore()).setDeveloper(hRAdInfo.getDeveloper()).setAppIntro(hRAdInfo.getApp_intro()).setAppFeature(hRAdInfo.getApp_feature()).setPaymentTypes(hRAdInfo.getPayment_types()).setAppSize(hRAdInfo.getApp_size()).setAppVer(hRAdInfo.getApp_ver()).setAppPrivacy(hRAdInfo.getApp_privacy()).setPrivacyAgreement(hRAdInfo.getPrivacy_agreement()).setDeepLink(hRAdInfo.getDeep_link()).setWx_username(hRAdInfo.getWx_username()).setWx_path(hRAdInfo.getWx_path()).setWxStart(hRAdInfo.getWx_start()).setWxSuccess(hRAdInfo.getWx_succ()).setWxFail(hRAdInfo.getWx_fail()).setMonitorUrl(hRAdInfo.getMonitorUrl()).setResponUrl(hRAdInfo.getResponUrl()).setClickUrl(hRAdInfo.getClickUrl()).setDn_start(hRAdInfo.getDn_start()).setDn_succ(hRAdInfo.getDn_succ()).setDn_inst_start(hRAdInfo.getDn_inst_start()).setDn_inst_succ(hRAdInfo.getDn_inst_succ()).setDn_active(hRAdInfo.getDn_active()).setDp_start(hRAdInfo.getDp_start()).setDp_fail(hRAdInfo.getDp_fail()).setDp_succ(hRAdInfo.getDp_succ()).setVideo_start(hRAdInfo.getVideo_start()).setVideo_one_quarter(hRAdInfo.getVideo_one_quarter()).setVideo_one_half(hRAdInfo.getVideo_one_half()).setVideo_three_quarter(hRAdInfo.getVideo_three_quarter()).setVideo_complete(hRAdInfo.getVideo_complete()).setVideo_pause(hRAdInfo.getVideo_pause()).setVideo_resume(hRAdInfo.getVideo_resume()).setVideo_mute(hRAdInfo.getVideo_mute()).setVideo_unmute(hRAdInfo.getVideo_unmute()).setVideo_replay(hRAdInfo.getVideo_replay()).setVideo_cover(hRAdInfo.getVideo_cover()).setVideo_endcover(hRAdInfo.getVideo_endcover()).setVideo_keep_time(hRAdInfo.getVideo_keep_time()).setClickid(hRAdInfo.getClickid()).setFromLogo(hRAdInfo.getFrom_logo()).setAdPatternType(hRAdInfo.getCreative_type().intValue()).setErrorUrl(hRAdInfo.getErrorUrl()).build();
        if (hRAdInfo.getCreative_type() != null && hRAdInfo.getCreative_type().intValue() == 2 && hRAdInfo.getSrcUrls() != null && hRAdInfo.getSrcUrls().length > 0) {
            splashAdSlotBuild.setVideoUrl(hRAdInfo.getSrcUrls()[0]);
        }
        return new HRHRAdNativeWrapper(this, splashAdSlotBuild);
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createDelegate(SdkAdInfo sdkAdInfo, @NonNull HRAdInfo hRAdInfo) {
        return a.a(sdkAdInfo.getSdk()).splashLoader(this, sdkAdInfo, hRAdInfo);
    }

    public ViewGroup getAdContainer() {
        return this.adContainer;
    }

    public int getFetchDelay() {
        return this.fetchDelay;
    }

    public boolean getIsHideSkipBtn() {
        return this.hideSkipButton;
    }

    public boolean getVideoIsMute() {
        return this.isMute;
    }

    public void hideSkipBtn(boolean z) {
        this.hideSkipButton = z;
    }

    @Override // cn.haorui.sdk.core.loader.b, cn.haorui.sdk.core.loader.IAdLoader
    public void loadAd() {
        loadAd((View) null);
    }

    public void loadAd(View view) {
        if (this.adContainer == null) {
            throw new RuntimeException("无 adContainer 不支持自动展示");
        }
        HashMap map = new HashMap();
        map.put(KEY_SKIP_BUTTON, view);
        map.put(KEY_AUTO_SHOW, Boolean.TRUE);
        super.loadAd(map);
    }

    public void loadAdOnly() {
        loadAdOnly(null);
    }

    public void loadAdOnly(View view) {
        HashMap map = new HashMap();
        map.put(KEY_SKIP_BUTTON, view);
        map.put(KEY_AUTO_SHOW, Boolean.FALSE);
        super.loadAd(map);
    }

    public void setVideoIsMute(boolean z) {
        this.isMute = z;
    }
}

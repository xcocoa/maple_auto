package cn.haorui.sdk.core.ad.recycler;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot.RewardBuilder;
import cn.haorui.sdk.core.a;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.b;
import cn.haorui.sdk.core.loader.d;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.platform.hr.HRInitConfig;
import cn.haorui.sdk.platform.hr.recycler.HRHRAdNativeWrapper;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class RecyclerAdLoader extends b<RecyclerAdListener> {
    private static final String TAG = "RecyclerAdLoader";
    private int adPatternType;
    public float containerHeight;
    public float containerWidth;
    private int fetchCount;
    private boolean isVideoAutoPlay;
    public boolean showDetail;

    public RecyclerAdLoader(@NonNull Context context, @NonNull String str, @Nullable Integer num, RecyclerAdListener recyclerAdListener) {
        this(context, str, num, recyclerAdListener, 1);
    }

    @Deprecated
    public RecyclerAdLoader(@NonNull Context context, @NonNull String str, @Nullable Integer num, RecyclerAdListener recyclerAdListener, int i) {
        super(context, str, recyclerAdListener);
        this.isVideoAutoPlay = true;
        this.fetchCount = num != null ? num.intValue() : 1;
        this.adPatternType = i;
    }

    @Deprecated
    public RecyclerAdLoader(@NonNull Context context, @NonNull String str, @Nullable Integer num, RecyclerAdListener recyclerAdListener, int i, float f) {
        this(context, str, num, recyclerAdListener, i);
        this.containerWidth = f;
    }

    @Deprecated
    public RecyclerAdLoader(@NonNull Context context, @NonNull String str, @Nullable Integer num, RecyclerAdListener recyclerAdListener, int i, float f, boolean z) {
        this(context, str, num, recyclerAdListener, i, f);
        this.showDetail = z;
    }

    public RecyclerAdLoader(Context context, String str, Integer num, RecyclerAdListener recyclerAdListener, boolean z) {
        this(context, str, num, recyclerAdListener);
        this.showDetail = z;
    }

    public RecyclerAdLoader(Context context, String str, Integer num, RecyclerAdListener recyclerAdListener, boolean z, float f) {
        this(context, str, num, recyclerAdListener, z);
        this.containerWidth = f;
    }

    public RecyclerAdLoader(Context context, String str, Integer num, RecyclerAdListener recyclerAdListener, boolean z, float f, float f2) {
        this(context, str, num, recyclerAdListener, z, f);
        this.containerHeight = f2;
    }

    private HRHRAdNativeWrapper newAdSailNativeWarapper(NativeAdSlot nativeAdSlot, HRAdInfo hRAdInfo) {
        nativeAdSlot.setImageUrls(hRAdInfo.getSrcUrls());
        return new HRHRAdNativeWrapper(this, nativeAdSlot);
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createAdDelegate(Context context, HRAdInfo hRAdInfo) {
        NativeAdSlot nativeAdSlotBuild = new NativeAdSlot().new RewardBuilder().setAppId(HRInitConfig.getInstance().getAppId()).setLoadedTime(hRAdInfo.getLoadedTime()).setExpireTimestamp(hRAdInfo.getExpire_timestamp()).setEcpm(hRAdInfo.getEcpm()).setPermissionUrl(hRAdInfo.getApp_permission_url()).setPermisssList(hRAdInfo.getApp_permission()).setAppIntroUrl(hRAdInfo.getApp_intor_url()).setActType(hRAdInfo.getAct_type()).setAdType(hRAdInfo.getAd_type()).setCBC(hRAdInfo.getCbc()).setVideoDuration(hRAdInfo.getVideo_duration()).setS_code(hRAdInfo.getS_code()).setS_ext(hRAdInfo.getS_ext()).setReqId(hRAdInfo.getReq_id()).setFromId(hRAdInfo.getFrom_id()).setDirectMarket(hRAdInfo.getDirect_market()).setPackageName(hRAdInfo.getPackage_name()).setPosId(hRAdInfo.getPid()).setStyleId(hRAdInfo.getStyle_id()).setCid(hRAdInfo.getCid()).setCat(hRAdInfo.getCat()).setAderId(hRAdInfo.getAder_id()).setTitle(hRAdInfo.getTitle()).setDesc(hRAdInfo.getContent()).setInteractionType(hRAdInfo.getTarget_type().intValue()).setWidth(hRAdInfo.getWidth().intValue()).setHeight(hRAdInfo.getHeight().intValue()).setDrawing(hRAdInfo.getDrawing()).setFetchCount(Integer.valueOf(this.fetchCount)).setDUrl(hRAdInfo.getdUrl()).setAppName(hRAdInfo.getApp_name()).setIcon(hRAdInfo.getIcon()).setScore(hRAdInfo.getScore()).setDeveloper(hRAdInfo.getDeveloper()).setAppIntro(hRAdInfo.getApp_intro()).setAppFeature(hRAdInfo.getApp_feature()).setPaymentTypes(hRAdInfo.getPayment_types()).setAppSize(hRAdInfo.getApp_size()).setAppVer(hRAdInfo.getApp_ver()).setAppPrivacy(hRAdInfo.getApp_privacy()).setPrivacyAgreement(hRAdInfo.getPrivacy_agreement()).setDeepLink(hRAdInfo.getDeep_link()).setWx_username(hRAdInfo.getWx_username()).setWx_path(hRAdInfo.getWx_path()).setWxStart(hRAdInfo.getWx_start()).setWxSuccess(hRAdInfo.getWx_succ()).setWxFail(hRAdInfo.getWx_fail()).setMonitorUrl(hRAdInfo.getMonitorUrl()).setResponUrl(hRAdInfo.getResponUrl()).setClickUrl(hRAdInfo.getClickUrl()).setDn_start(hRAdInfo.getDn_start()).setDn_succ(hRAdInfo.getDn_succ()).setDn_inst_start(hRAdInfo.getDn_inst_start()).setDn_inst_succ(hRAdInfo.getDn_inst_succ()).setDn_active(hRAdInfo.getDn_active()).setDp_start(hRAdInfo.getDp_start()).setDp_fail(hRAdInfo.getDp_fail()).setDp_succ(hRAdInfo.getDp_succ()).setVideo_start(hRAdInfo.getVideo_start()).setVideo_one_quarter(hRAdInfo.getVideo_one_quarter()).setVideo_one_half(hRAdInfo.getVideo_one_half()).setVideo_three_quarter(hRAdInfo.getVideo_three_quarter()).setVideo_complete(hRAdInfo.getVideo_complete()).setVideo_pause(hRAdInfo.getVideo_pause()).setVideo_resume(hRAdInfo.getVideo_resume()).setVideo_mute(hRAdInfo.getVideo_mute()).setVideo_unmute(hRAdInfo.getVideo_unmute()).setVideo_replay(hRAdInfo.getVideo_replay()).setImageUrls(hRAdInfo.getSrcUrls()).setVideo_cover(hRAdInfo.getVideo_cover()).setClickid(hRAdInfo.getClickid()).setPackageName(hRAdInfo.getPackage_name()).setContent(hRAdInfo.getContent()).setActionText(hRAdInfo.getAction_text()).setIconUrl(hRAdInfo.getIcon()).setIconTitle(hRAdInfo.getIcon_title()).setFromLogo(hRAdInfo.getFrom_logo()).setFrom(hRAdInfo.getFrom()).setFromId(hRAdInfo.getFrom_id()).setDownNum(hRAdInfo.getDown_num()).setScore(hRAdInfo.getScore()).setComments(hRAdInfo.getComments()).setErrorUrl(hRAdInfo.getErrorUrl()).setDrawing(hRAdInfo.getDrawing()).setClickType(hRAdInfo.getClk_type()).setPowerIndex(hRAdInfo.getPower_index()).setDClickData(hRAdInfo.getDclk()).setPowerDelay(hRAdInfo.getPower_delay()).setPowerCount(hRAdInfo.getPower_count()).build();
        int iIntValue = hRAdInfo.getCreative_type() != null ? hRAdInfo.getCreative_type().intValue() : 12;
        nativeAdSlotBuild.setAdPatternType(iIntValue);
        if (iIntValue != 1 && iIntValue != 11 && iIntValue != 12 && iIntValue != 13) {
            if (iIntValue == 2) {
                if (hRAdInfo.getSrcUrls() != null && hRAdInfo.getSrcUrls().length > 0) {
                    nativeAdSlotBuild.setVideoUrl(hRAdInfo.getSrcUrls()[0]);
                }
                return new HRHRAdNativeWrapper(this, nativeAdSlotBuild);
            }
            LogUtil.e(TAG, "不支持的创意类型，类型标识为[" + iIntValue + "]");
        }
        return newAdSailNativeWarapper(nativeAdSlotBuild, hRAdInfo);
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createDelegate(SdkAdInfo sdkAdInfo, @NonNull HRAdInfo hRAdInfo) {
        return a.a(sdkAdInfo.getSdk()).recyclerLoader(this, sdkAdInfo, hRAdInfo);
    }

    public int getAdPatternType() {
        return this.adPatternType;
    }

    public float getContainerHeight() {
        return this.containerHeight;
    }

    public float getContainerWidth() {
        return this.containerWidth;
    }

    public int getFetchCount() {
        return this.fetchCount;
    }

    public boolean getIsVideoAutoPlay() {
        return this.isVideoAutoPlay;
    }

    public boolean isShowDetail() {
        return this.showDetail;
    }

    public void setIsVideoAutoPlay(boolean z) {
        this.isVideoAutoPlay = z;
    }
}

package cn.haorui.sdk.core.ad;

import android.content.Context;
import androidx.annotation.NonNull;
import cn.haorui.sdk.activity.HRRewardVideoPlayerActivity;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot.RewardBuilder;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.loader.IAdLoadListener;
import cn.haorui.sdk.core.loader.b;
import cn.haorui.sdk.core.loader.d;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.platform.hr.HRInitConfig;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseFullScreenVideoAdLoader<T extends IAdLoadListener> extends b<T> {
    private static final String TAG = "BaseFullScreenVideoAdLoader";
    private boolean isMute;
    private ArrayList<String> mediaViewIdList;

    public BaseFullScreenVideoAdLoader(@NonNull Context context, @NonNull String str, T t) {
        super(context, str, t);
        this.mediaViewIdList = new ArrayList<>();
    }

    public void addRewardMediaViewLocalId(String str) {
        this.mediaViewIdList.add(str);
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createAdDelegate(Context context, HRAdInfo hRAdInfo) {
        NativeAdSlot nativeAdSlotBuild = new NativeAdSlot().new RewardBuilder().setAppId(HRInitConfig.getInstance().getAppId()).setLoadedTime(hRAdInfo.getLoadedTime()).setExpireTimestamp(hRAdInfo.getExpire_timestamp()).setEcpm(hRAdInfo.getEcpm()).setPermissionUrl(hRAdInfo.getApp_permission_url()).setPermisssList(hRAdInfo.getApp_permission()).setAppIntroUrl(hRAdInfo.getApp_intor_url()).setActType(hRAdInfo.getAct_type()).setAdType(hRAdInfo.getAd_type()).setCBC(hRAdInfo.getCbc()).setPowerCount(hRAdInfo.getPower_count()).setPowerDelay(hRAdInfo.getPower_delay()).setS_code(hRAdInfo.getS_code()).setS_ext(hRAdInfo.getS_ext()).setReqId(hRAdInfo.getReq_id()).setFromId(hRAdInfo.getFrom_id()).setDirectMarket(hRAdInfo.getDirect_market()).setPackageName(hRAdInfo.getPackage_name()).setPosId(hRAdInfo.getPid()).setCid(hRAdInfo.getCid()).setCat(hRAdInfo.getCat()).setAderId(hRAdInfo.getAder_id()).setDrawing(hRAdInfo.getDrawing()).setClickType(hRAdInfo.getClk_type()).setPowerIndex(hRAdInfo.getPower_index()).setDClickData(hRAdInfo.getDclk()).setTitle(hRAdInfo.getTitle()).setDesc(hRAdInfo.getContent()).setIconUrl(hRAdInfo.getIcon()).setInteractionType(hRAdInfo.getTarget_type().intValue()).setWidth(hRAdInfo.getWidth().intValue()).setHeight(hRAdInfo.getHeight().intValue()).setDUrl(hRAdInfo.getdUrl()).setVideo_cover(hRAdInfo.getVideo_cover()).setVideo_endcover(hRAdInfo.getVideo_endcover()).setVideo_keep_time(hRAdInfo.getVideo_keep_time()).setAppName(hRAdInfo.getApp_name()).setIcon(hRAdInfo.getIcon()).setScore(hRAdInfo.getScore()).setDeveloper(hRAdInfo.getDeveloper()).setAppIntro(hRAdInfo.getApp_intro()).setAppFeature(hRAdInfo.getApp_feature()).setPaymentTypes(hRAdInfo.getPayment_types()).setAppSize(hRAdInfo.getApp_size()).setAppVer(hRAdInfo.getApp_ver()).setAppPrivacy(hRAdInfo.getApp_privacy()).setPrivacyAgreement(hRAdInfo.getPrivacy_agreement()).setDeepLink(hRAdInfo.getDeep_link()).setWx_username(hRAdInfo.getWx_username()).setWx_path(hRAdInfo.getWx_path()).setWxStart(hRAdInfo.getWx_start()).setWxSuccess(hRAdInfo.getWx_succ()).setWxFail(hRAdInfo.getWx_fail()).setMonitorUrl(hRAdInfo.getMonitorUrl()).setResponUrl(hRAdInfo.getResponUrl()).setClickUrl(hRAdInfo.getClickUrl()).setDn_start(hRAdInfo.getDn_start()).setDn_succ(hRAdInfo.getDn_succ()).setDn_inst_start(hRAdInfo.getDn_inst_start()).setDn_inst_succ(hRAdInfo.getDn_inst_succ()).setDn_active(hRAdInfo.getDn_active()).setDp_start(hRAdInfo.getDp_start()).setDp_fail(hRAdInfo.getDp_fail()).setDp_succ(hRAdInfo.getDp_succ()).setVideo_start(hRAdInfo.getVideo_start()).setVideo_one_quarter(hRAdInfo.getVideo_one_quarter()).setVideo_one_half(hRAdInfo.getVideo_one_half()).setVideo_three_quarter(hRAdInfo.getVideo_three_quarter()).setVideo_complete(hRAdInfo.getVideo_complete()).setVideo_pause(hRAdInfo.getVideo_pause()).setVideo_resume(hRAdInfo.getVideo_resume()).setVideo_mute(hRAdInfo.getVideo_mute()).setVideo_unmute(hRAdInfo.getVideo_unmute()).setVideo_replay(hRAdInfo.getVideo_replay()).setImageUrls(hRAdInfo.getSrcUrls()).setClickid(hRAdInfo.getClickid()).setActionText(hRAdInfo.getAction_text()).setFromLogo(hRAdInfo.getFrom_logo()).setClickableRange(hRAdInfo.getClickable_range()).setCloseBtn(Integer.valueOf(hRAdInfo.getClose_btn())).setContent(hRAdInfo.getContent()).setErrorUrl(hRAdInfo.getErrorUrl()).build();
        int iIntValue = hRAdInfo.getCreative_type() != null ? hRAdInfo.getCreative_type().intValue() : 1;
        nativeAdSlotBuild.setAdPatternType(iIntValue);
        if (iIntValue == 1) {
            nativeAdSlotBuild.setImageUrls(hRAdInfo.getSrcUrls());
        } else {
            if (iIntValue != 2) {
                LogUtil.e(TAG, "", new Exception("不支持的创意类型，类型标识为[" + iIntValue + "]"));
                return null;
            }
            if (hRAdInfo.getSrcUrls() != null && hRAdInfo.getSrcUrls().length > 0) {
                nativeAdSlotBuild.setVideoUrl(hRAdInfo.getSrcUrls()[0]);
            }
        }
        return createAdSailDelegateInternal(nativeAdSlotBuild);
    }

    public abstract d createAdSailDelegateInternal(NativeAdSlot nativeAdSlot);

    @Override // cn.haorui.sdk.core.loader.b, cn.haorui.sdk.core.loader.IAdLoader
    public void destroy() {
        Iterator<String> it = this.mediaViewIdList.iterator();
        while (it.hasNext()) {
            HRRewardVideoPlayerActivity.removeRewardMediaView(it.next());
        }
        this.mediaViewIdList.clear();
    }

    public boolean getVideoIsMute() {
        return this.isMute;
    }

    public void setVideoIsMute(boolean z) {
        this.isMute = z;
    }
}

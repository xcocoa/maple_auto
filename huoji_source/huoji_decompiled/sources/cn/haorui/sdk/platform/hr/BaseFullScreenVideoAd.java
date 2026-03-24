package cn.haorui.sdk.platform.hr;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import cn.haorui.sdk.activity.HRRewardVideoPlayerActivity;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdDataImpl;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.ad.fullscreenvideo.IFullScreenMediaListener;
import cn.haorui.sdk.core.ad.fullscreenvideo.IFullScreenVideoAd;
import cn.haorui.sdk.core.ad.reward.RewardAdMediaListener;
import cn.haorui.sdk.core.ad.reward.RewardVideoAd;
import cn.haorui.sdk.core.ad.reward.RewardVideoAdListener;
import cn.haorui.sdk.core.loader.IAdLoadListener;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.loader.g;
import cn.haorui.sdk.core.utils.AderUtil;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.DownloadDialogBean;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.ResultBean;
import cn.haorui.sdk.platform.hr.fullscreenvideo.HRFullScreenVideoHRAdWrapper;
import cn.haorui.sdk.platform.hr.reward.HRRewardVideoHRAdWrapper;

/* JADX INFO: loaded from: classes.dex */
public class BaseFullScreenVideoAd extends BaseAd implements RewardVideoAd, IFullScreenVideoAd {
    private static final String TAG = "RewardVideoAdAdapter";
    public static final String broadcast_on_video_complete = "broadcast_on_video_complete";
    public static final String broadcast_on_video_error = "broadcast_on_video_error";
    public static final String broadcast_on_video_pause = "broadcast_on_video_pause";
    public static final String broadcast_on_video_resume = "broadcast_on_video_resume";
    public static final String broadcast_on_video_start = "broadcast_on_video_start";
    public static final String broadcast_onclick = "broadcast_onclick";
    public static final String broadcast_onclosed = "broadcast_onclosed";
    public static final String broadcast_onreward = "broadcast_onreward";
    private NativeAdSlot adSlot;
    private HRAdLoader adWrapper;
    private InteractionListener apiInteractionListener;
    private RewardAdMediaListener apiRewardAdMediaListener;
    private IFullScreenMediaListener mFullScreenMediaListener;
    private IAdSailAd nativeAd;
    private BroadcastReceiver receiver;
    private volatile boolean receverRegistered;
    private boolean showed;

    public BaseFullScreenVideoAd(@NonNull HRAdLoader hRAdLoader, @NonNull IAdSailAd iAdSailAd, NativeAdSlot nativeAdSlot) {
        super(null, HRConstants.PLATFORM_HR);
        this.receiver = new BroadcastReceiver() { // from class: cn.haorui.sdk.platform.hr.BaseFullScreenVideoAd.1
            /* JADX WARN: Type inference failed for: r2v40, types: [cn.haorui.sdk.core.loader.b] */
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (BaseFullScreenVideoAd.broadcast_onclick.equalsIgnoreCase(intent.getAction())) {
                    if (BaseFullScreenVideoAd.this.adSlot != null && BaseFullScreenVideoAd.this.adSlot.getCbc() == 0 && BaseFullScreenVideoAd.this.apiInteractionListener != null) {
                        BaseFullScreenVideoAd.this.apiInteractionListener.onAdClicked();
                    }
                    LogUtil.e(BaseFullScreenVideoAd.TAG, BaseFullScreenVideoAd.broadcast_onclick);
                    ClickHandler.handleClick(BaseFullScreenVideoAd.this.nativeAd);
                    ClickHandler.clearShowDialogActivity();
                    return;
                }
                if (BaseFullScreenVideoAd.broadcast_onreward.equalsIgnoreCase(intent.getAction())) {
                    IAdLoadListener loaderListener = BaseFullScreenVideoAd.this.adWrapper.getAdLoader().getLoaderListener();
                    if (loaderListener == null || !(loaderListener instanceof RewardVideoAdListener)) {
                        return;
                    }
                    ((RewardVideoAdListener) loaderListener).onReward(null);
                    return;
                }
                if (BaseFullScreenVideoAd.broadcast_onclosed.equalsIgnoreCase(intent.getAction())) {
                    BaseFullScreenVideoAd.this.onVideoActivityClosed();
                    return;
                }
                if (BaseFullScreenVideoAd.broadcast_on_video_complete.equalsIgnoreCase(intent.getAction())) {
                    if (BaseFullScreenVideoAd.this.apiRewardAdMediaListener != null) {
                        BaseFullScreenVideoAd.this.apiRewardAdMediaListener.onVideoCompleted();
                        return;
                    }
                    return;
                }
                if (BaseFullScreenVideoAd.broadcast_on_video_start.equalsIgnoreCase(intent.getAction())) {
                    if (BaseFullScreenVideoAd.this.apiRewardAdMediaListener != null) {
                        BaseFullScreenVideoAd.this.apiRewardAdMediaListener.onVideoStart();
                    }
                } else if (BaseFullScreenVideoAd.broadcast_on_video_pause.equalsIgnoreCase(intent.getAction())) {
                    if (BaseFullScreenVideoAd.this.apiRewardAdMediaListener != null) {
                        BaseFullScreenVideoAd.this.apiRewardAdMediaListener.onVideoPause();
                    }
                } else if (BaseFullScreenVideoAd.broadcast_on_video_resume.equalsIgnoreCase(intent.getAction())) {
                    if (BaseFullScreenVideoAd.this.apiRewardAdMediaListener != null) {
                        BaseFullScreenVideoAd.this.apiRewardAdMediaListener.onVideoResume();
                    }
                } else {
                    if (!BaseFullScreenVideoAd.broadcast_on_video_error.equalsIgnoreCase(intent.getAction()) || BaseFullScreenVideoAd.this.apiRewardAdMediaListener == null) {
                        return;
                    }
                    BaseFullScreenVideoAd.this.apiRewardAdMediaListener.onVideoError();
                }
            }
        };
        this.adWrapper = hRAdLoader;
        this.nativeAd = iAdSailAd;
        this.adSlot = nativeAdSlot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v2, types: [cn.haorui.sdk.core.loader.b] */
    /* JADX WARN: Type inference failed for: r0v5, types: [cn.haorui.sdk.core.loader.b] */
    public void onVideoActivityClosed() {
        if (this.receverRegistered) {
            LocalBroadcastManager.getInstance(this.adWrapper.getContext()).unregisterReceiver(this.receiver);
            LogUtil.d(TAG, "onVideoActivityClosed: 激励视频广告回收资源");
        }
        if (this.adWrapper.getAdLoader().getLoaderListener() != null) {
            this.adWrapper.getAdLoader().getLoaderListener().onAdClosed();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showReward(Context context) {
        AdType adType;
        IAdSailAd iAdSailAd;
        if (this.showed) {
            LogUtil.d(TAG, "同一个激励视频只能展示一次");
            return;
        }
        if (HRRewardVideoPlayerActivity.getRewardMediaView(this.adWrapper.getAdSlot().hashCode() + "") == null || !(this.adWrapper.getAdSlot() instanceof NativeAdSlot)) {
            LogUtil.e(TAG, "showAd: 请先加载视频");
            return;
        }
        this.showed = true;
        NativeAdSlot nativeAdSlot = (NativeAdSlot) this.adWrapper.getAdSlot();
        int i = context.getResources().getConfiguration().orientation;
        Intent intent = new Intent();
        intent.setClass(context, HRRewardVideoPlayerActivity.class);
        intent.setFlags(67108864);
        intent.putExtra(HRRewardVideoPlayerActivity.orientation_key, i);
        intent.putExtra(HRRewardVideoPlayerActivity.local_ad_id_key, this.adWrapper.getAdSlot().hashCode() + "");
        g.c.a.a(nativeAdSlot.getPosId(), nativeAdSlot.getLoadedTime(), nativeAdSlot.getDclk());
        if (nativeAdSlot.getVideo_start() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_start_key, nativeAdSlot.getVideo_start());
        }
        if (nativeAdSlot.getVideo_one_quarter() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_one_quarter_key, nativeAdSlot.getVideo_one_quarter());
        }
        if (nativeAdSlot.getVideo_one_half() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_one_half_key, nativeAdSlot.getVideo_one_half());
        }
        if (nativeAdSlot.getVideo_three_quarter() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_three_quarter_key, nativeAdSlot.getVideo_three_quarter());
        }
        if (nativeAdSlot.getVideo_complete() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_complete_key, nativeAdSlot.getVideo_complete());
        }
        if (nativeAdSlot.getVideo_pause() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_pause_key, nativeAdSlot.getVideo_pause());
        }
        if (nativeAdSlot.getVideo_resume() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_resume_key, nativeAdSlot.getVideo_resume());
        }
        if (nativeAdSlot.getVideo_mute() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_mute_key, nativeAdSlot.getVideo_mute());
        }
        if (nativeAdSlot.getVideo_unmute() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_unmute_key, nativeAdSlot.getVideo_unmute());
        }
        if (nativeAdSlot.getVideo_cover() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_cover, nativeAdSlot.getVideo_cover());
        }
        if (nativeAdSlot.getVideo_endcover() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_endcover, nativeAdSlot.getVideo_endcover());
        }
        if (nativeAdSlot.getVideo_keep_time() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Video_keep_time, nativeAdSlot.getVideo_keep_time());
        }
        if (!TextUtils.isEmpty(nativeAdSlot.getTitle())) {
            intent.putExtra(HRRewardVideoPlayerActivity.Ad_title, nativeAdSlot.getTitle());
        }
        if (!TextUtils.isEmpty(nativeAdSlot.getDesc())) {
            intent.putExtra(HRRewardVideoPlayerActivity.Ad_content, nativeAdSlot.getDesc());
        }
        if (!TextUtils.isEmpty(nativeAdSlot.getFromLogo())) {
            intent.putExtra(HRRewardVideoPlayerActivity.From_logo, nativeAdSlot.getFromLogo());
        }
        if (nativeAdSlot.getIconUrl() != null) {
            intent.putExtra(HRRewardVideoPlayerActivity.Ad_icon_url, nativeAdSlot.getIconUrl());
        }
        String actionText = nativeAdSlot.getActionText();
        if (TextUtils.isEmpty(actionText)) {
            actionText = nativeAdSlot.getInteractionType() == 0 ? "查看详情" : "点击下载";
        }
        intent.putExtra(HRRewardVideoPlayerActivity.Clk_type, nativeAdSlot.getAct_type());
        intent.putExtra(HRRewardVideoPlayerActivity.Power_index, nativeAdSlot.getPower_index());
        intent.putExtra(HRRewardVideoPlayerActivity.Power_count, nativeAdSlot.getPower_count());
        intent.putExtra(HRRewardVideoPlayerActivity.Power_delay, nativeAdSlot.getPower_delay());
        intent.putExtra(HRRewardVideoPlayerActivity.Action_text, actionText);
        intent.putExtra(HRRewardVideoPlayerActivity.Clickable_range, nativeAdSlot.getClickableRange());
        intent.putExtra(HRRewardVideoPlayerActivity.Close_btn, nativeAdSlot.getClose_btn());
        intent.putExtra(HRRewardVideoPlayerActivity.Interaction_type, nativeAdSlot.getInteractionType());
        HRAdLoader hRAdLoader = this.adWrapper;
        if (!(hRAdLoader instanceof HRRewardVideoHRAdWrapper)) {
            if (hRAdLoader instanceof HRFullScreenVideoHRAdWrapper) {
                adType = AdType.FULL_SCREEN_VIDEO;
            }
            this.receverRegistered = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(broadcast_onclick);
            intentFilter.addAction(broadcast_onreward);
            intentFilter.addAction(broadcast_onclosed);
            intentFilter.addAction(broadcast_on_video_complete);
            LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(context);
            intentFilter.addAction(broadcast_on_video_start);
            intentFilter.addAction(broadcast_on_video_pause);
            intentFilter.addAction(broadcast_on_video_resume);
            intentFilter.addAction(broadcast_on_video_error);
            iAdSailAd = this.nativeAd;
            if (iAdSailAd instanceof NativeAdDataImpl) {
                HRRewardVideoPlayerActivity.setVideoMute(((NativeAdDataImpl) iAdSailAd).getIsMute());
            }
            HRRewardVideoPlayerActivity.setFullScreenAd(this.nativeAd);
            DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
            downloadDialogBean.setApp_name(nativeAdSlot.getAppName());
            downloadDialogBean.setApp_feature(nativeAdSlot.getApp_feature());
            downloadDialogBean.setApp_intro(nativeAdSlot.getApp_intro());
            downloadDialogBean.setApp_privacy(nativeAdSlot.getApp_privacy());
            downloadDialogBean.setApp_size(nativeAdSlot.getApp_size());
            downloadDialogBean.setDeveloper(nativeAdSlot.getDeveloper());
            downloadDialogBean.setPayment_types(nativeAdSlot.getPayment_types());
            downloadDialogBean.setApp_permission(nativeAdSlot.getApp_permission());
            downloadDialogBean.setApp_permission_url(nativeAdSlot.getApp_permission_url());
            downloadDialogBean.setApp_intor_url(nativeAdSlot.getApp_intor_url());
            downloadDialogBean.setApp_private_agreement(nativeAdSlot.getPrivacy_agreement());
            HRRewardVideoPlayerActivity.setDownloadDialogBean(downloadDialogBean);
            localBroadcastManager.registerReceiver(this.receiver, intentFilter);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
        }
        adType = AdType.REWARD;
        intent.putExtra(HRRewardVideoPlayerActivity.Ad_type, adType.value());
        this.receverRegistered = true;
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(broadcast_onclick);
        intentFilter2.addAction(broadcast_onreward);
        intentFilter2.addAction(broadcast_onclosed);
        intentFilter2.addAction(broadcast_on_video_complete);
        LocalBroadcastManager localBroadcastManager2 = LocalBroadcastManager.getInstance(context);
        intentFilter2.addAction(broadcast_on_video_start);
        intentFilter2.addAction(broadcast_on_video_pause);
        intentFilter2.addAction(broadcast_on_video_resume);
        intentFilter2.addAction(broadcast_on_video_error);
        iAdSailAd = this.nativeAd;
        if (iAdSailAd instanceof NativeAdDataImpl) {
        }
        HRRewardVideoPlayerActivity.setFullScreenAd(this.nativeAd);
        DownloadDialogBean downloadDialogBean2 = new DownloadDialogBean();
        downloadDialogBean2.setApp_name(nativeAdSlot.getAppName());
        downloadDialogBean2.setApp_feature(nativeAdSlot.getApp_feature());
        downloadDialogBean2.setApp_intro(nativeAdSlot.getApp_intro());
        downloadDialogBean2.setApp_privacy(nativeAdSlot.getApp_privacy());
        downloadDialogBean2.setApp_size(nativeAdSlot.getApp_size());
        downloadDialogBean2.setDeveloper(nativeAdSlot.getDeveloper());
        downloadDialogBean2.setPayment_types(nativeAdSlot.getPayment_types());
        downloadDialogBean2.setApp_permission(nativeAdSlot.getApp_permission());
        downloadDialogBean2.setApp_permission_url(nativeAdSlot.getApp_permission_url());
        downloadDialogBean2.setApp_intor_url(nativeAdSlot.getApp_intor_url());
        downloadDialogBean2.setApp_private_agreement(nativeAdSlot.getPrivacy_agreement());
        HRRewardVideoPlayerActivity.setDownloadDialogBean(downloadDialogBean2);
        localBroadcastManager2.registerReceiver(this.receiver, intentFilter2);
        if (!(context instanceof Activity)) {
        }
        context.startActivity(intent);
    }

    @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAd
    public void destroy() {
        HRRewardVideoPlayerActivity.removeRewardMediaView(this.adSlot.hashCode() + "");
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
        resultBean.setS_ext(this.adSlot.getS_ext());
        resultBean.setS_code(this.adSlot.getS_code());
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
        return AderUtil.getIsOperationContent(this.adSlot.getAder_id()) ? this.adSlot.getImageUrls() : new String[0];
    }

    public boolean getIsOperationContent() {
        return AderUtil.getIsOperationContent(this.adSlot.getAder_id());
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public boolean isAdValid() {
        int expire_timestamp = this.adSlot.getExpire_timestamp();
        return SystemClock.uptimeMillis() - this.adSlot.getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public void setInteractionListener(InteractionListener interactionListener) {
        this.apiInteractionListener = interactionListener;
        this.nativeAd.setInteractionListener(interactionListener);
    }

    @Override // cn.haorui.sdk.core.ad.fullscreenvideo.IFullScreenVideoAd
    public void setMediaListener(IFullScreenMediaListener iFullScreenMediaListener) {
        this.mFullScreenMediaListener = iFullScreenMediaListener;
    }

    @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAd
    public void setMediaListener(RewardAdMediaListener rewardAdMediaListener) {
        this.apiRewardAdMediaListener = rewardAdMediaListener;
    }

    @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAd, cn.haorui.sdk.core.ad.fullscreenvideo.IFullScreenVideoAd
    public void showAd() {
        showReward(this.adWrapper.getContext());
    }

    @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAd, cn.haorui.sdk.core.ad.fullscreenvideo.IFullScreenVideoAd
    public void showAd(Activity activity) {
        IAdSailAd iAdSailAd = this.nativeAd;
        if (iAdSailAd instanceof NativeAdDataImpl) {
            ((NativeAdDataImpl) iAdSailAd).setContext(activity);
        }
        showReward(activity);
    }
}

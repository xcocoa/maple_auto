package cn.haorui.sdk.platform.topon.banner;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.HRConfig;
import cn.haorui.sdk.core.ad.banner.BannerAdListener;
import cn.haorui.sdk.core.ad.banner.BannerAdLoader;
import cn.haorui.sdk.core.ad.banner.IBannerAd;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.platform.topon.HRInitManager;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class HRBannerAdapter extends CustomBannerAdapter {
    private static final String TAG = "HRBannerAdapter";
    private BannerAdLoader bannerAdLoader;
    private IBannerAd iBannerAd;
    private View mBannerView;
    private String slotId;

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd(Context context, Map<String, Object> map, final ATBiddingListener aTBiddingListener) {
        String str = (String) map.get("app_id");
        this.slotId = (String) map.get("slot_id");
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(this.slotId)) {
            if (aTBiddingListener != null) {
                aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
            }
            ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
            if (aTCustomLoadListener != null) {
                aTCustomLoadListener.onAdLoadError("", "app_id or slot_id is empty!");
                return;
            }
            return;
        }
        if (context instanceof Activity) {
            BannerAdLoader bannerAdLoader = new BannerAdLoader((Activity) context, this.slotId, new BannerAdListener() { // from class: cn.haorui.sdk.platform.topon.banner.HRBannerAdapter.3
                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdClosed() {
                    if (HRBannerAdapter.this.mImpressionEventListener != null) {
                        HRBannerAdapter.this.mImpressionEventListener.onBannerAdClose();
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdError() {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRBannerAdapter.this.mLoadListener != null) {
                        HRBannerAdapter.this.mLoadListener.onAdLoadError(HRConfig.GENDER_UNKNOWN, "加载失败");
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdExposure() {
                    if (HRBannerAdapter.this.mImpressionEventListener != null) {
                        HRBannerAdapter.this.mImpressionEventListener.onBannerAdShow();
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdLoaded(IBannerAd iBannerAd) {
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdPlatformError(AdPlatformError adPlatformError) {
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdReady(IBannerAd iBannerAd) {
                    HRBannerAdapter.this.iBannerAd = iBannerAd;
                    if (iBannerAd != null) {
                        if (iBannerAd.getData() != null) {
                            double d = 0.0d;
                            String string = UUID.randomUUID().toString();
                            if (iBannerAd.getData() != null) {
                                try {
                                    d = Double.parseDouble(iBannerAd.getData().getEcpm());
                                } catch (NumberFormatException e) {
                                    e.printStackTrace();
                                }
                            }
                            ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                            if (aTBiddingListener2 != null) {
                                aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.success(d, string, null, ATAdConst.CURRENCY.RMB), null);
                            }
                        }
                        HRBannerAdapter.this.mBannerView = iBannerAd.getAdView();
                        if (HRBannerAdapter.this.mLoadListener != null) {
                            HRBannerAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        }
                        iBannerAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.topon.banner.HRBannerAdapter.3.1
                            @Override // cn.haorui.sdk.core.loader.InteractionListener
                            public void onAdClicked() {
                                if (HRBannerAdapter.this.mImpressionEventListener != null) {
                                    HRBannerAdapter.this.mImpressionEventListener.onBannerAdClicked();
                                }
                            }
                        });
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdRenderFail(String str2, int i) {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRBannerAdapter.this.mLoadListener != null) {
                        HRBannerAdapter.this.mLoadListener.onAdLoadError(i + "", str2);
                    }
                }
            });
            this.bannerAdLoader = bannerAdLoader;
            bannerAdLoader.loadAd();
        } else {
            if (aTBiddingListener != null) {
                aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
            }
            ATCustomLoadListener aTCustomLoadListener2 = this.mLoadListener;
            if (aTCustomLoadListener2 != null) {
                aTCustomLoadListener2.onAdLoadError("", "Context must be activity.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBid(Context context, Map<String, Object> map, ATBiddingListener aTBiddingListener) {
        LogUtil.d(TAG, "startBid");
        loadAd(context, map, aTBiddingListener);
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        this.mBannerView = null;
        BannerAdLoader bannerAdLoader = this.bannerAdLoader;
        if (bannerAdLoader != null) {
            bannerAdLoader.destroy();
            this.iBannerAd = null;
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.mBannerView;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkName() {
        return HRInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.slotId;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdSdk.getVersionName();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, final Map<String, Object> map, Map<String, Object> map2) {
        LogUtil.d(TAG, "loadCustomNetworkAd");
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.banner.HRBannerAdapter.1
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRBannerAdapter.this.loadAd(context, map, null);
            }
        });
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(final Context context, final Map<String, Object> map, Map<String, Object> map2, final ATBiddingListener aTBiddingListener) {
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.banner.HRBannerAdapter.2
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
                ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                if (aTBiddingListener2 != null) {
                    aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                }
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRBannerAdapter.this.startBid(context, map, aTBiddingListener);
            }
        });
        return true;
    }
}

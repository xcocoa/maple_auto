package cn.haorui.sdk.adsail_ad.nativ;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.MediaView;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.ad.recycler.IAdExposureListener;
import cn.haorui.sdk.core.utils.HRConstants;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NativeAdDataImpl extends BaseAd implements NativeAdData {
    private static final String TAG = "NativeAdDataImpl";
    private int adPatternType;
    private Context context;
    private String desc;
    private String iconUrl;
    private String[] imgUrls;
    private boolean isMute;
    private IAdExposureListener mExposureListener;
    private MediaView mediaView;
    private NativeAdSlot nativeAdSlot;
    private boolean showDetail;
    private String title;

    public class Builder {
        public Builder() {
        }

        public NativeAdDataImpl build() {
            return NativeAdDataImpl.this;
        }

        public Builder setAdPatternType(int i) {
            NativeAdDataImpl.this.adPatternType = i;
            return this;
        }

        public Builder setDesc(String str) {
            NativeAdDataImpl.this.desc = str;
            return this;
        }

        public Builder setIconUrl(String str) {
            NativeAdDataImpl.this.iconUrl = str;
            return this;
        }

        public Builder setImgUrls(String[] strArr) {
            NativeAdDataImpl.this.imgUrls = strArr;
            return this;
        }

        public Builder setMediaView(MediaView mediaView) {
            NativeAdDataImpl.this.mediaView = mediaView;
            return this;
        }

        public Builder setShowDetail(boolean z) {
            NativeAdDataImpl.this.showDetail = z;
            return this;
        }

        public Builder setTitle(String str) {
            NativeAdDataImpl.this.title = str;
            return this;
        }

        public Builder setVideoMute(boolean z) {
            NativeAdDataImpl.this.isMute = z;
            return this;
        }
    }

    public NativeAdDataImpl(@NonNull NativeAdSlot nativeAdSlot) {
        super(null, HRConstants.PLATFORM_HR);
        this.nativeAdSlot = nativeAdSlot;
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdData
    public void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, final NativeAdInteractionListener nativeAdInteractionListener) {
        if (!(context instanceof Activity)) {
            context = viewGroup.getContext();
        }
        this.context = context;
        if (list != null) {
            Iterator<View> it = list.iterator();
            while (it.hasNext()) {
                it.next().setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NativeAdDataImpl.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (NativeAdDataImpl.this.nativeAdSlot != null) {
                            nativeAdInteractionListener.onAdClicked();
                        }
                    }
                });
            }
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdData
    public void bindMediaView(ViewGroup viewGroup, FrameLayout.LayoutParams layoutParams, NativeAdMediaListener nativeAdMediaListener) {
        MediaView mediaView = getMediaView();
        if (mediaView != null) {
            mediaView.setNativeAdMediaListener(nativeAdMediaListener);
            ViewGroup viewGroup2 = (ViewGroup) mediaView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
            if (viewGroup != null) {
                if (layoutParams != null) {
                    viewGroup.addView(getAdView(), layoutParams);
                } else {
                    viewGroup.addView(getAdView(), -1, -2);
                }
            }
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdData
    public int getAdPatternType() {
        return this.adPatternType;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public NativeAdSlot getAdSlot() {
        return this.nativeAdSlot;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public AdType getAdType() {
        return AdType.FEED;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public View getAdView() {
        return getMediaView().getVideoView();
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public Context getContext() {
        Context context = this.context;
        return context != null ? context : getAdView().getContext();
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdData
    public String getDesc() {
        return this.desc;
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdData
    public String getIconUrl() {
        return this.iconUrl;
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdData
    public String[] getImgUrls() {
        return this.imgUrls;
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdData, cn.haorui.sdk.platform.hr.IAdSailAd
    public int getInteractionType() {
        return this.nativeAdSlot.getInteractionType();
    }

    public boolean getIsMute() {
        return this.isMute;
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdData
    public MediaView getMediaView() {
        return this.mediaView;
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdData
    public String getTitle() {
        return this.title;
    }

    public boolean isShowDetail() {
        return this.showDetail;
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public void setOnExposureListener(IAdExposureListener iAdExposureListener) {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).setOnExposureListener(iAdExposureListener);
        }
    }
}

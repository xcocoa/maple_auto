package cn.haorui.sdk.platform.hr.splash;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import cn.haorui.sdk.R;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.adsail_ad.splash.HRSplashRootView;
import cn.haorui.sdk.adsail_ad.splash.NativeSplashAd;
import cn.haorui.sdk.adsail_ad.splash.SplashAdImpl;
import cn.haorui.sdk.adsail_ad.splash.SplashAdSlot;
import cn.haorui.sdk.core.ad.splash.ISplashFinishingTouchListener;
import cn.haorui.sdk.core.ad.splash.SplashAd;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.AderUtil;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.ResultBean;
import cn.haorui.sdk.core.view.gif.GifImageView;
import com.anythink.expressad.exoplayer.f;

/* JADX INFO: loaded from: classes.dex */
public class HRSplashAd extends SplashAd {
    private static final String TAG = "AdSailSplashAd";
    private HRHRAdNativeWrapper adWrapper;
    private boolean autoShow;
    private NativeSplashAd nativeAd;
    private boolean showed;
    private SplashAdListenerAdapter splashAdListener;

    /* JADX WARN: Multi-variable type inference failed */
    public HRSplashAd(@NonNull NativeSplashAd nativeSplashAd, HRHRAdNativeWrapper hRHRAdNativeWrapper, SplashAdListenerAdapter splashAdListenerAdapter, boolean z) {
        super(null, HRConstants.PLATFORM_HR);
        this.nativeAd = nativeSplashAd;
        this.adWrapper = hRHRAdNativeWrapper;
        this.splashAdListener = splashAdListenerAdapter;
        this.autoShow = z;
        if (nativeSplashAd instanceof SplashAd) {
            SplashAd splashAd = (SplashAd) nativeSplashAd;
            setWidth(splashAd.getWidth());
            setHeight(splashAd.getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeClickEye(SplashAdImpl splashAdImpl, boolean z) {
        try {
            if (splashAdImpl.getAdSlot().getAdPatternType() != 1 && splashAdImpl.getAdSlot().getAdPatternType() != 12) {
                if (splashAdImpl.getAdSlot().getAdPatternType() != 2) {
                    return;
                }
                if (!splashAdImpl.getIsVideoFinish() && !z) {
                    return;
                }
                NormalMediaView mediaView = splashAdImpl.getMediaView();
                if (mediaView != null) {
                    mediaView.destroy();
                }
            }
            removeView();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        resultBean.setCid(this.adWrapper.getAdSlot().getCid());
        resultBean.setCat(this.adWrapper.getAdSlot().getCat());
        resultBean.setAderId(this.adWrapper.getAdSlot().getAder_id());
        resultBean.setFromId(this.adWrapper.getAdSlot().getFromId());
        resultBean.setInteractionType(this.adWrapper.getAdSlot().getInteractionType());
        resultBean.setReqId(this.adWrapper.getAdSlot().getReq_id());
        resultBean.setPrice(this.adWrapper.getAdSlot().getEcpm());
        resultBean.setEcpm(this.adWrapper.getAdSlot().getEcpm() + "");
        resultBean.setS_ext(this.adWrapper.getAdSlot().getS_ext());
        resultBean.setS_code(this.adWrapper.getAdSlot().getS_code());
        resultBean.setSdkName(HRConstants.PLATFORM_HR);
        return resultBean;
    }

    public String getDeepLink() {
        if (AderUtil.getIsOperationContent(((SplashAdSlot) this.nativeAd.getAdSlot()).getAder_id())) {
            return this.nativeAd.getAdSlot().getDeep_link();
        }
        return null;
    }

    public String[] getImgUrls() {
        if (AderUtil.getIsOperationContent(((SplashAdSlot) this.nativeAd.getAdSlot()).getAder_id())) {
            return ((SplashAdSlot) this.nativeAd.getAdSlot()).getImageUrls();
        }
        return null;
    }

    public int getInteractionType() {
        return this.nativeAd.getInteractionType();
    }

    public boolean getIsOperationContent() {
        return AderUtil.getIsOperationContent(((SplashAdSlot) this.nativeAd.getAdSlot()).getAder_id());
    }

    public void removeView() {
        View view = this.adView;
        if (view != null) {
            try {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int i = 0; i < viewGroup.getChildCount(); i++) {
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt instanceof HRSplashRootView) {
                            int i2 = 0;
                            while (true) {
                                if (i2 < ((HRSplashRootView) childAt).getChildCount()) {
                                    View childAt2 = ((HRSplashRootView) childAt).getChildAt(i);
                                    if (childAt2 instanceof GifImageView) {
                                        ((GifImageView) childAt2).clear();
                                        break;
                                    }
                                    i2++;
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            ViewParent parent = this.adView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.adView);
            }
        }
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public void setInteractionListener(InteractionListener interactionListener) {
        super.setInteractionListener(interactionListener);
        this.nativeAd.setInteractionListener(interactionListener);
    }

    @Override // cn.haorui.sdk.core.ad.splash.SplashAd, cn.haorui.sdk.core.ad.splash.ISplashAd
    public void setSplashFinishingTouchListener(ISplashFinishingTouchListener iSplashFinishingTouchListener) {
        super.setSplashFinishingTouchListener(iSplashFinishingTouchListener);
        View view = this.adView;
        if (view != null) {
            try {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int i = 0; i < viewGroup.getChildCount(); i++) {
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt instanceof HRSplashRootView) {
                            int i2 = 0;
                            while (true) {
                                if (i2 < ((HRSplashRootView) childAt).getChildCount()) {
                                    View childAt2 = ((HRSplashRootView) childAt).getChildAt(i);
                                    if (childAt2 instanceof GifImageView) {
                                        ((GifImageView) childAt2).setCanClear(false);
                                        break;
                                    }
                                    i2++;
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setSplashImage(int i) {
        if (getAdView() != null) {
            ImageView imageView = (ImageView) getAdView().findViewById(R.id.adsail_splash_image);
            if (imageView.getVisibility() == 0) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imageView.setImageResource(i);
            }
        }
    }

    public void setSplashImage(Bitmap bitmap) {
        if (getAdView() != null) {
            ImageView imageView = (ImageView) getAdView().findViewById(R.id.adsail_splash_image);
            if (imageView.getVisibility() == 0) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imageView.setImageBitmap(bitmap);
            }
        }
    }

    @Override // cn.haorui.sdk.core.ad.splash.ISplashAd
    public void showAd(ViewGroup viewGroup) {
        if (this.showed) {
            return;
        }
        if (this.nativeAd instanceof SplashAdImpl) {
            viewGroup.removeAllViews();
            ((SplashAdImpl) this.nativeAd).showAd(viewGroup);
        }
        this.showed = true;
    }

    @Override // cn.haorui.sdk.core.ad.splash.SplashAd, cn.haorui.sdk.core.ad.splash.ISplashAd
    public void splashAnimationFinish() {
        NativeSplashAd nativeSplashAd = this.nativeAd;
        if (nativeSplashAd == null || !(nativeSplashAd instanceof SplashAdImpl)) {
            return;
        }
        final SplashAdImpl splashAdImpl = (SplashAdImpl) nativeSplashAd;
        splashAdImpl.setAnimFinish(true);
        HRSplashRootView adRoot = splashAdImpl.getAdRoot();
        ImageView imageView = (ImageView) adRoot.findViewById(R.id.adsail_click_eye_close);
        adRoot.findViewById(R.id.adsail_skipView).setVisibility(8);
        imageView.setVisibility(0);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.platform.hr.splash.HRSplashAd.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HRSplashAd.this.closeClickEye(splashAdImpl, true);
            }
        });
        adRoot.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.platform.hr.splash.HRSplashAd.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HRSplashAd.this.closeClickEye(splashAdImpl, true);
                if (splashAdImpl.getInteractionListener() != null && splashAdImpl.getAdSlot().getCbc() == 0) {
                    splashAdImpl.getInteractionListener().onAdClicked();
                }
                ClickHandler.handleClick(splashAdImpl);
            }
        });
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: cn.haorui.sdk.platform.hr.splash.HRSplashAd.3
            @Override // java.lang.Runnable
            public void run() {
                HRSplashAd.this.closeClickEye(splashAdImpl, false);
            }
        }, f.a);
    }
}

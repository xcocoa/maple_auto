package cn.haorui.sdk.adsail_ad;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import cn.haorui.sdk.R;
import cn.haorui.sdk.activity.HRRewardVideoPlayerActivity;
import cn.haorui.sdk.adsail_ad.MediaView;
import cn.haorui.sdk.adsail_ad.banner.BannerAdSlot;
import cn.haorui.sdk.adsail_ad.banner.HRBannerRootView;
import cn.haorui.sdk.adsail_ad.banner.IBannerAdListener;
import cn.haorui.sdk.adsail_ad.interstitial.IInterstitialAdListener;
import cn.haorui.sdk.adsail_ad.interstitial.InterstitialAdSlot;
import cn.haorui.sdk.adsail_ad.interstitial.NativeInterstitialAd;
import cn.haorui.sdk.adsail_ad.nativ.INativeAdListener;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdData;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdDataImpl;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdDataImpl.Builder;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.adsail_ad.splash.HRSplashRootView;
import cn.haorui.sdk.adsail_ad.splash.ISplashAdListener;
import cn.haorui.sdk.adsail_ad.splash.SplashAdImpl;
import cn.haorui.sdk.adsail_ad.splash.SplashAdSlot;
import cn.haorui.sdk.adsail_ad.splash.SplashSkipView;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.ad.BaseAdSlot;
import cn.haorui.sdk.core.ad.BaseFullScreenVideoAdLoader;
import cn.haorui.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener;
import cn.haorui.sdk.core.ad.splash.SplashAdLoader;
import cn.haorui.sdk.core.domain.HttpResponse;
import cn.haorui.sdk.core.exception.a;
import cn.haorui.sdk.core.loader.g;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.HttpGetBytesCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.ImageUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MemoryUtil;
import cn.haorui.sdk.core.utils.SdkHandler;
import cn.haorui.sdk.core.view.DownloadView;
import cn.haorui.sdk.core.view.SwipeView;
import cn.haorui.sdk.core.view.gif.GifImageView;
import cn.haorui.sdk.platform.hr.banner.HRBannerAd;
import cn.haorui.sdk.platform.hr.interstitial.HRHRAdNativeWrapper;
import cn.haorui.sdk.platform.hr.recycler.HRAdMediaListenerAdapter;
import com.anythink.expressad.exoplayer.f;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.NotNull;
import z2.o000;
import z2.o000O;
import z2.o000O0O0;

/* JADX INFO: loaded from: classes.dex */
public class AdNative {
    private static final int SPLASH_TIMEOUT = 5000;
    private static final String TAG = "AdNative";
    private Context context;
    private int shakeId;

    /* JADX INFO: renamed from: cn.haorui.sdk.adsail_ad.AdNative$16, reason: invalid class name */
    public class AnonymousClass16 extends o000O0O0<File> {
        public final /* synthetic */ ISplashAdListener val$adListener;
        public final /* synthetic */ HRSplashRootView val$adRoot;
        public final /* synthetic */ SplashAdSlot val$adSlot;
        public final /* synthetic */ View val$customSkipButton;
        public final /* synthetic */ AtomicBoolean val$isLoadFailed;
        public final /* synthetic */ SplashAdImpl val$nativeAd;
        public final /* synthetic */ boolean val$videoIsMute;

        public AnonymousClass16(ISplashAdListener iSplashAdListener, SplashAdSlot splashAdSlot, boolean z, HRSplashRootView hRSplashRootView, SplashAdImpl splashAdImpl, View view, AtomicBoolean atomicBoolean) {
            this.val$adListener = iSplashAdListener;
            this.val$adSlot = splashAdSlot;
            this.val$videoIsMute = z;
            this.val$adRoot = hRSplashRootView;
            this.val$nativeAd = splashAdImpl;
            this.val$customSkipButton = view;
            this.val$isLoadFailed = atomicBoolean;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x010e  */
        @Override // z2.o000OO0O
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void callback(String str, File file, o000O o000o) {
            String str2;
            boolean z;
            if (200 > o000o.OooOO0o() || 300 <= o000o.OooOO0o()) {
                str2 = "splash video code error, code: " + o000o.OooOO0o();
            } else {
                if (file != null) {
                    z = true;
                    if (z) {
                        AdNative.this.sendADError(this.val$adListener, "splash video load error", Integer.valueOf(o000o.OooOO0o()));
                        return;
                    }
                    if (file.length() >= MemoryUtil.getTraceMemory()) {
                        AdNative.this.sendADError(this.val$adListener, "splash video load error", Integer.valueOf(o000o.OooOO0o()));
                        return;
                    }
                    final NormalMediaView normalMediaView = new NormalMediaView(AdNative.this.context);
                    normalMediaView.setConfigWidth(this.val$adSlot.getWidth());
                    normalMediaView.setConfigHeight(this.val$adSlot.getHeight());
                    normalMediaView.setPlayOnce(true);
                    normalMediaView.mute();
                    if (!this.val$videoIsMute) {
                        normalMediaView.unmute();
                    }
                    normalMediaView.setIsEyes(this.val$adSlot.getIs_eyes());
                    normalMediaView.setUseTransform(false);
                    normalMediaView.setDisplayMode(2);
                    if (AdSdk.adConfig().showLogo()) {
                        normalMediaView.setFromLogo(this.val$adSlot.getFromLogo());
                        normalMediaView.setFromLogoVisibility(0);
                    } else {
                        normalMediaView.setFromLogoVisibility(8);
                        normalMediaView.setFromLogo(null);
                    }
                    normalMediaView.setAdListener(new INativeAdListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.16.1
                        @Override // cn.haorui.sdk.adsail_ad.IAdListener
                        public void onADError(String str3, Integer num) {
                            if (AnonymousClass16.this.val$adSlot.getErrorUrl() != null) {
                                HttpUtil.asyncGetErrorReport(AnonymousClass16.this.val$adSlot.getErrorUrl()[0], num, str3);
                            }
                            AnonymousClass16 anonymousClass16 = AnonymousClass16.this;
                            AdNative.this.sendADError(anonymousClass16.val$adListener, str3, num);
                        }

                        @Override // cn.haorui.sdk.adsail_ad.IAdListener
                        public void onADExposure() {
                        }

                        @Override // cn.haorui.sdk.adsail_ad.IAdListener
                        public void onADLoaded(List<NativeAdData> list) {
                        }

                        @Override // cn.haorui.sdk.adsail_ad.IAdListener
                        public void onAdRenderFail(String str3, int i) {
                        }
                    });
                    ViewGroup viewGroup = (ViewGroup) this.val$adRoot.findViewById(R.id.adsail_splash_video);
                    viewGroup.setVisibility(0);
                    viewGroup.addView(normalMediaView, -1, -1);
                    this.val$nativeAd.setMediaView(normalMediaView);
                    final SplashSkipView splashSkipViewLoadSplashAdOk = AdNative.this.loadSplashAdOk(this.val$nativeAd, this.val$adRoot, this.val$adListener, this.val$customSkipButton);
                    normalMediaView.setNativeAdMediaListener(new HRAdMediaListenerAdapter(AdNative.this.context, this.val$adSlot, new RecyclerAdMediaListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.16.2
                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoCompleted() {
                            AnonymousClass16.this.val$nativeAd.setVideoFinish(true);
                            if (AnonymousClass16.this.val$adSlot.getIs_eyes() == 1 && AnonymousClass16.this.val$nativeAd.getIsAnimFinish()) {
                                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: cn.haorui.sdk.adsail_ad.AdNative.16.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        normalMediaView.destroy();
                                        View adView = AnonymousClass16.this.val$nativeAd.getAdView();
                                        if (adView != null) {
                                            ViewParent parent = adView.getParent();
                                            if (parent instanceof ViewGroup) {
                                                ((ViewGroup) parent).removeView(adView);
                                            }
                                        }
                                    }
                                }, 4000L);
                            }
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoError() {
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoLoaded() {
                            if (AnonymousClass16.this.val$isLoadFailed.get()) {
                                return;
                            }
                            AnonymousClass16 anonymousClass16 = AnonymousClass16.this;
                            if (anonymousClass16.val$adListener != null) {
                                anonymousClass16.val$nativeAd.setWidth(Integer.valueOf(normalMediaView.getAdSailVideoView().getMediaPlayer().getVideoWidth()));
                                AnonymousClass16.this.val$nativeAd.setHeight(Integer.valueOf(normalMediaView.getAdSailVideoView().getMediaPlayer().getVideoHeight()));
                                AnonymousClass16 anonymousClass162 = AnonymousClass16.this;
                                anonymousClass162.val$adListener.onAdReady(anonymousClass162.val$nativeAd);
                            }
                            long jMin = Math.min(normalMediaView.getDuration(), AdSdk.adConfig().getSplashShowTime());
                            if (AnonymousClass16.this.val$adSlot.getIs_eyes() != 1) {
                                splashSkipViewLoadSplashAdOk.setTotalTime((int) jMin);
                            }
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoPause() {
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoResume() {
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoStart() {
                        }
                    }));
                    normalMediaView.setVideoCover(this.val$adSlot.getVideo_cover());
                    normalMediaView.setVideoEndCover(this.val$adSlot.getVideo_endcover());
                    normalMediaView.setVideoPath(file.getAbsolutePath());
                    normalMediaView.start();
                    return;
                }
                str2 = "splash video file error, file: null";
            }
            LogUtil.i(AdNative.TAG, str2);
            z = false;
            if (z) {
            }
        }
    }

    public AdNative(@NonNull Context context) {
        this.context = context;
    }

    private byte[] getImageBytes(Context context, int i) {
        try {
            InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int i2 = inputStreamOpenRawResource.read(bArr);
                if (-1 == i2) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSplashView(final o000 o000Var, final HRSplashRootView hRSplashRootView, SplashAdSlot splashAdSlot, final SplashAdImpl splashAdImpl, final ISplashAdListener iSplashAdListener) {
        o000 o000VarO00oO0o;
        String clk_area;
        o000 o000VarO00oO0o2;
        String clk_area2;
        GifImageView gifImageView = (GifImageView) hRSplashRootView.findViewById(R.id.adsail_shake_img);
        int i = R.id.adsail_jump_btn;
        final TextView textView = (TextView) hRSplashRootView.findViewById(i);
        final RelativeLayout relativeLayout = (RelativeLayout) hRSplashRootView.findViewById(R.id.adsail_shakeRoot);
        TextView textView2 = (TextView) hRSplashRootView.findViewById(R.id.adsail_shake_text);
        SwipeView swipeView = (SwipeView) hRSplashRootView.findViewById(R.id.adsail_SwipeViewParent);
        if (swipeView.getVisibility() != 8) {
            swipeView.setVisibility(8);
        }
        if ((splashAdSlot.getAct_type() & 4) == 4 || (splashAdSlot.getAct_type() & 8) == 8) {
            relativeLayout.post(new Runnable() { // from class: cn.haorui.sdk.adsail_ad.AdNative.7
                @Override // java.lang.Runnable
                public void run() {
                    int measuredHeight = hRSplashRootView.getMeasuredHeight();
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                    layoutParams.bottomMargin = (int) (((double) measuredHeight) * 0.1d);
                    relativeLayout.setLayoutParams(layoutParams);
                    o000Var.o00oO0o(R.id.adsail_shakeRoot).o000o000(0);
                }
            });
            if ((splashAdSlot.getAct_type() & 4) != 4 && (splashAdSlot.getAct_type() & 8) == 8) {
                textView2.setText("扭一扭手机");
            }
            if (!TextUtils.isEmpty(splashAdSlot.getClk_area())) {
                o000VarO00oO0o = o000Var.o00oO0o(R.id.adsail_shake_text_bottom);
                clk_area = splashAdSlot.getClk_area();
            } else if (splashAdSlot.getInteractionType() == 0) {
                o000VarO00oO0o = o000Var.o00oO0o(R.id.adsail_shake_text_bottom);
                clk_area = "查看详情或跳转第三方应用";
            } else {
                o000VarO00oO0o = o000Var.o00oO0o(R.id.adsail_shake_text_bottom);
                clk_area = "下载或跳转第三方应用";
            }
            o000VarO00oO0o.o000Oo00(clk_area);
            if ((splashAdSlot.getAct_type() & 2) == 2) {
                textView2.setText(((splashAdSlot.getAct_type() & 4) == 4 || (splashAdSlot.getAct_type() & 8) != 8) ? "摇一摇手机或点击图标" : "扭一扭手机或点击图标");
                gifImageView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.8
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (splashAdImpl.getAdSlot().getCbc() == 0 && splashAdImpl.getInteractionListener() != null) {
                            splashAdImpl.getInteractionListener().onAdClicked();
                        }
                        ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                        if (iSplashAdListener2 != null) {
                            iSplashAdListener2.onAdClicked();
                        }
                        ClickHandler.handleClick(splashAdImpl);
                    }
                });
            }
            showShakeImage(hRSplashRootView.getContext(), gifImageView);
        } else if ((splashAdSlot.getAct_type() & 2) == 2) {
            relativeLayout.post(new Runnable() { // from class: cn.haorui.sdk.adsail_ad.AdNative.9
                @Override // java.lang.Runnable
                public void run() {
                    int measuredHeight = hRSplashRootView.getMeasuredHeight();
                    int measuredWidth = hRSplashRootView.getMeasuredWidth();
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
                    layoutParams.bottomMargin = (int) (((double) measuredHeight) * 0.1d);
                    layoutParams.width = (int) (((double) measuredWidth) * 0.99d);
                    layoutParams.height = -2;
                    textView.setLayoutParams(layoutParams);
                    o000Var.o00oO0o(R.id.adsail_jump_btn).o000o000(0);
                }
            });
            if (!TextUtils.isEmpty(splashAdSlot.getClk_area())) {
                o000VarO00oO0o2 = o000Var.o00oO0o(i);
                clk_area2 = splashAdSlot.getClk_area();
            } else if (splashAdSlot.getInteractionType() == 1) {
                o000VarO00oO0o2 = o000Var.o00oO0o(i);
                clk_area2 = "点击下载或跳转第三方应用";
            } else {
                o000VarO00oO0o2 = o000Var.o00oO0o(i);
                clk_area2 = "点击查看详情或跳转第三方应用";
            }
            o000VarO00oO0o2.o000Oo00(clk_area2);
        }
        if (!AdSdk.adConfig().showLogo()) {
            o000Var.o00oO0o(R.id.adsail_img_ad_tag).o000o000(8);
        } else {
            if (TextUtils.isEmpty(splashAdSlot.getFromLogo())) {
                return;
            }
            o000Var.o00oO0o(R.id.adsail_img_ad_tag).o000000(splashAdSlot.getFromLogo());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isGif(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        return new BigInteger(1, bArr2).toString(16).startsWith("47494638");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadImageSplashAd(final ISplashAdListener iSplashAdListener, SplashAdSlot splashAdSlot, final SplashAdImpl splashAdImpl, final HRSplashRootView hRSplashRootView, o000 o000Var, boolean z, final View view) {
        final GifImageView gifImageView = (GifImageView) hRSplashRootView.findViewById(R.id.adsail_splash_image);
        gifImageView.setVisibility(0);
        hRSplashRootView.findViewById(R.id.adsail_splash_video).setVisibility(8);
        HttpUtil.asyncGetFile(splashAdSlot.getImageUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.adsail_ad.AdNative.10
            @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
            public void onFailure(@NotNull IOException iOException) {
                AdNative.this.sendADError(iSplashAdListener, "图片资源加载错误", a.a);
            }

            @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
            public void onResponse(HttpResponse<byte[]> httpResponse) {
                if (httpResponse.isSuccessful()) {
                    AdNative.this.loadSplashAdOk(splashAdImpl, hRSplashRootView, iSplashAdListener, view);
                    byte[] responseBody = httpResponse.getResponseBody();
                    if (responseBody != null && responseBody.length > 0 && responseBody.length < MemoryUtil.getTraceMemory()) {
                        if (AdNative.this.isGif(responseBody)) {
                            GifImageView gifImageView2 = gifImageView;
                            if (gifImageView2 != null) {
                                gifImageView2.setBytes(responseBody);
                                splashAdImpl.setWidth(Integer.valueOf(gifImageView.getGifWidth()));
                                splashAdImpl.setHeight(Integer.valueOf(gifImageView.getGifHeight()));
                                gifImageView.startAnimation();
                            }
                        } else {
                            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                            if (bitmapDecodeByteArray != null) {
                                gifImageView.setImageBitmap(bitmapDecodeByteArray);
                                splashAdImpl.setWidth(Integer.valueOf(bitmapDecodeByteArray.getWidth()));
                                splashAdImpl.setHeight(Integer.valueOf(bitmapDecodeByteArray.getHeight()));
                            }
                        }
                        ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                        if (iSplashAdListener2 != null) {
                            iSplashAdListener2.onAdReady(splashAdImpl);
                            return;
                        }
                        return;
                    }
                }
                AdNative.this.sendADError(iSplashAdListener, "图片资源加载错误", a.a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNativeSplash(final ISplashAdListener iSplashAdListener, final SplashAdSlot splashAdSlot, final SplashAdImpl splashAdImpl, final HRSplashRootView hRSplashRootView, boolean z, final View view) {
        splashAdImpl.setAdRoot(hRSplashRootView);
        new DownloadView().handleDownloadView(hRSplashRootView, splashAdSlot);
        o000 o000Var = new o000(hRSplashRootView);
        if (splashAdSlot.getAdPatternType() == 2) {
            loadNativeVideo(iSplashAdListener, splashAdSlot, splashAdImpl, hRSplashRootView, o000Var, view);
        } else {
            HttpUtil.asyncGetFile(splashAdSlot.getImageUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.adsail_ad.AdNative.3
                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onFailure(@NotNull IOException iOException) {
                    AdNative.this.sendADError(iSplashAdListener, "图片资源加载错误", a.a);
                }

                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onResponse(HttpResponse<byte[]> httpResponse) {
                    byte[] responseBody;
                    if (!httpResponse.isSuccessful() || (responseBody = httpResponse.getResponseBody()) == null || responseBody.length <= 0 || responseBody.length >= MemoryUtil.getTraceMemory()) {
                        AdNative.this.sendADError(iSplashAdListener, "图片资源加载错误", a.a);
                        return;
                    }
                    if (AdNative.this.isGif(responseBody)) {
                        AdNative.this.loadSplashAdOk(splashAdImpl, hRSplashRootView, iSplashAdListener, view);
                        AdNative.this.showLayoutByWidthHeight(responseBody, hRSplashRootView, true, splashAdSlot, splashAdImpl, iSplashAdListener, null);
                    } else {
                        AdNative.this.loadSplashAdOk(splashAdImpl, hRSplashRootView, iSplashAdListener, view);
                        AdNative.this.showLayoutByWidthHeight(responseBody, hRSplashRootView, false, splashAdSlot, splashAdImpl, iSplashAdListener, null);
                    }
                    ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                    if (iSplashAdListener2 != null) {
                        iSplashAdListener2.onAdReady(splashAdImpl);
                    }
                }
            });
        }
    }

    private void loadNativeVideo(final ISplashAdListener iSplashAdListener, final SplashAdSlot splashAdSlot, final SplashAdImpl splashAdImpl, final HRSplashRootView hRSplashRootView, o000 o000Var, final View view) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final o000O0O0<File> o000o0o0 = new o000O0O0<File>() { // from class: cn.haorui.sdk.adsail_ad.AdNative.5
            /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x00e1  */
            @Override // z2.o000OO0O
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void callback(String str, File file, o000O o000o) {
                String str2;
                boolean z;
                if (200 > o000o.OooOO0o() || 300 <= o000o.OooOO0o()) {
                    str2 = "splash video code error, code: " + o000o.OooOO0o();
                } else {
                    if (file != null) {
                        z = true;
                        if (z) {
                            AdNative.this.sendADError(iSplashAdListener, "splash video load error", Integer.valueOf(o000o.OooOO0o()));
                            return;
                        }
                        if (file.length() >= MemoryUtil.getTraceMemory()) {
                            AdNative.this.sendADError(iSplashAdListener, "splash video load error", Integer.valueOf(o000o.OooOO0o()));
                            return;
                        }
                        splashAdImpl.setAdView(hRSplashRootView);
                        final SplashSkipView splashSkipViewLoadSplashAdOk = AdNative.this.loadSplashAdOk(splashAdImpl, hRSplashRootView, iSplashAdListener, view);
                        final NormalMediaView normalMediaView = new NormalMediaView(AdNative.this.context);
                        normalMediaView.setConfigWidth(splashAdSlot.getWidth());
                        normalMediaView.setConfigHeight(splashAdSlot.getHeight());
                        normalMediaView.setPlayOnce(true);
                        normalMediaView.mute();
                        normalMediaView.setIsEyes(splashAdSlot.getIs_eyes());
                        normalMediaView.setUseTransform(false);
                        normalMediaView.setDisplayMode(2);
                        normalMediaView.setFromLogoVisibility(8);
                        normalMediaView.setFromLogo(null);
                        normalMediaView.setAdListener(new INativeAdListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.5.1
                            @Override // cn.haorui.sdk.adsail_ad.IAdListener
                            public void onADError(String str3, Integer num) {
                                if (splashAdSlot.getErrorUrl() != null) {
                                    HttpUtil.asyncGetErrorReport(splashAdSlot.getErrorUrl()[0], num, str3);
                                }
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                AdNative.this.sendADError(iSplashAdListener, str3, num);
                            }

                            @Override // cn.haorui.sdk.adsail_ad.IAdListener
                            public void onADExposure() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.IAdListener
                            public void onADLoaded(List<NativeAdData> list) {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.IAdListener
                            public void onAdRenderFail(String str3, int i) {
                            }
                        });
                        normalMediaView.setNativeAdMediaListener(new HRAdMediaListenerAdapter(AdNative.this.context, splashAdSlot, new RecyclerAdMediaListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.5.2
                            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                            public void onVideoCompleted() {
                            }

                            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                            public void onVideoError() {
                            }

                            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                            public void onVideoLoaded() {
                                if (atomicBoolean.get()) {
                                    return;
                                }
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                AdNative.this.showLayoutByWidthHeight(null, hRSplashRootView, false, splashAdSlot, splashAdImpl, iSplashAdListener, normalMediaView);
                                splashAdImpl.setMediaView(normalMediaView);
                                AnonymousClass5 anonymousClass52 = AnonymousClass5.this;
                                if (iSplashAdListener != null) {
                                    splashAdImpl.setWidth(Integer.valueOf(normalMediaView.getAdSailVideoView().getMediaPlayer().getVideoWidth()));
                                    splashAdImpl.setHeight(Integer.valueOf(normalMediaView.getAdSailVideoView().getMediaPlayer().getVideoHeight()));
                                }
                                AnonymousClass5 anonymousClass53 = AnonymousClass5.this;
                                ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                                if (iSplashAdListener2 != null) {
                                    iSplashAdListener2.onAdReady(splashAdImpl);
                                }
                                splashSkipViewLoadSplashAdOk.setTotalTime(normalMediaView.getDuration());
                            }

                            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                            public void onVideoPause() {
                            }

                            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                            public void onVideoResume() {
                            }

                            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                            public void onVideoStart() {
                            }
                        }));
                        normalMediaView.setVideoCover(splashAdSlot.getVideo_cover());
                        normalMediaView.setVideoEndCover(splashAdSlot.getVideo_endcover());
                        normalMediaView.setVideoPath(file.getAbsolutePath());
                        normalMediaView.start();
                        return;
                    }
                    str2 = "splash video file error, file: null";
                }
                LogUtil.i(AdNative.TAG, str2);
                z = false;
                if (z) {
                }
            }
        };
        new Thread(new Runnable() { // from class: cn.haorui.sdk.adsail_ad.AdNative.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(f.a);
                    o000O0O0 o000o0o02 = o000o0o0;
                    if (o000o0o02 != null) {
                        o000o0o02.abort();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).start();
        o000Var.OooO0Oo(splashAdSlot.getVideoUrl(), File.class, 86400000L, o000o0o0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SplashSkipView loadSplashAdOk(final SplashAdImpl splashAdImpl, HRSplashRootView hRSplashRootView, final ISplashAdListener iSplashAdListener, final View view) {
        TextView textView;
        splashAdImpl.setAdView(hRSplashRootView);
        final SplashSkipView splashSkipView = (SplashSkipView) hRSplashRootView.findViewById(R.id.adsail_skipView);
        splashSkipView.setShow(!splashAdImpl.getIsHideSkipBtn());
        try {
            splashSkipView.setTotalTime((int) AdSdk.adConfig().getSplashShowTime());
        } catch (Exception e) {
            e.printStackTrace();
        }
        final SplashSkipView.OnSkipListener onSkipListener = new SplashSkipView.OnSkipListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.11
            @Override // cn.haorui.sdk.adsail_ad.splash.SplashSkipView.OnSkipListener
            public void onSkip() {
                LogUtil.d(AdNative.TAG, "onSkip: ");
                ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                if (iSplashAdListener2 != null) {
                    iSplashAdListener2.onADSkip();
                    iSplashAdListener.onADClosed();
                }
            }

            @Override // cn.haorui.sdk.adsail_ad.splash.SplashSkipView.OnSkipListener
            public void onTick(long j) {
                View view2;
                ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                if (iSplashAdListener2 != null) {
                    iSplashAdListener2.onADTick(j);
                }
                if (((long) splashSkipView.getTotalTime()) - j <= splashSkipView.getShowTime() || (view2 = view) == null) {
                    return;
                }
                view2.setVisibility(0);
            }

            @Override // cn.haorui.sdk.adsail_ad.splash.SplashSkipView.OnSkipListener
            public void onTimeOver() {
                LogUtil.d(AdNative.TAG, "onTimeOver: ");
                ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                if (iSplashAdListener2 != null) {
                    iSplashAdListener2.onADTimeOver();
                    iSplashAdListener.onADClosed();
                }
            }
        };
        splashSkipView.setOnSkipListener(onSkipListener);
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    onSkipListener.onSkip();
                }
            });
            splashSkipView.setShow(false);
        }
        if ((splashAdImpl.getAdSlot().getAct_type() & 1) == 1) {
            hRSplashRootView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (splashAdImpl.getAdSlot().getCbc() == 0 && splashAdImpl.getInteractionListener() != null) {
                        splashAdImpl.getInteractionListener().onAdClicked();
                    }
                    ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                    if (iSplashAdListener2 != null) {
                        iSplashAdListener2.onAdClicked();
                    }
                    ClickHandler.handleClick(splashAdImpl);
                }
            });
        }
        if ((splashAdImpl.getAdSlot().getAct_type() & 2) == 2 && (textView = (TextView) hRSplashRootView.findViewById(R.id.adsail_jump_btn)) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (splashAdImpl.getAdSlot().getCbc() == 0 && splashAdImpl.getInteractionListener() != null) {
                        splashAdImpl.getInteractionListener().onAdClicked();
                    }
                    ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                    if (iSplashAdListener2 != null) {
                        iSplashAdListener2.onAdClicked();
                    }
                    ClickHandler.handleClick(splashAdImpl);
                }
            });
        }
        if ((splashAdImpl.getAdSlot().getAct_type() & 4) == 4 || (splashAdImpl.getAdSlot().getAct_type() & 8) == 8) {
            int power_index = splashAdImpl.getAdSlot().getPower_index();
            splashAdImpl.getAdSlot().getPower_type();
            if (this.shakeId == 0) {
                this.shakeId = g.c.a.b();
            }
            int i = ((splashAdImpl.getAdSlot().getAct_type() & 4) == 4 || (splashAdImpl.getAdSlot().getAct_type() & 8) != 8) ? 1 : 2;
            g.c.a.a(splashAdImpl.getAdSlot().getPosId(), splashAdImpl.getAdSlot().getLoadedTime(), splashAdImpl.getAdSlot().getDclk());
            g gVar = g.c.a;
            hRSplashRootView.getContext();
            gVar.a(power_index, i, splashAdImpl.getAdSlot().getPower_delay(), splashAdImpl.getAdSlot().getPower_count(), this.shakeId, splashAdImpl.getAdSlot().getEcpm(), new g.d() { // from class: cn.haorui.sdk.adsail_ad.AdNative.15
                @Override // cn.haorui.sdk.core.loader.g.d
                public void onShake() {
                    g.c.a.a(AdNative.this.shakeId);
                    if (splashAdImpl.getAdSlot().getCbc() == 0 && splashAdImpl.getInteractionListener() != null) {
                        splashAdImpl.getInteractionListener().onAdClicked();
                    }
                    ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                    if (iSplashAdListener2 != null) {
                        iSplashAdListener2.onAdClicked();
                    }
                    ClickHandler.handleClick(splashAdImpl);
                }
            });
            g.c.a.a(true);
        }
        splashAdImpl.setSkipView(splashSkipView);
        return splashSkipView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadVideoSplashAd(ISplashAdListener iSplashAdListener, SplashAdSlot splashAdSlot, SplashAdImpl splashAdImpl, HRSplashRootView hRSplashRootView, o000 o000Var, boolean z, View view, boolean z3) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        hRSplashRootView.setVisibility(4);
        hRSplashRootView.findViewById(R.id.adsail_splash_image).setVisibility(8);
        final AnonymousClass16 anonymousClass16 = new AnonymousClass16(iSplashAdListener, splashAdSlot, z3, hRSplashRootView, splashAdImpl, view, atomicBoolean);
        new Thread(new Runnable() { // from class: cn.haorui.sdk.adsail_ad.AdNative.17
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(f.a);
                    o000O0O0 o000o0o0 = anonymousClass16;
                    if (o000o0o0 != null) {
                        o000o0o0.abort();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).start();
        o000Var.OooO0Oo(splashAdSlot.getVideoUrl(), File.class, 86400000L, anonymousClass16);
    }

    private void loadVideoView(final NativeAdSlot nativeAdSlot, final INativeAdListener iNativeAdListener, boolean z, final boolean z3, boolean z4, float f, float f2) {
        final ArrayList arrayList = new ArrayList();
        NormalMediaView normalMediaView = new NormalMediaView(this.context);
        normalMediaView.setAdListener(iNativeAdListener);
        normalMediaView.setOnVideoLoadedListener(new MediaView.OnVideoLoadedListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.21
            @Override // cn.haorui.sdk.adsail_ad.MediaView.OnVideoLoadedListener
            public void onLoaded(MediaView mediaView) {
                NativeAdDataImpl nativeAdDataImplBuild = new NativeAdDataImpl(nativeAdSlot).new Builder().setTitle(nativeAdSlot.getTitle()).setDesc(nativeAdSlot.getDesc()).setAdPatternType(nativeAdSlot.getAdPatternType()).setIconUrl(nativeAdSlot.getIconUrl()).setImgUrls(nativeAdSlot.getImageUrls()).setMediaView(mediaView).setShowDetail(z3).build();
                arrayList.add(nativeAdDataImplBuild);
                ((NormalMediaView) mediaView).setMsAd(nativeAdDataImplBuild);
                INativeAdListener iNativeAdListener2 = iNativeAdListener;
                if (iNativeAdListener2 != null) {
                    iNativeAdListener2.onADLoaded(arrayList);
                }
            }
        });
        if (nativeAdSlot.getAdPatternType() == 2) {
            normalMediaView.setVideoCover(nativeAdSlot.getVideo_cover());
            normalMediaView.setVideoEndCover(nativeAdSlot.getVideo_endcover());
            normalMediaView.setVideoPath(nativeAdSlot.getVideoUrl());
            normalMediaView.setRecycler(z);
            if (z) {
                normalMediaView.setConfigWidth(nativeAdSlot.getWidth());
                normalMediaView.setConfigHeight(nativeAdSlot.getHeight());
                normalMediaView.setInitMute(true);
                normalMediaView.setFromLogoVisibility(8);
                normalMediaView.setUseTransform(false);
                normalMediaView.setAutoStart(z4);
                normalMediaView.setContainerWidth(f);
                normalMediaView.setContainerHeight(f2);
            } else {
                normalMediaView.setPlayOnce(true);
                normalMediaView.setUseTransform(false);
                if (AdSdk.adConfig().showLogo()) {
                    normalMediaView.setFromLogo(nativeAdSlot.getFromLogo());
                } else {
                    normalMediaView.setFromLogo(null);
                    normalMediaView.setFromLogoVisibility(8);
                }
            }
        } else if (nativeAdSlot.getAdPatternType() != 11 && nativeAdSlot.getAdPatternType() != 12 && nativeAdSlot.getAdPatternType() != 13) {
            LogUtil.i(TAG, "unsupported type: " + nativeAdSlot.getAdPatternType());
            sendADError(iNativeAdListener, "不支持的广告类型", a.c);
            return;
        }
        normalMediaView.performVideoActions();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendADError(IAdListener iAdListener, String str, Integer num) {
        if (iAdListener != null) {
            iAdListener.onAdRenderFail(str, num.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showImage(byte[] bArr, GifImageView gifImageView) {
        if (!isGif(bArr)) {
            gifImageView.setImageBitmap(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
        } else if (gifImageView != null) {
            gifImageView.setBytes(bArr);
            gifImageView.startAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0178 A[PHI: r2
      0x0178: PHI (r2v14 android.graphics.Bitmap) = (r2v2 android.graphics.Bitmap), (r2v17 android.graphics.Bitmap) binds: [B:41:0x0176, B:29:0x0134] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0325  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void showLayoutByWidthHeight(byte[] bArr, View view, boolean z, BaseAdSlot baseAdSlot, final SplashAdImpl splashAdImpl, final ISplashAdListener iSplashAdListener, NormalMediaView normalMediaView) {
        int videoWidth;
        int i;
        int videoHeight;
        Bitmap bitmapDecodeByteArray;
        boolean z3;
        int i2;
        Bitmap bitmapRsBlur;
        ImageView imageView;
        int i3;
        int i4;
        String str;
        TextView textView;
        DisplayMetrics displayMetrics = this.context.getResources().getDisplayMetrics();
        ImageView imageView2 = (ImageView) view.findViewById(R.id.adsail_layout_native_splash_bg);
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.adsail_native_splash_ad_container);
        View viewInflate = View.inflate(this.context, R.layout.adsail_layout_native_splash_1, null);
        if (normalMediaView != null) {
            try {
                videoWidth = normalMediaView.getHrVideoView().getMediaPlayer().getVideoWidth();
            } catch (Exception e) {
                e = e;
                videoWidth = 0;
            }
            try {
                videoHeight = normalMediaView.getHrVideoView().getMediaPlayer().getVideoHeight();
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                i = videoWidth;
                videoHeight = 0;
            }
        } else {
            if (!z) {
                Bitmap bitmapDecodeByteArray2 = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                if (bitmapDecodeByteArray2 != null) {
                    int width = bitmapDecodeByteArray2.getWidth();
                    bitmapDecodeByteArray = bitmapDecodeByteArray2;
                    videoHeight = bitmapDecodeByteArray2.getHeight();
                    i = width;
                } else {
                    bitmapDecodeByteArray = bitmapDecodeByteArray2;
                    videoHeight = 0;
                    i = 0;
                }
                if ((i * 1.0f) / videoHeight >= 0.67d) {
                    viewInflate = View.inflate(this.context, R.layout.adsail_layout_native_splash_2, null);
                    z3 = true;
                } else {
                    z3 = false;
                }
                relativeLayout.addView(viewInflate, -1, -1);
                RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.activity_sdk_splash_mediaContainer);
                LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.adsail_layout_native_splash_ll);
                GifImageView gifImageView = (GifImageView) viewInflate.findViewById(R.id.layout_native_splash_imageview);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.layout_native_splash_title);
                ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.layout_native_splash_icon);
                ImageView imageView4 = (ImageView) viewInflate.findViewById(R.id.layout_native_splash_score);
                TextView textView3 = (TextView) viewInflate.findViewById(R.id.layout_native_splash_desc);
                LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.adsail_layout_native_splash_logo_ll);
                TextView textView4 = (TextView) viewInflate.findViewById(R.id.adsail_layout_native_splash_cid);
                TextView textView5 = (TextView) viewInflate.findViewById(R.id.adsail_jump_btn);
                if (normalMediaView == null) {
                    relativeLayout2.removeAllViews();
                    relativeLayout2.addView(normalMediaView, -1, -1);
                    Bitmap videoThumb = normalMediaView.getVideoThumb();
                    if (videoThumb != null && (bitmapRsBlur = ImageUtil.rsBlur(this.context.getApplicationContext(), videoThumb, 25)) != null) {
                        imageView2.setImageBitmap(bitmapRsBlur);
                    }
                } else if (z) {
                    gifImageView.setBytes(bArr);
                    splashAdImpl.setWidth(Integer.valueOf(gifImageView.getGifWidth()));
                    splashAdImpl.setHeight(Integer.valueOf(gifImageView.getGifHeight()));
                    gifImageView.startAnimation();
                } else {
                    if (bitmapDecodeByteArray == null) {
                        i2 = 0;
                        bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                    } else {
                        i2 = 0;
                    }
                    if (bitmapDecodeByteArray != null) {
                        gifImageView.setImageBitmap(bitmapDecodeByteArray);
                    }
                    Bitmap bitmapDecodeByteArray3 = BitmapFactory.decodeByteArray(bArr, i2, bArr.length);
                    if (bitmapDecodeByteArray3 != null && (bitmapRsBlur = ImageUtil.rsBlur(this.context.getApplicationContext(), bitmapDecodeByteArray3, 25)) != null) {
                    }
                }
                o000 o000Var = new o000(view);
                LogUtil.e(TAG, "isVertical=" + z3 + ",width=" + i + ",height=" + videoHeight);
                if (!z3) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
                    double d = ((double) displayMetrics.widthPixels) * 0.86d;
                    layoutParams.width = (int) d;
                    layoutParams.height = (int) ((d * ((double) videoHeight)) / ((double) i));
                    int i5 = (int) (((double) displayMetrics.heightPixels) * 0.07d);
                    layoutParams.topMargin = i5;
                    layoutParams.bottomMargin = i5;
                    linearLayout.setLayoutParams(layoutParams);
                    if ((splashAdImpl.getAdSlot().getAct_type() & 4) != 4) {
                        i4 = 8;
                        if ((splashAdImpl.getAdSlot().getAct_type() & 8) == 8) {
                            Drawable drawable = this.context.getResources().getDrawable(R.drawable.adsail_rock_btn);
                            drawable.setBounds(0, 0, 100, 100);
                            textView5.setPadding(60, 0, 60, 0);
                            textView5.setCompoundDrawables(drawable, null, null, null);
                            textView = textView2;
                            i4 = 8;
                        } else {
                            textView = textView2;
                        }
                        textView.setVisibility(i4);
                        textView3.setVisibility(i4);
                        imageView = imageView4;
                    }
                    linearLayout2.setBackground(this.context.getResources().getDrawable(R.drawable.adsail_black_oval_gray));
                    if (TextUtils.isEmpty(baseAdSlot.getIconUrl())) {
                        imageView3.setVisibility(0);
                        o000Var.o00oO0O(imageView3).o000000(baseAdSlot.getIconUrl());
                    } else {
                        imageView3.setVisibility(8);
                    }
                    if (!TextUtils.isEmpty(baseAdSlot.getCid())) {
                        textView4.setText(baseAdSlot.getCid());
                    }
                    if (baseAdSlot.getInteractionType() != 0) {
                        textView5.setText("点击跳转详情页或第三方应用");
                        if ((splashAdImpl.getAdSlot().getAct_type() & 4) == 4) {
                            str = "点击/摇一摇跳转详情页";
                        } else if ((splashAdImpl.getAdSlot().getAct_type() & 8) == 8) {
                            str = "点击/扭动手机跳转详情页";
                        }
                        textView5.setText(str);
                    } else {
                        textView5.setText("点击下载第三方应用");
                        if ((splashAdImpl.getAdSlot().getAct_type() & 4) == 4) {
                            str = "点击/摇一摇下载第三方应用";
                        } else if ((splashAdImpl.getAdSlot().getAct_type() & 8) == 8) {
                            str = "点击/扭动手机下载第三方应用";
                        }
                        textView5.setText(str);
                    }
                    textView5.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (splashAdImpl.getAdSlot().getCbc() == 0 && splashAdImpl.getInteractionListener() != null) {
                                splashAdImpl.getInteractionListener().onAdClicked();
                            }
                            ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                            if (iSplashAdListener2 != null) {
                                iSplashAdListener2.onAdClicked();
                            }
                            ClickHandler.handleClick(splashAdImpl);
                        }
                    });
                }
                imageView = imageView4;
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
                layoutParams2.width = (int) (((double) displayMetrics.widthPixels) * 0.86d);
                layoutParams2.height = -2;
                int i6 = (int) (((double) displayMetrics.heightPixels) * 0.07d);
                layoutParams2.topMargin = i6;
                layoutParams2.bottomMargin = i6;
                linearLayout.setLayoutParams(layoutParams2);
                if ((splashAdImpl.getAdSlot().getAct_type() & 4) == 4 || (splashAdImpl.getAdSlot().getAct_type() & 8) == 8) {
                    Drawable drawable2 = this.context.getResources().getDrawable(R.drawable.adsail_rock_btn);
                    i3 = 0;
                    drawable2.setBounds(0, 0, 100, 100);
                    textView5.setPadding(60, 0, 60, 0);
                    textView5.setCompoundDrawables(drawable2, null, null, null);
                } else {
                    i3 = 0;
                }
                if (TextUtils.isEmpty(baseAdSlot.getDesc())) {
                    i4 = 8;
                    textView3.setVisibility(8);
                    imageView.setVisibility(i3);
                } else {
                    textView3.setVisibility(i3);
                    textView3.setText(baseAdSlot.getTitle());
                    i4 = 8;
                }
                if (!TextUtils.isEmpty(baseAdSlot.getAppName())) {
                    textView2.setVisibility(i3);
                    textView2.setText(baseAdSlot.getAppName());
                    linearLayout2.setBackground(this.context.getResources().getDrawable(R.drawable.adsail_black_oval_gray));
                    if (TextUtils.isEmpty(baseAdSlot.getIconUrl())) {
                    }
                    if (!TextUtils.isEmpty(baseAdSlot.getCid())) {
                    }
                    if (baseAdSlot.getInteractionType() != 0) {
                    }
                    textView5.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (splashAdImpl.getAdSlot().getCbc() == 0 && splashAdImpl.getInteractionListener() != null) {
                                splashAdImpl.getInteractionListener().onAdClicked();
                            }
                            ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                            if (iSplashAdListener2 != null) {
                                iSplashAdListener2.onAdClicked();
                            }
                            ClickHandler.handleClick(splashAdImpl);
                        }
                    });
                }
                textView2.setVisibility(i4);
                imageView.setVisibility(i4);
                linearLayout2.setBackground(this.context.getResources().getDrawable(R.drawable.adsail_black_oval_gray));
                if (TextUtils.isEmpty(baseAdSlot.getIconUrl())) {
                }
                if (!TextUtils.isEmpty(baseAdSlot.getCid())) {
                }
                if (baseAdSlot.getInteractionType() != 0) {
                }
                textView5.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (splashAdImpl.getAdSlot().getCbc() == 0 && splashAdImpl.getInteractionListener() != null) {
                            splashAdImpl.getInteractionListener().onAdClicked();
                        }
                        ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                        if (iSplashAdListener2 != null) {
                            iSplashAdListener2.onAdClicked();
                        }
                        ClickHandler.handleClick(splashAdImpl);
                    }
                });
            }
            GifImageView gifImageView2 = new GifImageView(this.context);
            gifImageView2.setBytes(bArr);
            videoWidth = gifImageView2.getGifWidth();
            videoHeight = gifImageView2.getGifHeight();
        }
        i = videoWidth;
        bitmapDecodeByteArray = null;
        if ((i * 1.0f) / videoHeight >= 0.67d) {
        }
        relativeLayout.addView(viewInflate, -1, -1);
        RelativeLayout relativeLayout22 = (RelativeLayout) viewInflate.findViewById(R.id.activity_sdk_splash_mediaContainer);
        LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.adsail_layout_native_splash_ll);
        GifImageView gifImageView3 = (GifImageView) viewInflate.findViewById(R.id.layout_native_splash_imageview);
        TextView textView22 = (TextView) viewInflate.findViewById(R.id.layout_native_splash_title);
        ImageView imageView32 = (ImageView) viewInflate.findViewById(R.id.layout_native_splash_icon);
        ImageView imageView42 = (ImageView) viewInflate.findViewById(R.id.layout_native_splash_score);
        TextView textView32 = (TextView) viewInflate.findViewById(R.id.layout_native_splash_desc);
        LinearLayout linearLayout22 = (LinearLayout) viewInflate.findViewById(R.id.adsail_layout_native_splash_logo_ll);
        TextView textView42 = (TextView) viewInflate.findViewById(R.id.adsail_layout_native_splash_cid);
        TextView textView52 = (TextView) viewInflate.findViewById(R.id.adsail_jump_btn);
        if (normalMediaView == null) {
        }
        o000 o000Var2 = new o000(view);
        LogUtil.e(TAG, "isVertical=" + z3 + ",width=" + i + ",height=" + videoHeight);
        if (!z3) {
        }
        imageView.setVisibility(i4);
        linearLayout22.setBackground(this.context.getResources().getDrawable(R.drawable.adsail_black_oval_gray));
        if (TextUtils.isEmpty(baseAdSlot.getIconUrl())) {
        }
        if (!TextUtils.isEmpty(baseAdSlot.getCid())) {
        }
        if (baseAdSlot.getInteractionType() != 0) {
        }
        textView52.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (splashAdImpl.getAdSlot().getCbc() == 0 && splashAdImpl.getInteractionListener() != null) {
                    splashAdImpl.getInteractionListener().onAdClicked();
                }
                ISplashAdListener iSplashAdListener2 = iSplashAdListener;
                if (iSplashAdListener2 != null) {
                    iSplashAdListener2.onAdClicked();
                }
                ClickHandler.handleClick(splashAdImpl);
            }
        });
    }

    private void showShakeImage(Context context, GifImageView gifImageView) {
        byte[] imageBytes = getImageBytes(context, R.raw.adsail_new_shake);
        if (imageBytes == null || imageBytes.length <= 0) {
            return;
        }
        gifImageView.setBytes(imageBytes, 1);
        gifImageView.startAnimation();
    }

    public void loadBannerAd(final BannerAdSlot bannerAdSlot, final IBannerAdListener iBannerAdListener) {
        final HRBannerRootView hRBannerRootView = (HRBannerRootView) LayoutInflater.from(this.context).inflate(R.layout.adsail_banner_ad_layout, (ViewGroup) null);
        hRBannerRootView.setAdListener(iBannerAdListener);
        final o000 o000Var = new o000(hRBannerRootView);
        new DownloadView().handleDownloadView(hRBannerRootView, bannerAdSlot);
        final GifImageView gifImageView = (GifImageView) hRBannerRootView.findViewById(R.id.adsail_banner_image);
        if (bannerAdSlot.getImageUrls() == null || bannerAdSlot.getImageUrls().length == 0) {
            LogUtil.i(TAG, "empty srcUrls");
            sendADError(iBannerAdListener, "empty srcUrls", a.b);
            return;
        }
        if (bannerAdSlot.getAdPatternType() != 2) {
            if (!AdSdk.adConfig().showLogo()) {
                o000Var.o00oO0o(R.id.adsail_img_ad_tag).o000o000(8);
            } else if (!TextUtils.isEmpty(bannerAdSlot.getFromLogo())) {
                o000Var.o00oO0o(R.id.adsail_img_ad_tag).o000000(bannerAdSlot.getFromLogo());
            }
            HttpUtil.asyncGetFile(bannerAdSlot.getImageUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.adsail_ad.AdNative.1
                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onFailure(@NotNull IOException iOException) {
                    AdNative.this.sendADError(iBannerAdListener, "图片资源加载错误", a.a);
                }

                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onResponse(HttpResponse<byte[]> httpResponse) {
                    byte[] responseBody;
                    if (!httpResponse.isSuccessful() || (responseBody = httpResponse.getResponseBody()) == null || responseBody.length <= 0 || responseBody.length >= MemoryUtil.getTraceMemory()) {
                        AdNative.this.sendADError(iBannerAdListener, "图片资源加载错误", a.a);
                        return;
                    }
                    final HRBannerAd hRBannerAd = new HRBannerAd(bannerAdSlot);
                    try {
                        AdNative.this.showImage(responseBody, gifImageView);
                    } catch (Exception e) {
                        AdNative.this.sendADError(iBannerAdListener, "图片资源加载错误", a.a);
                        e.printStackTrace();
                    }
                    if (iBannerAdListener != null) {
                        hRBannerAd.setAdView(hRBannerRootView);
                        iBannerAdListener.onADLoaded(hRBannerAd);
                    }
                    o000Var.o00oO0o(R.id.adsail_banner_close_button).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.1.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (hRBannerRootView.getParent() != null) {
                                ((ViewGroup) hRBannerRootView.getParent()).removeView(hRBannerRootView);
                            }
                            IBannerAdListener iBannerAdListener2 = iBannerAdListener;
                            if (iBannerAdListener2 != null) {
                                iBannerAdListener2.onADClosed();
                            }
                        }
                    });
                    o000Var.o00oO0o(R.id.adsail_banner_image).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.1.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (bannerAdSlot.getCbc() == 0 && hRBannerAd.getInteractionListener() != null) {
                                hRBannerAd.getInteractionListener().onAdClicked();
                            }
                            ClickHandler.handleClick(hRBannerAd);
                        }
                    });
                }
            });
            return;
        }
        LogUtil.i(TAG, "unsupported type: " + bannerAdSlot.getAdPatternType());
        sendADError(iBannerAdListener, "unsupported type", a.c);
    }

    public void loadFullScreenVideoAd(NativeAdSlot nativeAdSlot, INativeAdListener iNativeAdListener, FullScreenVideoAdLoader fullScreenVideoAdLoader) {
        loadRewardVideoAd(nativeAdSlot, iNativeAdListener, fullScreenVideoAdLoader);
    }

    public void loadInterstitialAd(final HRHRAdNativeWrapper hRHRAdNativeWrapper, final IInterstitialAdListener iInterstitialAdListener) {
        InterstitialAdSlot adSlot = hRHRAdNativeWrapper.getAdSlot();
        if (adSlot.getImageUrls() == null || adSlot.getImageUrls().length == 0) {
            LogUtil.i(TAG, "empty srcUrls");
            sendADError(iInterstitialAdListener, "empty srcUrls", a.b);
            return;
        }
        if (adSlot.getAdPatternType() != 2) {
            HttpUtil.asyncGetFile(adSlot.getImageUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.adsail_ad.AdNative.18
                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onFailure(@NotNull IOException iOException) {
                    AdNative.this.sendADError(iInterstitialAdListener, "图片资源加载错误", a.a);
                }

                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onResponse(HttpResponse<byte[]> httpResponse) {
                    byte[] responseBody;
                    if (!httpResponse.isSuccessful() || (responseBody = httpResponse.getResponseBody()) == null || responseBody.length <= 0 || responseBody.length >= MemoryUtil.getTraceMemory()) {
                        AdNative.this.sendADError(iInterstitialAdListener, "图片资源加载错误", a.a);
                    } else {
                        final NativeInterstitialAd nativeInterstitialAd = new NativeInterstitialAd(hRHRAdNativeWrapper, iInterstitialAdListener, httpResponse.getResponseBody());
                        SdkHandler.getInstance().runOnUiThread(new Runnable() { // from class: cn.haorui.sdk.adsail_ad.AdNative.18.1
                            @Override // java.lang.Runnable
                            public void run() {
                                iInterstitialAdListener.onADLoaded(nativeInterstitialAd);
                            }
                        });
                    }
                }
            });
            return;
        }
        if (adSlot.getDrawing() == 1) {
            if (iInterstitialAdListener != null) {
                final NativeInterstitialAd nativeInterstitialAd = new NativeInterstitialAd(hRHRAdNativeWrapper, iInterstitialAdListener, null);
                SdkHandler.getInstance().runOnUiThread(new Runnable() { // from class: cn.haorui.sdk.adsail_ad.AdNative.19
                    @Override // java.lang.Runnable
                    public void run() {
                        iInterstitialAdListener.onADLoaded(nativeInterstitialAd);
                    }
                });
                return;
            }
            return;
        }
        LogUtil.i(TAG, "unsupported type: " + adSlot.getAdPatternType());
        sendADError(iInterstitialAdListener, "不支持广告类型", a.c);
    }

    public void loadNativeAd(NativeAdSlot nativeAdSlot, INativeAdListener iNativeAdListener, boolean z, boolean z3, float f, float f2) {
        loadVideoView(nativeAdSlot, iNativeAdListener, true, z, z3, f, f2);
    }

    public void loadPasterAd(NativeAdSlot nativeAdSlot, INativeAdListener iNativeAdListener) {
        loadVideoView(nativeAdSlot, iNativeAdListener, false, false, false, 0.0f, 0.0f);
    }

    public void loadRewardVideoAd(NativeAdSlot nativeAdSlot, final INativeAdListener iNativeAdListener, BaseFullScreenVideoAdLoader baseFullScreenVideoAdLoader) {
        NormalMediaView normalMediaView = new NormalMediaView(this.context);
        normalMediaView.setAdListener(iNativeAdListener);
        final ArrayList arrayList = new ArrayList();
        arrayList.add(new NativeAdDataImpl(nativeAdSlot).new Builder().setTitle(nativeAdSlot.getTitle()).setDesc(nativeAdSlot.getDesc()).setAdPatternType(nativeAdSlot.getAdPatternType()).setIconUrl(nativeAdSlot.getIconUrl()).setImgUrls(nativeAdSlot.getImageUrls()).setMediaView(normalMediaView).setVideoMute(baseFullScreenVideoAdLoader.getVideoIsMute()).build());
        String str = nativeAdSlot.hashCode() + "";
        HRRewardVideoPlayerActivity.setRewardMediaView(str, normalMediaView);
        baseFullScreenVideoAdLoader.addRewardMediaViewLocalId(str);
        if (nativeAdSlot.getAdPatternType() != 2) {
            LogUtil.i(TAG, "unsupported type: " + nativeAdSlot.getAdPatternType());
            sendADError(iNativeAdListener, "不支持的广告类型", a.c);
            return;
        }
        normalMediaView.setVideoPath(nativeAdSlot.getVideoUrl());
        normalMediaView.setPlayOnce(true);
        normalMediaView.setFromLogoVisibility(8);
        normalMediaView.setUseTransform(false);
        if (baseFullScreenVideoAdLoader.getVideoIsMute()) {
            normalMediaView.mute();
        }
        normalMediaView.setOnPreparedListener(new NormalMediaView.IPreparedListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.20
            @Override // cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.IPreparedListener
            public void onPrepared() {
                INativeAdListener iNativeAdListener2 = iNativeAdListener;
                if (iNativeAdListener2 != null) {
                    iNativeAdListener2.onADLoaded(arrayList);
                }
            }
        });
    }

    public void loadSplashAd(final SplashAdSlot splashAdSlot, final ISplashAdListener iSplashAdListener, final cn.haorui.sdk.platform.hr.splash.HRHRAdNativeWrapper hRHRAdNativeWrapper, final View view, final boolean z) {
        final SplashAdImpl splashAdImpl = new SplashAdImpl(splashAdSlot, hRHRAdNativeWrapper, z);
        if (splashAdSlot.getImageUrls() == null || splashAdSlot.getImageUrls().length == 0) {
            LogUtil.i(TAG, "empty srcUrls");
            sendADError(iSplashAdListener, "图片url为空", a.b);
        } else {
            splashAdImpl.setOnAdShowListener(new SplashAdImpl.IAdShowListener() { // from class: cn.haorui.sdk.adsail_ad.AdNative.2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // cn.haorui.sdk.adsail_ad.splash.SplashAdImpl.IAdShowListener
                public void onShow() {
                    LayoutInflater layoutInflaterFrom = LayoutInflater.from(AdNative.this.context);
                    HRSplashRootView hRSplashRootView = (HRSplashRootView) layoutInflaterFrom.inflate(R.layout.adsail_splash_ad_layout, (ViewGroup) null);
                    o000 o000Var = new o000(hRSplashRootView);
                    AdNative.this.handleSplashView(o000Var, hRSplashRootView, splashAdSlot, splashAdImpl, iSplashAdListener);
                    splashAdImpl.setAdRoot(hRSplashRootView);
                    if (splashAdSlot.getDrawing() == 1) {
                        AdNative.this.loadNativeSplash(iSplashAdListener, splashAdSlot, splashAdImpl, (HRSplashRootView) layoutInflaterFrom.inflate(R.layout.adsail_layout_native_splash, (ViewGroup) null), z, view);
                        return;
                    }
                    new DownloadView().handleDownloadView(hRSplashRootView, splashAdSlot);
                    if (splashAdSlot.getAdPatternType() == 1 || splashAdSlot.getAdPatternType() == 12 || splashAdSlot.getAdPatternType() == 11 || splashAdSlot.getAdPatternType() == 13) {
                        AdNative.this.loadImageSplashAd(iSplashAdListener, splashAdSlot, splashAdImpl, hRSplashRootView, o000Var, z, view);
                        return;
                    }
                    if (splashAdSlot.getAdPatternType() == 2) {
                        AdNative.this.loadVideoSplashAd(iSplashAdListener, splashAdSlot, splashAdImpl, hRSplashRootView, o000Var, z, view, ((SplashAdLoader) hRHRAdNativeWrapper.getAdLoader()).getVideoIsMute());
                        return;
                    }
                    LogUtil.i(AdNative.TAG, "unsupported type: " + splashAdSlot.getAdPatternType());
                    AdNative.this.sendADError(iSplashAdListener, "unsupported type", a.c);
                }
            });
            if (iSplashAdListener != null) {
                iSplashAdListener.onADLoaded(splashAdImpl);
            }
        }
    }
}

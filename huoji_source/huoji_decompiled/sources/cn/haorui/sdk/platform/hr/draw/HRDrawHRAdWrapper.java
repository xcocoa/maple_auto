package cn.haorui.sdk.platform.hr.draw;

import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import cn.haorui.sdk.R;
import cn.haorui.sdk.activity.HRDownloadDetailActivity;
import cn.haorui.sdk.adsail_ad.AdNative;
import cn.haorui.sdk.adsail_ad.draw.HRDrawRootView;
import cn.haorui.sdk.adsail_ad.nativ.INativeAdListener;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdData;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.ad.BaseAdSlot;
import cn.haorui.sdk.core.ad.draw.DrawAdListener;
import cn.haorui.sdk.core.ad.draw.DrawAdLoader;
import cn.haorui.sdk.core.ad.draw.IDrawAd;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener;
import cn.haorui.sdk.core.domain.HttpResponse;
import cn.haorui.sdk.core.exception.a;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.DownloadDialogBean;
import cn.haorui.sdk.core.utils.HttpGetBytesCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MacroUtil;
import cn.haorui.sdk.core.utils.RecordUtil;
import cn.haorui.sdk.core.view.DownloadView;
import cn.haorui.sdk.core.view.TouchAdContainer;
import cn.haorui.sdk.core.view.TouchPositionListener;
import cn.haorui.sdk.core.view.gif.GifImageView;
import cn.haorui.sdk.platform.hr.HRAdLoader;
import cn.haorui.sdk.platform.hr.HRPlatformError;
import cn.haorui.sdk.platform.hr.recycler.HRAdMediaListenerAdapter;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import z2.o000;

/* JADX INFO: loaded from: classes.dex */
public class HRDrawHRAdWrapper extends HRAdLoader<NativeAdSlot, DrawAdLoader, DrawAdListener> {
    private static final String TAG = "AdSailDrawAdWrapper";
    private AdNative adNative;
    private boolean hasExposed;
    private boolean hasloaded;
    private RecyclerAdMediaListener recyclerAdMediaListener;

    public HRDrawHRAdWrapper(DrawAdLoader drawAdLoader, NativeAdSlot nativeAdSlot) {
        super(drawAdLoader, nativeAdSlot);
        this.hasExposed = false;
        this.hasloaded = false;
        this.recyclerAdMediaListener = new RecyclerAdMediaListener() { // from class: cn.haorui.sdk.platform.hr.draw.HRDrawHRAdWrapper.5
            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoCompleted() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoError() {
                if (((DrawAdLoader) HRDrawHRAdWrapper.this.getAdLoader()).getLoaderListener() != null) {
                    ((DrawAdLoader) HRDrawHRAdWrapper.this.getAdLoader()).getLoaderListener().onAdRenderFail("视频加载失败", -1);
                }
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoLoaded() {
                if (HRDrawHRAdWrapper.this.hasloaded) {
                    return;
                }
                HRDrawHRAdWrapper.this.hasloaded = true;
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
        };
        this.adNative = new AdNative(drawAdLoader.getContext());
    }

    private void handleDownloadView(final View view, final BaseAdSlot baseAdSlot) {
        try {
            if (baseAdSlot.getInteractionType() == 1) {
                TextView textView = (TextView) view.findViewById(R.id.adsail_download_layer_textview);
                textView.setVisibility(0);
                StringBuilder sb = new StringBuilder();
                if (!TextUtils.isEmpty(baseAdSlot.getAppName())) {
                    sb.append("应用名称：");
                    sb.append(baseAdSlot.getAppName());
                    sb.append(" | ");
                }
                if (!TextUtils.isEmpty(baseAdSlot.getApp_ver())) {
                    sb.append("应用版本：");
                    sb.append(baseAdSlot.getApp_ver());
                    sb.append(" | ");
                }
                if (!TextUtils.isEmpty(baseAdSlot.getApp_size())) {
                    sb.append("应用大小：");
                    sb.append(baseAdSlot.getApp_size());
                    sb.append(" | ");
                }
                if (!TextUtils.isEmpty(baseAdSlot.getDeveloper())) {
                    sb.append("开发者：");
                    sb.append(baseAdSlot.getDeveloper());
                    sb.append(" | ");
                }
                sb.append(" 权限详情> | 隐私协议 > | 功能介绍 >");
                textView.setText(sb.toString());
                textView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.platform.hr.draw.HRDrawHRAdWrapper.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        try {
                            DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
                            downloadDialogBean.setApp_name(baseAdSlot.getAppName());
                            downloadDialogBean.setApp_feature(baseAdSlot.getApp_feature());
                            downloadDialogBean.setApp_intro(baseAdSlot.getApp_intro());
                            downloadDialogBean.setApp_privacy(baseAdSlot.getApp_privacy());
                            downloadDialogBean.setApp_size(baseAdSlot.getApp_size());
                            downloadDialogBean.setDeveloper(baseAdSlot.getDeveloper());
                            downloadDialogBean.setPayment_types(baseAdSlot.getPayment_types());
                            downloadDialogBean.setApp_permission(baseAdSlot.getApp_permission());
                            downloadDialogBean.setApp_permission_url(baseAdSlot.getApp_permission_url());
                            downloadDialogBean.setApp_intor_url(baseAdSlot.getApp_intor_url());
                            downloadDialogBean.setApp_private_agreement(baseAdSlot.getPrivacy_agreement());
                            HRDownloadDetailActivity.startActivity(view.getContext(), downloadDialogBean);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private boolean isGif(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        return new BigInteger(1, bArr2).toString(16).startsWith("47494638");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void loadImage() {
        final HRDrawRootView hRDrawRootView = (HRDrawRootView) LayoutInflater.from(this.context).inflate(R.layout.adsail_draw_ad_layout, (ViewGroup) null);
        hRDrawRootView.setAdListener(new DrawAdListener() { // from class: cn.haorui.sdk.platform.hr.draw.HRDrawHRAdWrapper.2
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                HRDrawRootView hRDrawRootView2;
                if (HRDrawHRAdWrapper.this.hasExposed || (hRDrawRootView2 = hRDrawRootView) == null) {
                    return;
                }
                hRDrawRootView2.post(new Runnable() { // from class: cn.haorui.sdk.platform.hr.draw.HRDrawHRAdWrapper.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RecordUtil.saveAction(HRDrawHRAdWrapper.this.getAdSlot().getPosId(), 3);
                        String[] monitorUrl = HRDrawHRAdWrapper.this.getAdSlot().getMonitorUrl();
                        if (monitorUrl != null) {
                            LogUtil.d(HRDrawHRAdWrapper.TAG, "send onAdExposure");
                            for (String str : monitorUrl) {
                                if (!TextUtils.isEmpty(str)) {
                                    HttpUtil.asyncGetWithWebViewUA(HRDrawHRAdWrapper.this.getContext(), MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                                }
                            }
                        }
                        ((DrawAdListener) HRDrawHRAdWrapper.this.getLoaderListener()).onAdExposure();
                        HRDrawHRAdWrapper.this.hasExposed = true;
                    }
                });
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(IDrawAd iDrawAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(IDrawAd iDrawAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
            }
        });
        o000 o000Var = new o000(hRDrawRootView);
        final HRDrawAd hRDrawAd = new HRDrawAd(getAdSlot(), null);
        final GifImageView gifImageView = (GifImageView) hRDrawRootView.findViewById(R.id.adsail_draw_ad_image);
        final ImageView imageView = (ImageView) hRDrawRootView.findViewById(R.id.adsail_draw_ad_detail_logo);
        TextView textView = (TextView) hRDrawRootView.findViewById(R.id.adsail_draw_ad_detail_title);
        TextView textView2 = (TextView) hRDrawRootView.findViewById(R.id.adsail_draw_ad_detail_desc);
        textView.setText(((NativeAdSlot) this.adSlot).getTitle());
        textView2.setText(((NativeAdSlot) this.adSlot).getContent());
        new DownloadView().handleDownloadView(hRDrawRootView, (BaseAdSlot) this.adSlot);
        if (((NativeAdSlot) this.adSlot).getImageUrls() == null || ((NativeAdSlot) this.adSlot).getImageUrls().length == 0) {
            LogUtil.i(TAG, "empty srcUrls");
            new HRPlatformError("empty srcUrls", a.b).post(((DrawAdLoader) getAdLoader()).getLoaderListener());
            return;
        }
        if (((NativeAdSlot) this.adSlot).getAdPatternType() != 1 && ((NativeAdSlot) this.adSlot).getAdPatternType() != 12) {
            LogUtil.i(TAG, "unsupported type: " + ((NativeAdSlot) this.adSlot).getAdPatternType());
            new HRPlatformError("unsupported type", a.c).post(((DrawAdLoader) getAdLoader()).getLoaderListener());
            return;
        }
        if (!AdSdk.adConfig().showLogo()) {
            o000Var.o00oO0o(R.id.adsail_img_ad_tag).o000o000(8);
        } else if (!TextUtils.isEmpty(((NativeAdSlot) this.adSlot).getFromLogo())) {
            o000Var.o00oO0o(R.id.adsail_img_ad_tag).o000000(((NativeAdSlot) this.adSlot).getFromLogo());
        }
        HttpUtil.asyncGetFile(((NativeAdSlot) this.adSlot).getImageUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.platform.hr.draw.HRDrawHRAdWrapper.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
            public void onFailure(@NotNull IOException iOException) {
                new HRPlatformError("图片资源加载错误", a.a).post(((DrawAdLoader) HRDrawHRAdWrapper.this.getAdLoader()).getLoaderListener());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
            public void onResponse(HttpResponse<byte[]> httpResponse) {
                byte[] responseBody;
                if (!httpResponse.isSuccessful() || (responseBody = httpResponse.getResponseBody()) == null || responseBody.length <= 0) {
                    HRPlatformError hRPlatformError = new HRPlatformError("图片资源加载错误", a.a);
                    hRPlatformError.post(((DrawAdLoader) HRDrawHRAdWrapper.this.getAdLoader()).getLoaderListener());
                    return;
                }
                HRDrawHRAdWrapper.this.showImage(responseBody, gifImageView);
                imageView.setImageBitmap(BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length));
                if (HRDrawHRAdWrapper.this.getLoaderListener() != 0) {
                    hRDrawAd.setAdView(hRDrawRootView);
                    ((DrawAdListener) HRDrawHRAdWrapper.this.getLoaderListener()).onAdLoaded(hRDrawAd);
                    ((DrawAdListener) HRDrawHRAdWrapper.this.getLoaderListener()).onAdReady(hRDrawAd);
                }
            }
        });
        hRDrawRootView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.platform.hr.draw.HRDrawHRAdWrapper.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HRDrawHRAdWrapper.this.adSlot != null && ((NativeAdSlot) HRDrawHRAdWrapper.this.adSlot).getCbc() == 0 && hRDrawAd.getInteractionListener() != null) {
                    hRDrawAd.getInteractionListener().onAdClicked();
                }
                ClickHandler.handleClick(hRDrawAd);
            }
        });
    }

    private void loadVideo() {
        this.adNative.loadPasterAd((NativeAdSlot) this.adSlot, new INativeAdListener() { // from class: cn.haorui.sdk.platform.hr.draw.HRDrawHRAdWrapper.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.haorui.sdk.adsail_ad.IAdListener
            public void onADError(String str, Integer num) {
                LogUtil.d(HRDrawHRAdWrapper.TAG, str);
                if (((NativeAdSlot) HRDrawHRAdWrapper.this.adSlot).getErrorUrl() != null) {
                    HttpUtil.asyncGetErrorReport(((NativeAdSlot) HRDrawHRAdWrapper.this.adSlot).getErrorUrl()[0], num, str);
                }
                new HRPlatformError(str, num).post(((DrawAdLoader) HRDrawHRAdWrapper.this.getAdLoader()).getLoaderListener());
            }

            @Override // cn.haorui.sdk.adsail_ad.IAdListener
            public void onADExposure() {
                if (HRDrawHRAdWrapper.this.hasExposed) {
                    return;
                }
                RecordUtil.saveAction(HRDrawHRAdWrapper.this.getAdSlot().getPosId(), 3);
                String[] monitorUrl = HRDrawHRAdWrapper.this.getAdSlot().getMonitorUrl();
                if (monitorUrl != null) {
                    LogUtil.d(HRDrawHRAdWrapper.TAG, "send onADExposure");
                    for (String str : monitorUrl) {
                        if (!TextUtils.isEmpty(str)) {
                            HttpUtil.asyncGetWithWebViewUA(HRDrawHRAdWrapper.this.getContext(), MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                        }
                    }
                }
                if (HRDrawHRAdWrapper.this.getLoaderListener() != 0) {
                    ((DrawAdListener) HRDrawHRAdWrapper.this.getLoaderListener()).onAdExposure();
                }
                HRDrawHRAdWrapper.this.hasExposed = true;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.haorui.sdk.adsail_ad.IAdListener
            public void onADLoaded(List<NativeAdData> list) {
                if ((list == null || list.isEmpty()) && ((DrawAdLoader) HRDrawHRAdWrapper.this.getAdLoader()).getLoaderListener() != null) {
                    ((DrawAdLoader) HRDrawHRAdWrapper.this.getAdLoader()).getLoaderListener().onAdError();
                }
                final NativeAdData nativeAdData = list.get(0);
                if (!(nativeAdData.getMediaView() instanceof NormalMediaView) && ((DrawAdLoader) HRDrawHRAdWrapper.this.getAdLoader()).getLoaderListener() != null) {
                    ((DrawAdLoader) HRDrawHRAdWrapper.this.getAdLoader()).getLoaderListener().onAdError();
                }
                final View adView = nativeAdData.getAdView();
                HRDrawRootView hRDrawRootView = (HRDrawRootView) LayoutInflater.from(HRDrawHRAdWrapper.this.context).inflate(R.layout.adsail_draw_ad_layout, (ViewGroup) null);
                new DownloadView().handleDownloadView(hRDrawRootView, (BaseAdSlot) HRDrawHRAdWrapper.this.adSlot);
                FrameLayout frameLayout = (FrameLayout) hRDrawRootView.findViewById(R.id.adsail_draw_ad_video);
                o000 o000Var = new o000(hRDrawRootView);
                int i = R.id.adsail_draw_ad_detail_logo;
                TextView textView = (TextView) hRDrawRootView.findViewById(R.id.adsail_draw_ad_detail_title);
                TextView textView2 = (TextView) hRDrawRootView.findViewById(R.id.adsail_draw_ad_detail_desc);
                if (!TextUtils.isEmpty(((NativeAdSlot) HRDrawHRAdWrapper.this.adSlot).getVideo_cover())) {
                    o000Var.o00oO0o(i).o000000(((NativeAdSlot) HRDrawHRAdWrapper.this.adSlot).getIconUrl());
                }
                textView.setText(((NativeAdSlot) HRDrawHRAdWrapper.this.adSlot).getTitle());
                textView2.setText(((NativeAdSlot) HRDrawHRAdWrapper.this.adSlot).getContent());
                final HRDrawAd hRDrawAd = new HRDrawAd(HRDrawHRAdWrapper.this.getAdSlot(), adView);
                if (adView != null) {
                    TouchAdContainer touchAdContainer = new TouchAdContainer(HRDrawHRAdWrapper.this.getContext());
                    touchAdContainer.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                    touchAdContainer.setTouchPositionListener(new TouchPositionListener(nativeAdData));
                    touchAdContainer.addView(adView, -1, -1);
                    nativeAdData.bindMediaView(touchAdContainer, null, new HRAdMediaListenerAdapter(HRDrawHRAdWrapper.this.getContext(), (NativeAdSlot) HRDrawHRAdWrapper.this.adSlot, HRDrawHRAdWrapper.this.recyclerAdMediaListener));
                    if (adView instanceof NormalMediaView) {
                        HRDrawHRAdWrapper.this.getContext().getResources().getDisplayMetrics();
                        ((NormalMediaView) adView).setRecycler(true);
                    }
                    hRDrawRootView.setOnVisibilityChangeListener(new HRDrawRootView.OnVisibilityChangeListener() { // from class: cn.haorui.sdk.platform.hr.draw.HRDrawHRAdWrapper.1.1
                        @Override // cn.haorui.sdk.adsail_ad.draw.HRDrawRootView.OnVisibilityChangeListener
                        public void onVisibility(int i2) {
                            View view = adView;
                            if (view instanceof NormalMediaView) {
                                NormalMediaView normalMediaView = (NormalMediaView) view;
                                if (i2 == 0) {
                                    normalMediaView.resume();
                                } else {
                                    normalMediaView.pause();
                                }
                            }
                        }
                    });
                    frameLayout.addView(touchAdContainer);
                    hRDrawAd.setAdView(hRDrawRootView);
                    touchAdContainer.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.platform.hr.draw.HRDrawHRAdWrapper.1.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (HRDrawHRAdWrapper.this.adSlot != null && ((NativeAdSlot) HRDrawHRAdWrapper.this.adSlot).getCbc() == 0 && hRDrawAd.getInteractionListener() != null) {
                                hRDrawAd.getInteractionListener().onAdClicked();
                            }
                            nativeAdData.setInteractionListener(hRDrawAd.getInteractionListener());
                            ClickHandler.handleClick(nativeAdData);
                        }
                    });
                }
                if (HRDrawHRAdWrapper.this.getLoaderListener() != 0) {
                    ((DrawAdListener) HRDrawHRAdWrapper.this.getLoaderListener()).onAdLoaded(hRDrawAd);
                    ((DrawAdListener) HRDrawHRAdWrapper.this.getLoaderListener()).onAdReady(hRDrawAd);
                }
            }

            @Override // cn.haorui.sdk.adsail_ad.IAdListener
            public void onAdRenderFail(String str, int i) {
            }
        });
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

    @Override // cn.haorui.sdk.core.loader.IAdLoader
    public void loadAd() {
        try {
            if (((NativeAdSlot) this.adSlot).getAdPatternType() == 2) {
                loadVideo();
            } else {
                loadImage();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

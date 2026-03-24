package cn.haorui.sdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import cn.haorui.sdk.R;
import cn.haorui.sdk.adsail_ad.interstitial.InterstitialAdSlot;
import cn.haorui.sdk.adsail_ad.interstitial.NativeInterstitialAd;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.core.ad.IAd;
import cn.haorui.sdk.core.domain.HttpResponse;
import cn.haorui.sdk.core.loader.g;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.DownloadDialogBean;
import cn.haorui.sdk.core.utils.HttpGetBytesCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MemoryUtil;
import cn.haorui.sdk.core.view.gif.GifImageView;
import cn.haorui.sdk.platform.BasePlatformLoader;
import com.anythink.expressad.exoplayer.i.a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.NotNull;
import z2.o000;
import z2.o000O;
import z2.o000O0O0;

/* JADX INFO: loaded from: classes.dex */
public class HRNativeInterstitialActivity extends AppCompatActivity {
    private static final String TAG = "SdkInterstitialActivity";
    private static BasePlatformLoader adWrapper;
    private static IAd msAd;
    private static Object sdkAd;
    private int act_type = 2;
    private ImageView adLogo;
    private LinearLayout adLogoLL;
    private TextView btn;
    private TextView cid;
    private ImageView closeImage;
    private TextView desc;
    private GifImageView imageView;
    private boolean isClickToClose;
    private boolean isDownloadType;
    private boolean isVideoAutoPlay;
    private int layout_height;
    private int layout_type;
    private int layout_width;
    private ImageView logo;
    private RelativeLayout mediaContainer;
    private RelativeLayout rl_container;
    private RelativeLayout rootView;
    private int shakeId;
    private boolean showed;
    private GifImageView startActionShakeImage;
    private TextView title;

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

    private void handleButton() {
        TextView textView;
        String str;
        int i = this.act_type;
        if ((i & 4) == 4) {
            showShakeInButton();
            if (this.isDownloadType) {
                textView = this.btn;
                str = "摇一摇或点击下载三方应用";
            } else {
                textView = this.btn;
                str = "摇一摇或点击查看详情";
            }
        } else if ((i & 8) == 8) {
            showShakeInButton();
            if (this.isDownloadType) {
                textView = this.btn;
                str = "扭一扭或点击下载三方应用";
            } else {
                textView = this.btn;
                str = "扭一扭或点击查看详情";
            }
        } else if (this.isDownloadType) {
            textView = this.btn;
            str = "点击下载三方应用";
        } else {
            textView = this.btn;
            str = "点击查看详情";
        }
        textView.setText(str);
    }

    private void handleDownloadView(final InterstitialAdSlot interstitialAdSlot) {
        try {
            if (interstitialAdSlot.getInteractionType() == 1) {
                TextView textView = (TextView) findViewById(R.id.adsail_download_layer_textview);
                textView.setVisibility(0);
                StringBuilder sb = new StringBuilder();
                if (!TextUtils.isEmpty(interstitialAdSlot.getAppName())) {
                    sb.append("应用名称：");
                    sb.append(interstitialAdSlot.getAppName());
                    sb.append(" | ");
                }
                if (!TextUtils.isEmpty(interstitialAdSlot.getApp_ver())) {
                    sb.append("应用版本：");
                    sb.append(interstitialAdSlot.getApp_ver());
                    sb.append(" | ");
                }
                if (!TextUtils.isEmpty(interstitialAdSlot.getApp_size())) {
                    sb.append("应用大小：");
                    sb.append(interstitialAdSlot.getApp_size());
                    sb.append(" | ");
                }
                if (!TextUtils.isEmpty(interstitialAdSlot.getDeveloper())) {
                    sb.append("开发者：");
                    sb.append(interstitialAdSlot.getDeveloper());
                    sb.append(" | ");
                }
                sb.append(" 权限详情> | 隐私协议 > | 功能介绍 >");
                textView.setText(sb.toString());
                textView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRNativeInterstitialActivity.8
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        try {
                            DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
                            downloadDialogBean.setApp_name(interstitialAdSlot.getAppName());
                            downloadDialogBean.setApp_feature(interstitialAdSlot.getApp_feature());
                            downloadDialogBean.setApp_intro(interstitialAdSlot.getApp_intro());
                            downloadDialogBean.setApp_privacy(interstitialAdSlot.getApp_privacy());
                            downloadDialogBean.setApp_size(interstitialAdSlot.getApp_size());
                            downloadDialogBean.setDeveloper(interstitialAdSlot.getDeveloper());
                            downloadDialogBean.setPayment_types(interstitialAdSlot.getPayment_types());
                            downloadDialogBean.setApp_permission(interstitialAdSlot.getApp_permission());
                            downloadDialogBean.setApp_permission_url(interstitialAdSlot.getApp_permission_url());
                            downloadDialogBean.setApp_intor_url(interstitialAdSlot.getApp_intor_url());
                            downloadDialogBean.setApp_private_agreement(interstitialAdSlot.getPrivacy_agreement());
                            HRDownloadDetailActivity.startActivity(HRNativeInterstitialActivity.this, downloadDialogBean);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void handleMsAd() {
        TextView textView;
        final NativeInterstitialAd nativeInterstitialAd = (NativeInterstitialAd) sdkAd;
        final InterstitialAdSlot adSlot = nativeInterstitialAd.getAdSlot();
        if (nativeInterstitialAd.getInteractionType() == 1) {
            this.isDownloadType = true;
        }
        handleDownloadView(adSlot);
        o000 o000Var = new o000((Activity) this);
        if (this.layout_type == 1) {
            String desc = "";
            if (TextUtils.isEmpty(adSlot.getTitle())) {
                this.title.setVisibility(8);
                this.title.setText("");
            } else {
                this.title.setVisibility(0);
                this.title.setText(adSlot.getTitle());
            }
            if (TextUtils.isEmpty(adSlot.getDesc())) {
                this.desc.setVisibility(8);
                textView = this.desc;
            } else {
                this.desc.setVisibility(0);
                textView = this.desc;
                desc = adSlot.getDesc();
            }
            textView.setText(desc);
            if (TextUtils.isEmpty(adSlot.getIconUrl())) {
                o000Var.o00oO0O(this.logo).o00Ooo();
            } else {
                o000Var.o00oO0O(this.logo).o000000(adSlot.getIconUrl());
            }
        }
        this.adLogoLL.setBackground(getResources().getDrawable(R.drawable.adsail_black_oval_gray));
        if (TextUtils.isEmpty(adSlot.getCid())) {
            this.cid.setVisibility(8);
        } else {
            this.cid.setText(adSlot.getCid());
        }
        if (TextUtils.isEmpty(adSlot.getFromLogo())) {
            o000Var.o00oO0O(this.adLogo).o0OO00O(getResources().getDrawable(R.drawable.adsail_ad));
        } else {
            o000Var.o00oO0O(this.adLogo).o000000(adSlot.getFromLogo());
        }
        if (adSlot.getAdPatternType() == 2) {
            loadNativeVideo(o000Var, adSlot, nativeInterstitialAd);
        } else {
            HttpUtil.asyncGetFile(adSlot.getImageUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.activity.HRNativeInterstitialActivity.2
                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onFailure(@NotNull IOException iOException) {
                }

                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onResponse(HttpResponse<byte[]> httpResponse) {
                    byte[] responseBody;
                    if (!httpResponse.isSuccessful() || (responseBody = httpResponse.getResponseBody()) == null || responseBody.length <= 0) {
                        return;
                    }
                    if (!HRNativeInterstitialActivity.this.isGif(responseBody)) {
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                        if (bitmapDecodeByteArray != null) {
                            HRNativeInterstitialActivity.this.imageView.setImageBitmap(bitmapDecodeByteArray);
                        }
                    } else if (HRNativeInterstitialActivity.this.imageView != null) {
                        try {
                            HRNativeInterstitialActivity.this.imageView.setBytes(responseBody);
                            HRNativeInterstitialActivity.this.imageView.startAnimation();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    nativeInterstitialAd.sendExposure();
                    HRNativeInterstitialActivity.this.startShake(adSlot);
                }
            });
        }
        nativeInterstitialAd.setAdView(this.rootView);
        this.rl_container.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRNativeInterstitialActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HRNativeInterstitialActivity.msAd != null && HRNativeInterstitialActivity.msAd.getInteractionListener() != null && adSlot.getCbc() == 0) {
                    HRNativeInterstitialActivity.msAd.getInteractionListener().onAdClicked();
                }
                ClickHandler.handleClick(nativeInterstitialAd);
                if (HRNativeInterstitialActivity.this.isClickToClose) {
                    HRNativeInterstitialActivity.this.finish();
                }
            }
        });
        this.btn.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRNativeInterstitialActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HRNativeInterstitialActivity.msAd != null && HRNativeInterstitialActivity.msAd.getInteractionListener() != null && adSlot.getCbc() == 0) {
                    HRNativeInterstitialActivity.msAd.getInteractionListener().onAdClicked();
                }
                ClickHandler.handleClick(nativeInterstitialAd);
                if (HRNativeInterstitialActivity.this.isClickToClose) {
                    HRNativeInterstitialActivity.this.finish();
                }
            }
        });
    }

    private void handleSdk() {
        Object obj = sdkAd;
        if (obj != null) {
            try {
                if (obj instanceof NativeInterstitialAd) {
                    handleMsAd();
                    handleButton();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void initView() {
        this.rootView = (RelativeLayout) findViewById(R.id.activity_sdk_interstitial_rootView);
        View viewInflate = View.inflate(this, R.layout.adsail_layout_sdk_interstitial_1, null);
        if (this.layout_type == 2) {
            viewInflate = View.inflate(this, R.layout.adsail_layout_sdk_interstitial_2, null);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.rootView.addView(viewInflate, layoutParams);
        this.startActionShakeImage = (GifImageView) findViewById(R.id.adsail_action_shakeImage);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.adsail_layout_native_interstitial_ll);
        this.mediaContainer = (RelativeLayout) findViewById(R.id.activity_sdk_interstitial_mediaContainer);
        this.imageView = (GifImageView) findViewById(R.id.activity_sdk_interstitial_imageview);
        this.closeImage = (ImageView) findViewById(R.id.activity_sdk_interstitial_cacel);
        this.adLogoLL = (LinearLayout) findViewById(R.id.adsail_activity_sdk_interstitial_adLogoLL);
        this.adLogo = (ImageView) findViewById(R.id.activity_sdk_interstitial_adLogo);
        this.cid = (TextView) findViewById(R.id.layout_native_interstitial_cid);
        this.rl_container = (RelativeLayout) findViewById(R.id.activity_sdk_interstitial_rl_container);
        this.logo = (ImageView) findViewById(R.id.activity_sdk_interstitial_logo);
        this.title = (TextView) findViewById(R.id.activity_sdk_interstitial_title);
        this.desc = (TextView) findViewById(R.id.activity_sdk_interstitial_desc);
        this.btn = (TextView) findViewById(R.id.activity_sdk_interstitial_btn);
        this.closeImage.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRNativeInterstitialActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HRNativeInterstitialActivity.this.finish();
                if (HRNativeInterstitialActivity.adWrapper == null || HRNativeInterstitialActivity.adWrapper.getLoaderListener() == null) {
                    return;
                }
                HRNativeInterstitialActivity.adWrapper.getLoaderListener().onAdClosed();
            }
        });
        if (this.layout_type == 2) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (linearLayout != null) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
                double d = ((double) displayMetrics.widthPixels) * 0.86d;
                layoutParams2.width = (int) d;
                layoutParams2.height = (int) ((d * ((double) this.layout_height)) / ((double) this.layout_width));
                int i = (int) (((double) displayMetrics.heightPixels) * 0.07d);
                layoutParams2.topMargin = i;
                layoutParams2.bottomMargin = i;
                linearLayout.setLayoutParams(layoutParams2);
            }
        }
        handleSdk();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isGif(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        return new BigInteger(1, bArr2).toString(16).startsWith("47494638");
    }

    private void loadNativeVideo(o000 o000Var, final InterstitialAdSlot interstitialAdSlot, final NativeInterstitialAd nativeInterstitialAd) {
        new AtomicBoolean(false);
        o000Var.OooO0Oo(interstitialAdSlot.getImageUrls()[0], File.class, 86400000L, new o000O0O0<File>() { // from class: cn.haorui.sdk.activity.HRNativeInterstitialActivity.6
            @Override // z2.o000OO0O
            public void callback(String str, File file, o000O o000o) {
                String str2;
                boolean z;
                if (200 > o000o.OooOO0o() || 300 <= o000o.OooOO0o()) {
                    str2 = "video code error, code: " + o000o.OooOO0o();
                } else {
                    if (file != null) {
                        z = true;
                        if (z || file.length() >= MemoryUtil.getTraceMemory()) {
                        }
                        NormalMediaView normalMediaView = new NormalMediaView(HRNativeInterstitialActivity.this);
                        normalMediaView.setConfigWidth(interstitialAdSlot.getWidth());
                        normalMediaView.setConfigHeight(interstitialAdSlot.getHeight());
                        normalMediaView.setPlayOnce(true);
                        normalMediaView.mute();
                        normalMediaView.setUseTransform(false);
                        normalMediaView.setDisplayMode(2);
                        normalMediaView.setFromLogoVisibility(8);
                        normalMediaView.setFromLogo(null);
                        normalMediaView.setNativeAdMediaListener(new NativeAdMediaListener() { // from class: cn.haorui.sdk.activity.HRNativeInterstitialActivity.6.1
                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoComplete() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoError() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoLoaded() {
                                LogUtil.e(HRNativeInterstitialActivity.TAG, "onADLoaded");
                                nativeInterstitialAd.sendExposure();
                                AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                HRNativeInterstitialActivity.this.startShake(interstitialAdSlot);
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoMute() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoOneHalf() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoOneQuarter() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoPause() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoReplay() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoResume() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoStart() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoThreeQuarter() {
                            }

                            @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
                            public void onVideoUnmute() {
                            }
                        });
                        HRNativeInterstitialActivity.this.mediaContainer.removeAllViews();
                        HRNativeInterstitialActivity.this.mediaContainer.addView(normalMediaView, -1, -1);
                        normalMediaView.setVideoPath(file.getAbsolutePath());
                        normalMediaView.start();
                        return;
                    }
                    str2 = "video file error, file: null";
                }
                LogUtil.i(HRNativeInterstitialActivity.TAG, str2);
                z = false;
                if (z) {
                }
            }
        });
    }

    public static void setAdWrapper(BasePlatformLoader basePlatformLoader) {
        adWrapper = basePlatformLoader;
    }

    public static void setMsAd(IAd iAd) {
        msAd = iAd;
    }

    public static void setSdkAd(Object obj) {
        sdkAd = obj;
    }

    private void showShakeInButton() {
        Drawable drawable = getResources().getDrawable(R.drawable.adsail_rock_btn);
        drawable.setBounds(0, 0, 100, 100);
        this.btn.setPadding(30, 0, 60, 0);
        this.btn.setCompoundDrawables(drawable, null, null, null);
    }

    private void showStartShakeImage() {
        this.startActionShakeImage.setVisibility(0);
        byte[] imageBytes = getImageBytes(this, R.raw.adsail_new_shake);
        if (imageBytes != null && imageBytes.length > 0) {
            this.startActionShakeImage.setBytes(imageBytes, 1);
            this.startActionShakeImage.startAnimation();
        }
        new Handler().postDelayed(new Runnable() { // from class: cn.haorui.sdk.activity.HRNativeInterstitialActivity.5
            @Override // java.lang.Runnable
            public void run() {
                HRNativeInterstitialActivity.this.startActionShakeImage.clear();
                HRNativeInterstitialActivity.this.startActionShakeImage.setVisibility(8);
            }
        }, a.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startShake(final InterstitialAdSlot interstitialAdSlot) {
        if ((interstitialAdSlot.getAct_type() & 4) == 4 || (interstitialAdSlot.getAct_type() & 8) == 8) {
            int power_index = interstitialAdSlot.getPower_index();
            this.shakeId = g.c.a.b();
            int i = (interstitialAdSlot.getAct_type() & 4) != 4 ? 2 : 1;
            g.c.a.a(interstitialAdSlot.getPosId(), interstitialAdSlot.getLoadedTime(), interstitialAdSlot.getDclk());
            g.c.a.a(power_index, i, interstitialAdSlot.getPower_delay(), interstitialAdSlot.getPower_count(), this.shakeId, interstitialAdSlot.getEcpm(), new g.d() { // from class: cn.haorui.sdk.activity.HRNativeInterstitialActivity.7
                @Override // cn.haorui.sdk.core.loader.g.d
                public void onShake() {
                    if (HRNativeInterstitialActivity.msAd != null && HRNativeInterstitialActivity.msAd.getInteractionListener() != null && interstitialAdSlot.getCbc() == 0) {
                        HRNativeInterstitialActivity.msAd.getInteractionListener().onAdClicked();
                    }
                    ClickHandler.handleClick((NativeInterstitialAd) HRNativeInterstitialActivity.sdkAd);
                    if (HRNativeInterstitialActivity.this.isClickToClose) {
                        HRNativeInterstitialActivity.this.finish();
                    }
                }
            });
            g.c.a.a(true);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.adsail_activity_sdk_interstitial);
        Intent intent = getIntent();
        this.isVideoAutoPlay = intent.getBooleanExtra("isVideoAutoPlay", true);
        this.isClickToClose = intent.getBooleanExtra("isClickToClose", false);
        this.act_type = intent.getIntExtra("act_type", 2);
        this.layout_type = intent.getIntExtra("layout_type", 1);
        this.layout_width = intent.getIntExtra("layout_width", 0);
        this.layout_height = intent.getIntExtra("layout_height", 0);
        initView();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        sdkAd = null;
        adWrapper = null;
        msAd = null;
        g.c.a.a(this.shakeId);
    }
}

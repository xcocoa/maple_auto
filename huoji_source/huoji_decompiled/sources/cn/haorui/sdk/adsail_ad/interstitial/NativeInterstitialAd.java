package cn.haorui.sdk.adsail_ad.interstitial;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.text.TextUtils;
import cn.haorui.sdk.activity.HRNativeInterstitialActivity;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListener;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdLoader;
import cn.haorui.sdk.core.domain.HttpResponse;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.HttpGetBytesCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MacroUtil;
import cn.haorui.sdk.core.utils.RecordUtil;
import cn.haorui.sdk.core.view.gif.GifImageView;
import cn.haorui.sdk.platform.hr.IAdSailAd;
import cn.haorui.sdk.platform.hr.interstitial.HRHRAdNativeWrapper;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.HashMap;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class NativeInterstitialAd extends BaseAd implements IAdSailAd {
    private static final String TAG = "NativeInterstitialAd";
    private IInterstitialAdListener adListener;
    private int height;
    private byte[] imgSrc;
    private int layoutType;
    private boolean showed;
    private int width;
    private HRHRAdNativeWrapper wrapper;

    public NativeInterstitialAd(HRHRAdNativeWrapper hRHRAdNativeWrapper, IInterstitialAdListener iInterstitialAdListener, byte[] bArr) {
        super(null, HRConstants.PLATFORM_HR);
        this.layoutType = 1;
        this.wrapper = hRHRAdNativeWrapper;
        this.adListener = iInterstitialAdListener;
        this.imgSrc = bArr;
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
    public boolean isGif(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        return new BigInteger(1, bArr2).toString(16).startsWith("47494638");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void showNativeAd(final Activity activity) {
        if (this.wrapper == null || activity == null) {
            return;
        }
        if (getAdSlot().getAdPatternType() != 2) {
            HttpUtil.asyncGetFile(getAdSlot().getImageUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.adsail_ad.interstitial.NativeInterstitialAd.1
                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onFailure(@NotNull IOException iOException) {
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onResponse(HttpResponse<byte[]> httpResponse) {
                    int width;
                    int height;
                    if (httpResponse.isSuccessful()) {
                        try {
                            byte[] responseBody = httpResponse.getResponseBody();
                            if (responseBody == null || responseBody.length <= 0) {
                                return;
                            }
                            if (NativeInterstitialAd.this.isGif(responseBody)) {
                                GifImageView gifImageView = new GifImageView(activity);
                                gifImageView.setBytes(responseBody);
                                height = gifImageView.getGifHeight();
                                width = gifImageView.getGifWidth();
                                gifImageView.clear();
                            } else {
                                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                                width = bitmapDecodeByteArray.getWidth();
                                height = bitmapDecodeByteArray.getHeight();
                            }
                            LogUtil.d(NativeInterstitialAd.TAG, "width=" + width + ",height=" + height);
                            if (height > width) {
                                NativeInterstitialAd.this.layoutType = 2;
                            }
                            LogUtil.d(NativeInterstitialAd.TAG, "layout_type=" + NativeInterstitialAd.this.layoutType);
                            HRNativeInterstitialActivity.setSdkAd(NativeInterstitialAd.this);
                            HRNativeInterstitialActivity.setAdWrapper(NativeInterstitialAd.this.wrapper);
                            HRNativeInterstitialActivity.setMsAd(NativeInterstitialAd.this);
                            Intent intent = new Intent(activity, (Class<?>) HRNativeInterstitialActivity.class);
                            intent.putExtra("isClickToClose", ((InterstitialAdLoader) NativeInterstitialAd.this.wrapper.getAdLoader()).getIsClickToClose());
                            intent.putExtra("act_type", NativeInterstitialAd.this.getAdSlot().getAct_type());
                            intent.putExtra("layout_type", NativeInterstitialAd.this.layoutType);
                            intent.putExtra("layout_width", width);
                            intent.putExtra("layout_height", height);
                            activity.startActivity(intent);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                }
            });
            return;
        }
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            LogUtil.e(TAG, "videoUrl=" + getAdSlot().getImageUrls()[0]);
            mediaMetadataRetriever.setDataSource(getAdSlot().getImageUrls()[0], new HashMap());
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime();
            this.height = frameAtTime.getHeight();
            int width = frameAtTime.getWidth();
            this.width = width;
            if (this.height > width) {
                this.layoutType = 2;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        LogUtil.d(TAG, "layout_type=" + this.layoutType);
        HRNativeInterstitialActivity.setSdkAd(this);
        HRNativeInterstitialActivity.setAdWrapper(this.wrapper);
        HRNativeInterstitialActivity.setMsAd(this);
        Intent intent = new Intent(activity, (Class<?>) HRNativeInterstitialActivity.class);
        intent.putExtra("isClickToClose", ((InterstitialAdLoader) this.wrapper.getAdLoader()).getIsClickToClose());
        intent.putExtra("act_type", getAdSlot().getAct_type());
        intent.putExtra("layout_type", this.layoutType);
        intent.putExtra("layout_width", this.width);
        intent.putExtra("layout_height", this.height);
        activity.startActivity(intent);
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public InterstitialAdSlot getAdSlot() {
        return this.wrapper.getAdSlot();
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public AdType getAdType() {
        return AdType.INTERSTITIAL;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public Context getContext() {
        if (getAdView() != null) {
            getAdView().getContext();
        }
        return this.wrapper.getContext();
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public int getInteractionType() {
        return this.wrapper.getAdSlot().getInteractionType();
    }

    public void sendExposure() {
        HRHRAdNativeWrapper hRHRAdNativeWrapper = this.wrapper;
        if (hRHRAdNativeWrapper == null || hRHRAdNativeWrapper.getLoaderListener() == 0 || this.showed) {
            return;
        }
        RecordUtil.saveAction(getAdSlot().getPosId(), 3);
        this.showed = true;
        String[] monitorUrl = getAdSlot().getMonitorUrl();
        if (monitorUrl != null) {
            LogUtil.d(TAG, "send onADExposure");
            for (String str : monitorUrl) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.wrapper.getContext(), MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        ((InterstitialAdListener) this.wrapper.getLoaderListener()).onAdExposure();
    }

    public void showAd() {
        try {
            showNativeAd((Activity) this.wrapper.getContext());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void showAd(Activity activity) {
        try {
            showNativeAd(activity);
        } catch (Throwable th) {
            th.printStackTrace();
            LogUtil.e(TAG, "show ad Error:" + th.toString());
        }
    }
}

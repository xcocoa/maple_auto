package cn.haorui.sdk.platform.hr.recycler;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import cn.haorui.sdk.R;
import cn.haorui.sdk.activity.HRDownloadDetailActivity;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdData;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.ad.BaseAdSlot;
import cn.haorui.sdk.core.ad.prerender.PreRenderAdLoader;
import cn.haorui.sdk.core.ad.recycler.ExpressMediaListener;
import cn.haorui.sdk.core.ad.recycler.IAdExposureListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdLoader;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.HttpResponse;
import cn.haorui.sdk.core.domain.LayoutBean;
import cn.haorui.sdk.core.exception.a;
import cn.haorui.sdk.core.loader.g;
import cn.haorui.sdk.core.utils.AderUtil;
import cn.haorui.sdk.core.utils.CacheUtil;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.DimensionUtils;
import cn.haorui.sdk.core.utils.DownloadDialogBean;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.HttpGetBytesCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MemoryUtil;
import cn.haorui.sdk.core.utils.ResultBean;
import cn.haorui.sdk.core.view.DownloadView;
import cn.haorui.sdk.core.view.RoundImageView;
import cn.haorui.sdk.core.view.TouchAdContainer;
import cn.haorui.sdk.core.view.gif.GifImageView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import z2.o000;
import z2.o000O;
import z2.o000OO00;

/* JADX INFO: loaded from: classes.dex */
public class HRPreRenderAdapter implements RecyclerAdData {
    private static final String TAG = "HRPreRenderAdapter";
    private RelativeLayout adView;
    private HRHRAdNativeWrapper adWrapper;
    private int containerWidth;
    private ExpressMediaListener expressMediaListener;
    private IAdExposureListener iAdExposureListener;
    private OnImgloadSuccessListener imgLoadListener;
    private RecylcerAdInteractionListener interactionListener;
    private boolean isAdExposure;
    private boolean isImageLoad = false;
    private boolean isUpDownStyle;
    private NativeAdData nativeAdData;
    private int shakeId;

    public interface OnImgloadSuccessListener {
        void onImgLoaded(int i);
    }

    public HRPreRenderAdapter(@NonNull HRHRAdNativeWrapper hRHRAdNativeWrapper, @NonNull NativeAdData nativeAdData) {
        this.adWrapper = hRHRAdNativeWrapper;
        this.nativeAdData = nativeAdData;
    }

    private void closeAd(TextView textView, final View view) {
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (HRPreRenderAdapter.this.adWrapper.getLoaderListener() != 0) {
                    ((RecyclerAdListener) HRPreRenderAdapter.this.adWrapper.getLoaderListener()).onAdClosed();
                }
                if (HRPreRenderAdapter.this.interactionListener != null) {
                    HRPreRenderAdapter.this.interactionListener.onAdClosed();
                }
                View view3 = view;
                if (view3 == null || view3.getParent() == null || !(view.getParent() instanceof ViewGroup)) {
                    return;
                }
                ((ViewGroup) view.getParent()).removeView(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] getImageBytes(Context context, int i) {
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

    private void handleDownloadView(Context context, final View view, final BaseAdSlot baseAdSlot) {
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
                textView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.4
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isGif(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        return new BigInteger(1, bArr2).toString(16).startsWith("47494638");
    }

    private void renderStyle(LayoutBean.StyleBean styleBean, RelativeLayout relativeLayout, TextView textView, TextView textView2, RoundImageView roundImageView, TextView textView3, ImageView imageView, TextView textView4, TextView textView5) {
        LayoutBean.StyleBean.BorderBean border;
        try {
            float f = this.adWrapper.getContext().getResources().getDisplayMetrics().density;
            if (styleBean.getContainer() != null && relativeLayout != null) {
                List<Integer> padding = styleBean.getContainer().getPadding();
                if (padding != null && padding.size() >= 4) {
                    relativeLayout.setPadding((int) (padding.get(3).intValue() * f), (int) (padding.get(0).intValue() * f), (int) (padding.get(1).intValue() * f), (int) (padding.get(2).intValue() * f));
                }
                LayoutBean.StyleBean.BorderBean border2 = styleBean.getContainer().getBorder();
                if (border2 != null && border2.getClip() && border2.getRadius() != null && border2.getRadius().size() >= 4) {
                    relativeLayout.setBackground(createRectangleDrawable(border2.getRadius(), 0, ""));
                }
            }
            if (styleBean.getTitle() != null && textView != null) {
                if (styleBean.getTitle().getMargin() != null && styleBean.getTitle().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView.getLayoutParams();
                    marginLayoutParams.topMargin = (int) (styleBean.getTitle().getMargin().get(0).intValue() * f);
                    marginLayoutParams.rightMargin = (int) (styleBean.getTitle().getMargin().get(1).intValue() * f);
                    marginLayoutParams.bottomMargin = (int) (styleBean.getTitle().getMargin().get(2).intValue() * f);
                    marginLayoutParams.leftMargin = (int) (styleBean.getTitle().getMargin().get(3).intValue() * f);
                    textView.setLayoutParams(marginLayoutParams);
                }
                if (styleBean.getTitle().getPadding() != null && styleBean.getTitle().getPadding().size() >= 4) {
                    textView.setPadding((int) (styleBean.getTitle().getPadding().get(3).intValue() * f), (int) (styleBean.getTitle().getPadding().get(0).intValue() * f), (int) (styleBean.getTitle().getPadding().get(1).intValue() * f), (int) (styleBean.getTitle().getPadding().get(2).intValue() * f));
                }
                if (styleBean.getTitle().getText() != null) {
                    if (!TextUtils.isEmpty(styleBean.getTitle().getText().getColor())) {
                        textView.setTextColor(Color.parseColor("#" + styleBean.getTitle().getText().getColor()));
                    }
                    if (styleBean.getTitle().getText().getSize() > 0) {
                        textView.setTextSize(styleBean.getTitle().getText().getSize());
                    }
                    if (styleBean.getTitle().getText().getLines() == 0) {
                        textView.setMaxLines(20);
                    } else {
                        textView.setMaxLines(styleBean.getTitle().getText().getLines());
                    }
                }
            }
            if (styleBean.getContent() != null && textView2 != null) {
                if (styleBean.getContent().getMargin() != null && styleBean.getContent().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) textView2.getLayoutParams();
                    marginLayoutParams2.topMargin = (int) (styleBean.getContent().getMargin().get(0).intValue() * f);
                    marginLayoutParams2.rightMargin = (int) (styleBean.getContent().getMargin().get(1).intValue() * f);
                    marginLayoutParams2.bottomMargin = (int) (styleBean.getContent().getMargin().get(2).intValue() * f);
                    marginLayoutParams2.leftMargin = (int) (styleBean.getContent().getMargin().get(3).intValue() * f);
                    textView2.setLayoutParams(marginLayoutParams2);
                }
                if (styleBean.getContent().getPadding() != null && styleBean.getContent().getPadding().size() >= 4) {
                    textView2.setPadding((int) (styleBean.getContent().getPadding().get(3).intValue() * f), (int) (styleBean.getContent().getPadding().get(0).intValue() * f), (int) (styleBean.getContent().getPadding().get(1).intValue() * f), (int) (styleBean.getContent().getPadding().get(2).intValue() * f));
                }
                if (styleBean.getContent().getText() != null) {
                    if (!TextUtils.isEmpty(styleBean.getContent().getText().getColor())) {
                        textView2.setTextColor(Color.parseColor("#" + styleBean.getContent().getText().getColor()));
                    }
                    if (styleBean.getContent().getText().getSize() > 0) {
                        textView2.setTextSize(styleBean.getContent().getText().getSize());
                    }
                    if (styleBean.getContent().getText().getLines() == 0) {
                        textView.setMaxLines(20);
                    } else {
                        textView.setMaxLines(styleBean.getContent().getText().getLines());
                    }
                }
            }
            if (styleBean.getCreative() != null && roundImageView != null) {
                LayoutBean.StyleBean.BorderBean border3 = styleBean.getCreative().getBorder();
                if (border3 != null && border3.getClip() && border3.getRadius() != null && border3.getRadius().size() >= 4) {
                    roundImageView.setCornerTopLeftRadius((int) (border3.getRadius().get(0).intValue() * f));
                    roundImageView.setCornerTopRightRadius((int) (border3.getRadius().get(1).intValue() * f));
                    roundImageView.setCornerBottomRightRadius((int) (border3.getRadius().get(2).intValue() * f));
                    roundImageView.setCornerBottomLeftRadius((int) (border3.getRadius().get(3).intValue() * f));
                }
                if (styleBean.getCreative().getMargin() != null && styleBean.getCreative().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) roundImageView.getLayoutParams();
                    marginLayoutParams3.topMargin = (int) (styleBean.getCreative().getMargin().get(0).intValue() * f);
                    marginLayoutParams3.rightMargin = (int) (styleBean.getCreative().getMargin().get(1).intValue() * f);
                    marginLayoutParams3.bottomMargin = (int) (styleBean.getCreative().getMargin().get(2).intValue() * f);
                    marginLayoutParams3.leftMargin = (int) (styleBean.getCreative().getMargin().get(3).intValue() * f);
                    roundImageView.setLayoutParams(marginLayoutParams3);
                }
            }
            if (styleBean.getDislike() != null && textView3 != null) {
                if (styleBean.getDislike().isHide()) {
                    textView3.setVisibility(8);
                } else {
                    textView3.setVisibility(0);
                }
                if (styleBean.getDislike().getText() != null) {
                    LayoutBean.StyleBean.TextBean text = styleBean.getDislike().getText();
                    if (text.getSize() > 0) {
                        textView3.setTextSize(text.getSize());
                    }
                    if (!TextUtils.isEmpty(text.getColor())) {
                        textView3.setTextColor(Color.parseColor("#" + text.getColor()));
                    }
                    if (text.getLines() > 0) {
                        textView3.setMaxLines(text.getLines());
                    }
                }
                if (styleBean.getDislike().getMargin() != null && styleBean.getDislike().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) textView3.getLayoutParams();
                    marginLayoutParams4.topMargin = (int) (styleBean.getDislike().getMargin().get(0).intValue() * f);
                    marginLayoutParams4.rightMargin = (int) (styleBean.getDislike().getMargin().get(1).intValue() * f);
                    marginLayoutParams4.bottomMargin = (int) (styleBean.getDislike().getMargin().get(2).intValue() * f);
                    marginLayoutParams4.leftMargin = (int) (styleBean.getDislike().getMargin().get(3).intValue() * f);
                    textView3.setLayoutParams(marginLayoutParams4);
                }
                List<Integer> padding2 = styleBean.getDislike().getPadding();
                if (padding2 != null && padding2.size() >= 4) {
                    textView3.setPadding((int) (padding2.get(3).intValue() * f), (int) (padding2.get(0).intValue() * f), (int) (padding2.get(1).intValue() * f), (int) (padding2.get(2).intValue() * f));
                }
                LayoutBean.StyleBean.BorderBean border4 = styleBean.getDislike().getBorder();
                if (border4 != null) {
                    textView3.setBackground(createRectangleDrawable(border4.getRadius(), styleBean.getDislike().getBorder().getSize(), "#" + styleBean.getDislike().getBorder().getColor()));
                }
            }
            if (styleBean.getLogo() != null && imageView != null) {
                if (styleBean.getLogo().isHide()) {
                    imageView.setVisibility(8);
                } else if (AdSdk.adConfig().showLogo()) {
                    imageView.setVisibility(0);
                }
                if (styleBean.getLogo().getMargin() != null && styleBean.getLogo().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams5 = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                    marginLayoutParams5.topMargin = (int) (styleBean.getLogo().getMargin().get(0).intValue() * f);
                    marginLayoutParams5.rightMargin = (int) (styleBean.getLogo().getMargin().get(1).intValue() * f);
                    marginLayoutParams5.bottomMargin = (int) (styleBean.getLogo().getMargin().get(2).intValue() * f);
                    marginLayoutParams5.leftMargin = (int) (styleBean.getLogo().getMargin().get(3).intValue() * f);
                    imageView.setLayoutParams(marginLayoutParams5);
                }
            }
            if (styleBean.getSource() != null && textView4 != null) {
                if (styleBean.getSource().isHide()) {
                    textView4.setVisibility(8);
                } else {
                    textView4.setVisibility(0);
                }
                if (styleBean.getSource().getMargin() != null && styleBean.getSource().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams6 = (ViewGroup.MarginLayoutParams) textView4.getLayoutParams();
                    marginLayoutParams6.topMargin = (int) (styleBean.getSource().getMargin().get(0).intValue() * f);
                    marginLayoutParams6.rightMargin = (int) (styleBean.getSource().getMargin().get(1).intValue() * f);
                    marginLayoutParams6.bottomMargin = (int) (styleBean.getSource().getMargin().get(2).intValue() * f);
                    marginLayoutParams6.leftMargin = (int) (styleBean.getSource().getMargin().get(3).intValue() * f);
                    textView4.setLayoutParams(marginLayoutParams6);
                }
                List<Integer> padding3 = styleBean.getSource().getPadding();
                if (padding3 != null && padding3.size() >= 4) {
                    textView4.setPadding((int) (padding3.get(3).intValue() * f), (int) (padding3.get(0).intValue() * f), (int) (padding3.get(1).intValue() * f), (int) (padding3.get(2).intValue() * f));
                }
                if (styleBean.getSource().getText() != null) {
                    LayoutBean.StyleBean.TextBean text2 = styleBean.getSource().getText();
                    if (text2.getSize() > 0) {
                        textView4.setTextSize(text2.getSize());
                    }
                    if (!TextUtils.isEmpty(text2.getColor())) {
                        textView4.setTextColor(Color.parseColor("#" + text2.getColor()));
                    }
                }
            }
            if (styleBean.getButton() == null || textView5 == null) {
                return;
            }
            if (styleBean.getButton().getMargin() != null && styleBean.getButton().getMargin().size() >= 4) {
                ViewGroup.MarginLayoutParams marginLayoutParams7 = (ViewGroup.MarginLayoutParams) textView5.getLayoutParams();
                marginLayoutParams7.topMargin = (int) (styleBean.getButton().getMargin().get(0).intValue() * f);
                marginLayoutParams7.rightMargin = (int) (styleBean.getButton().getMargin().get(1).intValue() * f);
                marginLayoutParams7.bottomMargin = (int) (styleBean.getButton().getMargin().get(2).intValue() * f);
                marginLayoutParams7.leftMargin = (int) (styleBean.getButton().getMargin().get(3).intValue() * f);
                textView5.setLayoutParams(marginLayoutParams7);
            }
            List<Integer> padding4 = styleBean.getButton().getPadding();
            if (padding4 != null && padding4.size() >= 4) {
                textView5.setPadding((int) (padding4.get(3).intValue() * f), (int) (padding4.get(0).intValue() * f), (int) (padding4.get(1).intValue() * f), (int) (padding4.get(2).intValue() * f));
            }
            if (styleBean.getButton().getText() != null) {
                LayoutBean.StyleBean.TextBean text3 = styleBean.getButton().getText();
                if (text3.getSize() > 0) {
                    textView5.setTextSize(text3.getSize());
                }
                if (!TextUtils.isEmpty(text3.getColor())) {
                    textView5.setTextColor(Color.parseColor("#" + text3.getColor()));
                }
            }
            if (styleBean.getButton().getBorder() == null || (border = styleBean.getButton().getBorder()) == null || border.getRadius() == null || border.getRadius().size() < 4) {
                return;
            }
            textView5.setBackground(createRectangleDrawable(border.getRadius(), styleBean.getButton().getBorder().getSize(), "#" + styleBean.getButton().getBorder().getColor()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAdError(int i, String str) {
        if (this.adWrapper.getLoaderListener() != 0) {
            ((RecyclerAdListener) this.adWrapper.getLoaderListener()).onAdRenderFail(str, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showLeftRightStyle(final Context context, LayoutBean.StyleBean styleBean, int i, int i2, int i3, int i4) {
        String str;
        View viewInflate = View.inflate(context, R.layout.adsail_item_pre_render_smallimage, null);
        final float f = context.getResources().getDisplayMetrics().density;
        if (styleBean != null && styleBean.getType() == 401) {
            viewInflate = View.inflate(context, R.layout.adsail_item_pre_render_smallimage_left, null);
        }
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.adsail_item_pre_render_smallimage_rootView);
        this.adView = relativeLayout;
        if (relativeLayout != null) {
            relativeLayout.setPadding(i, i2, i3, i4);
        }
        final RoundImageView roundImageView = (RoundImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_smallimage_imageview);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_smallimage_logo);
        TextView textView = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_smallimage_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_smallimage_content);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_smallimage_fromtext);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_smallimage_close);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_smallimage_shake_image);
        RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.adsail_shakeRoot);
        GifImageView gifImageView = (GifImageView) viewInflate.findViewById(R.id.adsail_shake_img);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.adsail_shake_text);
        textView.setText(this.nativeAdData.getAdSlot().getTitle());
        textView2.setText(this.nativeAdData.getAdSlot().getContent());
        textView3.setText(this.nativeAdData.getAdSlot().getIconTitle());
        if ((this.nativeAdData.getAdSlot().getAct_type() & 4) != 4) {
            if ((this.nativeAdData.getAdSlot().getAct_type() & 8) == 8) {
                showStartShakeImage(context, relativeLayout2, gifImageView);
                imageView2.setVisibility(0);
                str = "扭一扭";
            }
            HttpUtil.asyncGetFile(this.nativeAdData.getImgUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.6
                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onFailure(@NotNull IOException iOException) {
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onResponse(HttpResponse<byte[]> httpResponse) {
                    int width;
                    int i5;
                    if (!httpResponse.isSuccessful()) {
                        HRPreRenderAdapter.this.sendAdError(httpResponse.getErrorCode(), httpResponse.getErrorDescription());
                        return;
                    }
                    byte[] responseBody = httpResponse.getResponseBody();
                    if (responseBody == null || responseBody.length <= 0) {
                        HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载错误");
                        return;
                    }
                    if (responseBody.length >= MemoryUtil.getTraceMemory()) {
                        HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载失败");
                        return;
                    }
                    if (HRPreRenderAdapter.this.isGif(responseBody)) {
                        RoundImageView roundImageView2 = roundImageView;
                        if (roundImageView2 != null) {
                            roundImageView2.setBytes(responseBody);
                            int gifWidth = roundImageView.getGifWidth();
                            int gifHeight = roundImageView.getGifHeight();
                            int iDip2px = HRPreRenderAdapter.this.adWrapper.getAdLoader() instanceof PreRenderAdLoader ? (int) DimensionUtils.dip2px(context, ((PreRenderAdLoader) HRPreRenderAdapter.this.adWrapper.getAdLoader()).getFixedHeight()) : 0;
                            LogUtil.i(HRPreRenderAdapter.TAG, "fixedHeight=" + iDip2px);
                            int i6 = (int) (f * 75.0f);
                            if (iDip2px > 0) {
                                i5 = (gifWidth * iDip2px) / gifHeight;
                            } else {
                                i5 = (gifWidth * i6) / gifHeight;
                                iDip2px = i6;
                            }
                            ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
                            layoutParams.width = i5;
                            layoutParams.height = iDip2px;
                            roundImageView.setLayoutParams(layoutParams);
                            roundImageView.startAnimation();
                        }
                    } else {
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                        if (bitmapDecodeByteArray != null) {
                            int iDip2px2 = HRPreRenderAdapter.this.adWrapper.getAdLoader() instanceof PreRenderAdLoader ? (int) DimensionUtils.dip2px(context, ((PreRenderAdLoader) HRPreRenderAdapter.this.adWrapper.getAdLoader()).getFixedHeight()) : 0;
                            LogUtil.i(HRPreRenderAdapter.TAG, "fixedHeight=" + iDip2px2);
                            int i7 = (int) (f * 75.0f);
                            if (iDip2px2 > 0) {
                                width = (bitmapDecodeByteArray.getWidth() * iDip2px2) / bitmapDecodeByteArray.getHeight();
                            } else {
                                width = (bitmapDecodeByteArray.getWidth() * i7) / bitmapDecodeByteArray.getHeight();
                                iDip2px2 = i7;
                            }
                            ViewGroup.LayoutParams layoutParams2 = roundImageView.getLayoutParams();
                            layoutParams2.width = width;
                            layoutParams2.height = iDip2px2;
                            roundImageView.setLayoutParams(layoutParams2);
                            roundImageView.setImageBitmap(bitmapDecodeByteArray);
                        } else {
                            HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载失败");
                        }
                    }
                    if (HRPreRenderAdapter.this.imgLoadListener == null || HRPreRenderAdapter.this.isImageLoad) {
                        return;
                    }
                    HRPreRenderAdapter.this.isImageLoad = true;
                    HRPreRenderAdapter.this.imgLoadListener.onImgLoaded(0);
                }
            });
            showLogo(imageView);
            closeAd(textView4, viewInflate);
            if (styleBean == null) {
                if (styleBean.getType() == 301 || styleBean.getType() == 401) {
                    renderStyle(styleBean, this.adView, textView, textView2, roundImageView, textView4, imageView, textView3, null);
                    return;
                }
                return;
            }
            return;
        }
        showStartShakeImage(context, relativeLayout2, gifImageView);
        imageView2.setVisibility(0);
        str = "摇一摇";
        textView5.setText(str);
        HttpUtil.asyncGetFile(this.nativeAdData.getImgUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.6
            @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
            public void onFailure(@NotNull IOException iOException) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
            public void onResponse(HttpResponse<byte[]> httpResponse) {
                int width;
                int i5;
                if (!httpResponse.isSuccessful()) {
                    HRPreRenderAdapter.this.sendAdError(httpResponse.getErrorCode(), httpResponse.getErrorDescription());
                    return;
                }
                byte[] responseBody = httpResponse.getResponseBody();
                if (responseBody == null || responseBody.length <= 0) {
                    HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载错误");
                    return;
                }
                if (responseBody.length >= MemoryUtil.getTraceMemory()) {
                    HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载失败");
                    return;
                }
                if (HRPreRenderAdapter.this.isGif(responseBody)) {
                    RoundImageView roundImageView2 = roundImageView;
                    if (roundImageView2 != null) {
                        roundImageView2.setBytes(responseBody);
                        int gifWidth = roundImageView.getGifWidth();
                        int gifHeight = roundImageView.getGifHeight();
                        int iDip2px = HRPreRenderAdapter.this.adWrapper.getAdLoader() instanceof PreRenderAdLoader ? (int) DimensionUtils.dip2px(context, ((PreRenderAdLoader) HRPreRenderAdapter.this.adWrapper.getAdLoader()).getFixedHeight()) : 0;
                        LogUtil.i(HRPreRenderAdapter.TAG, "fixedHeight=" + iDip2px);
                        int i6 = (int) (f * 75.0f);
                        if (iDip2px > 0) {
                            i5 = (gifWidth * iDip2px) / gifHeight;
                        } else {
                            i5 = (gifWidth * i6) / gifHeight;
                            iDip2px = i6;
                        }
                        ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
                        layoutParams.width = i5;
                        layoutParams.height = iDip2px;
                        roundImageView.setLayoutParams(layoutParams);
                        roundImageView.startAnimation();
                    }
                } else {
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                    if (bitmapDecodeByteArray != null) {
                        int iDip2px2 = HRPreRenderAdapter.this.adWrapper.getAdLoader() instanceof PreRenderAdLoader ? (int) DimensionUtils.dip2px(context, ((PreRenderAdLoader) HRPreRenderAdapter.this.adWrapper.getAdLoader()).getFixedHeight()) : 0;
                        LogUtil.i(HRPreRenderAdapter.TAG, "fixedHeight=" + iDip2px2);
                        int i7 = (int) (f * 75.0f);
                        if (iDip2px2 > 0) {
                            width = (bitmapDecodeByteArray.getWidth() * iDip2px2) / bitmapDecodeByteArray.getHeight();
                        } else {
                            width = (bitmapDecodeByteArray.getWidth() * i7) / bitmapDecodeByteArray.getHeight();
                            iDip2px2 = i7;
                        }
                        ViewGroup.LayoutParams layoutParams2 = roundImageView.getLayoutParams();
                        layoutParams2.width = width;
                        layoutParams2.height = iDip2px2;
                        roundImageView.setLayoutParams(layoutParams2);
                        roundImageView.setImageBitmap(bitmapDecodeByteArray);
                    } else {
                        HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载失败");
                    }
                }
                if (HRPreRenderAdapter.this.imgLoadListener == null || HRPreRenderAdapter.this.isImageLoad) {
                    return;
                }
                HRPreRenderAdapter.this.isImageLoad = true;
                HRPreRenderAdapter.this.imgLoadListener.onImgLoaded(0);
            }
        });
        showLogo(imageView);
        closeAd(textView4, viewInflate);
        if (styleBean == null) {
        }
    }

    private void showLogo(ImageView imageView) {
        if (!TextUtils.isEmpty(this.nativeAdData.getAdSlot().getFromLogo())) {
            new o000(imageView).o00000o0(this.nativeAdData.getAdSlot().getFromLogo(), false, true, 0, -1, new o000OO00() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.10
                @Override // z2.o000OO00
                public void callback(String str, ImageView imageView2, Bitmap bitmap, o000O o000o) {
                    if (200 > o000o.OooOO0o() || 300 <= o000o.OooOO0o() || bitmap.isRecycled() || 5 > bitmap.getWidth() || 5 > bitmap.getHeight()) {
                        return;
                    }
                    imageView2.setImageBitmap(bitmap);
                }
            });
        }
        imageView.setVisibility(AdSdk.adConfig().showLogo() ? 0 : 8);
    }

    private void showStartShakeImage(final Context context, final RelativeLayout relativeLayout, final GifImageView gifImageView) {
        this.adView.postDelayed(new Runnable() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.11
            @Override // java.lang.Runnable
            public void run() {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                int measuredHeight = HRPreRenderAdapter.this.adView.getMeasuredHeight();
                if (measuredHeight < displayMetrics.density * 120.0f) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                    layoutParams.height = Math.max(measuredHeight - 70, (int) (displayMetrics.density * 70.0f));
                    layoutParams.width = -2;
                    relativeLayout.setLayoutParams(layoutParams);
                }
                relativeLayout.setVisibility(0);
                byte[] imageBytes = HRPreRenderAdapter.this.getImageBytes(context, R.raw.adsail_new_shake);
                if (imageBytes != null && imageBytes.length > 0) {
                    gifImageView.setBytes(imageBytes, 1);
                    gifImageView.startAnimation();
                }
                relativeLayout.postDelayed(new Runnable() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        gifImageView.clear();
                        relativeLayout.setVisibility(8);
                    }
                }, com.anythink.expressad.exoplayer.i.a.f);
            }
        }, 500L);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showThreeImageStyle(Context context, LayoutBean.StyleBean styleBean, int i, int i2, int i3, int i4) {
        String str;
        int i5;
        TextView textView;
        int i6;
        int i7;
        int iIntValue;
        int i8;
        TextView textView2;
        ImageView imageView;
        TextView textView3;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Context context2 = context;
        float f = context.getResources().getDisplayMetrics().density;
        if (this.nativeAdData.getImgUrls() == null || this.nativeAdData.getImgUrls().length <= 0) {
            return;
        }
        View viewInflate = View.inflate(context2, R.layout.adsail_item_pre_render_three_img, null);
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.adsail_item_pre_render_three_img_container);
        this.adView = relativeLayout;
        relativeLayout.setPadding(i, i2, i3, i4);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_three_img_title);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_three_img_close);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_three_img_logo);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_three_img_fromtext);
        TextView textView7 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_three_img_type);
        ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_three_shake_image);
        RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.adsail_shakeRoot);
        GifImageView gifImageView = (GifImageView) viewInflate.findViewById(R.id.adsail_shake_img);
        TextView textView8 = (TextView) viewInflate.findViewById(R.id.adsail_shake_text);
        if ((this.nativeAdData.getAdSlot().getAct_type() & 4) != 4) {
            if ((this.nativeAdData.getAdSlot().getAct_type() & 8) == 8) {
                showStartShakeImage(context2, relativeLayout2, gifImageView);
                imageView3.setVisibility(0);
                str = "扭一扭";
            }
            textView4.setText(this.nativeAdData.getTitle());
            textView6.setText(this.nativeAdData.getAdSlot().getIconTitle());
            textView7.setText(getInteractionType() != 0 ? "点击浏览" : "点击下载");
            showLogo(imageView2);
            closeAd(textView5, viewInflate);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.adsail_item_pre_render_three_img_containerll);
            i5 = 0;
            int i17 = 0;
            while (i5 < this.nativeAdData.getImgUrls().length) {
                String str2 = this.nativeAdData.getImgUrls()[i5];
                if (TextUtils.isEmpty(str2)) {
                    textView3 = textView5;
                    imageView = imageView2;
                    textView2 = textView6;
                    textView = textView7;
                } else {
                    final RoundImageView roundImageView = new RoundImageView(context2);
                    roundImageView.setAdjustViewBounds(true);
                    roundImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    if (styleBean == null || styleBean.getCreatives() == null) {
                        textView = textView7;
                        i6 = 0;
                        i7 = 0;
                        iIntValue = 0;
                        i8 = 5;
                    } else {
                        if (i5 != 0 || styleBean.getCreatives().getChilds().getLeft().getMargin().size() < 4) {
                            i9 = 0;
                            i10 = 5;
                            i11 = 1;
                            i12 = 0;
                            i13 = 0;
                        } else {
                            LayoutBean.StyleBean.CreativeBean5.ChildsBean.ChildBean left = styleBean.getCreatives().getChilds().getLeft();
                            int iIntValue2 = left.getMargin().get(3).intValue();
                            int iIntValue3 = left.getMargin().get(0).intValue();
                            int iIntValue4 = left.getMargin().get(1).intValue();
                            int iIntValue5 = left.getMargin().get(2).intValue();
                            LayoutBean.StyleBean.BorderBean border = styleBean.getCreatives().getChilds().getLeft().getBorder();
                            if (border == null || !border.getClip() || border.getRadius() == null) {
                                i13 = iIntValue4;
                                i12 = iIntValue5;
                            } else {
                                i13 = iIntValue4;
                                i12 = iIntValue5;
                                if (border.getRadius().size() >= 4) {
                                    roundImageView.setCornerTopLeftRadius((int) (border.getRadius().get(0).intValue() * f));
                                    roundImageView.setCornerTopRightRadius((int) (border.getRadius().get(1).intValue() * f));
                                    roundImageView.setCornerBottomRightRadius((int) (border.getRadius().get(2).intValue() * f));
                                    roundImageView.setCornerBottomLeftRadius((int) (border.getRadius().get(3).intValue() * f));
                                }
                            }
                            i9 = iIntValue3;
                            i10 = iIntValue2;
                            i11 = 1;
                        }
                        if (i5 != i11 || styleBean.getCreatives().getChilds().getCenter().getMargin().size() < 4) {
                            iIntValue = i9;
                            i14 = 2;
                            int i18 = i13;
                            i15 = i12;
                            i16 = i18;
                        } else {
                            LayoutBean.StyleBean.CreativeBean5.ChildsBean.ChildBean center = styleBean.getCreatives().getChilds().getCenter();
                            int iIntValue6 = center.getMargin().get(3).intValue();
                            iIntValue = center.getMargin().get(0).intValue();
                            int iIntValue7 = center.getMargin().get(1).intValue();
                            int iIntValue8 = center.getMargin().get(2).intValue();
                            LayoutBean.StyleBean.BorderBean border2 = styleBean.getCreatives().getChilds().getCenter().getBorder();
                            if (border2 == null || !border2.getClip() || border2.getRadius() == null) {
                                i15 = iIntValue8;
                                i16 = iIntValue7;
                            } else {
                                i15 = iIntValue8;
                                i16 = iIntValue7;
                                if (border2.getRadius().size() >= 4) {
                                    roundImageView.setCornerTopLeftRadius((int) (border2.getRadius().get(0).intValue() * f));
                                    roundImageView.setCornerTopRightRadius((int) (border2.getRadius().get(1).intValue() * f));
                                    roundImageView.setCornerBottomRightRadius((int) (border2.getRadius().get(2).intValue() * f));
                                    roundImageView.setCornerBottomLeftRadius((int) (border2.getRadius().get(3).intValue() * f));
                                }
                            }
                            i10 = iIntValue6;
                            i14 = 2;
                        }
                        if (i5 != i14 || styleBean.getCreatives().getChilds().getRight().getMargin().size() < 4) {
                            textView = textView7;
                            i8 = i10;
                        } else {
                            LayoutBean.StyleBean.CreativeBean5.ChildsBean.ChildBean right = styleBean.getCreatives().getChilds().getRight();
                            int iIntValue9 = right.getMargin().get(3).intValue();
                            iIntValue = right.getMargin().get(0).intValue();
                            int iIntValue10 = right.getMargin().get(1).intValue();
                            int iIntValue11 = right.getMargin().get(2).intValue();
                            LayoutBean.StyleBean.BorderBean border3 = styleBean.getCreatives().getChilds().getRight().getBorder();
                            if (border3 == null || !border3.getClip() || border3.getRadius() == null) {
                                i15 = iIntValue11;
                                i16 = iIntValue10;
                            } else {
                                i15 = iIntValue11;
                                i16 = iIntValue10;
                                if (border3.getRadius().size() >= 4) {
                                    roundImageView.setCornerTopLeftRadius((int) (border3.getRadius().get(0).intValue() * f));
                                    roundImageView.setCornerTopRightRadius((int) (border3.getRadius().get(1).intValue() * f));
                                    roundImageView.setCornerBottomRightRadius((int) (border3.getRadius().get(2).intValue() * f));
                                    roundImageView.setCornerBottomLeftRadius((int) (border3.getRadius().get(3).intValue() * f));
                                }
                            }
                            i8 = iIntValue9;
                            textView = textView7;
                        }
                        i7 = i16;
                        i6 = i15;
                    }
                    textView2 = textView6;
                    imageView = imageView2;
                    textView3 = textView5;
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
                    int i19 = i17 + 1;
                    if (i17 > 0) {
                        layoutParams.setMargins((int) (i8 * f), (int) (iIntValue * f), (int) (i7 * f), (int) (i6 * f));
                    }
                    linearLayout.addView(roundImageView, layoutParams);
                    if (i5 == this.nativeAdData.getImgUrls().length - 1) {
                        this.isImageLoad = true;
                    } else {
                        this.isImageLoad = false;
                    }
                    HttpUtil.asyncGetFile(str2, new HttpGetBytesCallback() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.7
                        @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                        public void onFailure(@NotNull IOException iOException) {
                        }

                        @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                        public void onResponse(HttpResponse<byte[]> httpResponse) {
                            if (!httpResponse.isSuccessful()) {
                                HRPreRenderAdapter.this.sendAdError(httpResponse.getErrorCode(), httpResponse.getErrorDescription());
                                return;
                            }
                            try {
                                byte[] responseBody = httpResponse.getResponseBody();
                                if (responseBody == null || responseBody.length <= 0) {
                                    HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载错误");
                                    return;
                                }
                                if (responseBody.length >= MemoryUtil.getTraceMemory()) {
                                    HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载失败");
                                    return;
                                }
                                int height = 0;
                                if (HRPreRenderAdapter.this.isGif(responseBody)) {
                                    RoundImageView roundImageView2 = roundImageView;
                                    if (roundImageView2 != null) {
                                        roundImageView2.setBytes(responseBody);
                                        roundImageView.startAnimation();
                                        height = roundImageView.getGifHeight();
                                    }
                                } else {
                                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                                    if (bitmapDecodeByteArray != null) {
                                        height = bitmapDecodeByteArray.getHeight();
                                        roundImageView.setImageBitmap(bitmapDecodeByteArray);
                                    } else {
                                        HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载错误");
                                    }
                                }
                                if (HRPreRenderAdapter.this.imgLoadListener == null || !HRPreRenderAdapter.this.isImageLoad) {
                                    return;
                                }
                                HRPreRenderAdapter.this.imgLoadListener.onImgLoaded(height);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    });
                    i17 = i19;
                }
                i5++;
                context2 = context;
                textView7 = textView;
                textView6 = textView2;
                imageView2 = imageView;
                textView5 = textView3;
            }
            TextView textView9 = textView5;
            ImageView imageView4 = imageView2;
            TextView textView10 = textView6;
            TextView textView11 = textView7;
            if (styleBean == null && styleBean.getType() == 501) {
                renderStyle(styleBean, this.adView, textView4, null, null, textView9, imageView4, textView10, textView11);
                return;
            }
        }
        showStartShakeImage(context2, relativeLayout2, gifImageView);
        imageView3.setVisibility(0);
        str = "摇一摇";
        textView8.setText(str);
        textView4.setText(this.nativeAdData.getTitle());
        textView6.setText(this.nativeAdData.getAdSlot().getIconTitle());
        textView7.setText(getInteractionType() != 0 ? "点击浏览" : "点击下载");
        showLogo(imageView2);
        closeAd(textView5, viewInflate);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.adsail_item_pre_render_three_img_containerll);
        i5 = 0;
        int i172 = 0;
        while (i5 < this.nativeAdData.getImgUrls().length) {
        }
        TextView textView92 = textView5;
        ImageView imageView42 = imageView2;
        TextView textView102 = textView6;
        TextView textView112 = textView7;
        if (styleBean == null) {
        }
    }

    private void showUpDownStyle(Context context, LayoutBean.StyleBean styleBean, int i, int i2, int i3, int i4) {
        int i5;
        final RoundImageView roundImageView;
        View viewInflate = View.inflate(context, R.layout.adsail_item_pre_render_large_image, null);
        if (styleBean != null && styleBean.getType() == 201) {
            viewInflate = View.inflate(context, R.layout.adsail_item_pre_render_large_image_top, null);
        }
        this.isUpDownStyle = true;
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_rootview);
        this.adView = relativeLayout;
        relativeLayout.setPadding(i, i2, i3, i4);
        TextView textView = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_content);
        RoundImageView roundImageView2 = (RoundImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_imageview);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_logo);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_fromtext);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_close);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_shake_image);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_shake_text);
        RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.adsail_shakeRoot);
        GifImageView gifImageView = (GifImageView) viewInflate.findViewById(R.id.adsail_shake_img);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.adsail_shake_text);
        View view = viewInflate;
        if ((this.nativeAdData.getAdSlot().getAct_type() & 4) == 4) {
            showStartShakeImage(context, relativeLayout2, gifImageView);
            i5 = 0;
            imageView2.setVisibility(0);
            textView5.setVisibility(0);
            textView5.setText("摇一摇");
            textView6.setText("摇一摇");
        } else if ((this.nativeAdData.getAdSlot().getAct_type() & 8) == 8) {
            showStartShakeImage(context, relativeLayout2, gifImageView);
            i5 = 0;
            imageView2.setVisibility(0);
            textView5.setVisibility(0);
            textView5.setText("扭一扭");
            textView6.setText("扭一扭");
        } else {
            i5 = 0;
        }
        if ((this.nativeAdData.getAdSlot().getAct_type() & 4) == 4) {
            imageView2.setVisibility(i5);
            textView5.setVisibility(i5);
            textView5.setText("摇一摇");
        } else if ((this.nativeAdData.getAdSlot().getAct_type() & 8) == 8) {
            imageView2.setVisibility(i5);
            textView5.setVisibility(i5);
            textView5.setText("扭一扭");
        }
        textView.setText(this.nativeAdData.getAdSlot().getTitle());
        textView2.setText(this.nativeAdData.getAdSlot().getContent());
        textView3.setText(this.nativeAdData.getAdSlot().getIconTitle());
        if (this.nativeAdData.getImgUrls() == null || this.nativeAdData.getImgUrls().length <= 0 || TextUtils.isEmpty(this.nativeAdData.getImgUrls()[0])) {
            roundImageView = roundImageView2;
        } else {
            final int i6 = (context.getResources().getDisplayMetrics().widthPixels - i) - i3;
            roundImageView = roundImageView2;
            HttpUtil.asyncGetFile(this.nativeAdData.getImgUrls()[0], new HttpGetBytesCallback() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.8
                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onFailure(@NotNull IOException iOException) {
                }

                @Override // cn.haorui.sdk.core.utils.HttpGetBytesCallback
                public void onResponse(HttpResponse<byte[]> httpResponse) {
                    if (!httpResponse.isSuccessful()) {
                        HRPreRenderAdapter.this.sendAdError(httpResponse.getErrorCode(), httpResponse.getErrorDescription());
                        return;
                    }
                    byte[] responseBody = httpResponse.getResponseBody();
                    if (responseBody == null || responseBody.length <= 0) {
                        HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载错误");
                        return;
                    }
                    if (responseBody.length >= MemoryUtil.getTraceMemory()) {
                        HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载失败");
                        return;
                    }
                    int height = 0;
                    if (HRPreRenderAdapter.this.isGif(responseBody)) {
                        RoundImageView roundImageView3 = roundImageView;
                        if (roundImageView3 != null) {
                            roundImageView3.setBytes(responseBody);
                            height = (i6 * roundImageView.getGifHeight()) / roundImageView.getGifWidth();
                            ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
                            layoutParams.width = -1;
                            layoutParams.height = height;
                            roundImageView.setLayoutParams(layoutParams);
                            roundImageView.startAnimation();
                        }
                    } else {
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                        if (bitmapDecodeByteArray != null) {
                            height = (i6 * bitmapDecodeByteArray.getHeight()) / bitmapDecodeByteArray.getWidth();
                            ViewGroup.LayoutParams layoutParams2 = roundImageView.getLayoutParams();
                            layoutParams2.width = -1;
                            layoutParams2.height = height;
                            roundImageView.setLayoutParams(layoutParams2);
                            roundImageView.setImageBitmap(bitmapDecodeByteArray);
                        } else {
                            HRPreRenderAdapter.this.sendAdError(a.a.intValue(), "图片加载失败");
                        }
                    }
                    if (HRPreRenderAdapter.this.imgLoadListener == null || HRPreRenderAdapter.this.isImageLoad) {
                        return;
                    }
                    HRPreRenderAdapter.this.isImageLoad = true;
                    HRPreRenderAdapter.this.imgLoadListener.onImgLoaded(height);
                }
            });
        }
        showLogo(imageView);
        closeAd(textView4, view);
        if (styleBean != null) {
            if (styleBean.getType() == 101 || styleBean.getType() == 201) {
                renderStyle(styleBean, this.adView, textView, textView2, roundImageView, textView4, imageView, textView3, null);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showVideoStyle(Context context, LayoutBean.StyleBean styleBean, int i, int i2, int i3, int i4) {
        int i5;
        View viewInflate = View.inflate(context, R.layout.adsail_item_pre_render_large_image, null);
        if (styleBean != null && styleBean.getType() == 201) {
            viewInflate = View.inflate(context, R.layout.adsail_item_pre_render_large_image_top, null);
        }
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_rootview);
        this.adView = relativeLayout;
        relativeLayout.setPadding(i, i2, i3, i4);
        RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_videocontainer);
        TextView textView = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_content);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_imageview);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_logo);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_fromtext);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_close);
        textView.setText(this.nativeAdData.getAdSlot().getTitle());
        textView2.setText(this.nativeAdData.getAdSlot().getContent());
        textView3.setText(this.nativeAdData.getAdSlot().getIconTitle());
        imageView.setVisibility(8);
        ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_shake_image);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.adsail_item_pre_render_large_iamge_shake_text);
        RelativeLayout relativeLayout3 = (RelativeLayout) viewInflate.findViewById(R.id.adsail_shakeRoot);
        GifImageView gifImageView = (GifImageView) viewInflate.findViewById(R.id.adsail_shake_img);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.adsail_shake_text);
        if ((this.nativeAdData.getAdSlot().getAct_type() & 4) != 4) {
            if ((this.nativeAdData.getAdSlot().getAct_type() & 8) == 8) {
                showStartShakeImage(context, relativeLayout3, gifImageView);
                i5 = 0;
                imageView3.setVisibility(0);
                textView5.setVisibility(0);
                textView5.setText("扭一扭");
                textView6.setText("扭一扭");
            }
            if ((this.nativeAdData.getAdSlot().getAct_type() & 4) != 4) {
                imageView3.setVisibility(i5);
                textView5.setVisibility(i5);
                textView5.setText("摇一摇");
            } else if ((this.nativeAdData.getAdSlot().getAct_type() & 8) == 8) {
                imageView3.setVisibility(i5);
                textView5.setVisibility(i5);
                textView5.setText("扭一扭");
            }
            showLogo(imageView2);
            closeAd(textView4, viewInflate);
            this.nativeAdData.bindMediaView(relativeLayout2, null, new HRAdMediaListenerAdapter(this.adWrapper.getContext(), this.adWrapper.getAdSlot(), new RecyclerAdMediaListener() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.5
                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoCompleted() {
                    if (HRPreRenderAdapter.this.expressMediaListener != null) {
                        HRPreRenderAdapter.this.expressMediaListener.onVideoCompleted();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoError() {
                    if (HRPreRenderAdapter.this.expressMediaListener != null) {
                        HRPreRenderAdapter.this.expressMediaListener.onVideoError(-1, "视频加载出错");
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoLoaded() {
                    if (HRPreRenderAdapter.this.expressMediaListener != null) {
                        HRPreRenderAdapter.this.expressMediaListener.onVideoLoaded();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoPause() {
                    if (HRPreRenderAdapter.this.expressMediaListener != null) {
                        HRPreRenderAdapter.this.expressMediaListener.onVideoPause();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoResume() {
                    if (HRPreRenderAdapter.this.expressMediaListener != null) {
                        HRPreRenderAdapter.this.expressMediaListener.onVideoResume();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoStart() {
                    if (HRPreRenderAdapter.this.expressMediaListener != null) {
                        HRPreRenderAdapter.this.expressMediaListener.onVideoStart();
                    }
                }
            }));
            if (styleBean == null) {
                if ((styleBean.getType() == 101 || styleBean.getType() == 201) && styleBean.getCreative() != null) {
                    renderStyle(styleBean, this.adView, textView, textView2, null, textView4, imageView2, textView3, null);
                    return;
                }
                return;
            }
            return;
        }
        showStartShakeImage(context, relativeLayout3, gifImageView);
        imageView3.setVisibility(0);
        textView5.setVisibility(0);
        textView5.setText("摇一摇");
        textView6.setText("摇一摇");
        i5 = 0;
        if ((this.nativeAdData.getAdSlot().getAct_type() & 4) != 4) {
        }
        showLogo(imageView2);
        closeAd(textView4, viewInflate);
        this.nativeAdData.bindMediaView(relativeLayout2, null, new HRAdMediaListenerAdapter(this.adWrapper.getContext(), this.adWrapper.getAdSlot(), new RecyclerAdMediaListener() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.5
            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoCompleted() {
                if (HRPreRenderAdapter.this.expressMediaListener != null) {
                    HRPreRenderAdapter.this.expressMediaListener.onVideoCompleted();
                }
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoError() {
                if (HRPreRenderAdapter.this.expressMediaListener != null) {
                    HRPreRenderAdapter.this.expressMediaListener.onVideoError(-1, "视频加载出错");
                }
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoLoaded() {
                if (HRPreRenderAdapter.this.expressMediaListener != null) {
                    HRPreRenderAdapter.this.expressMediaListener.onVideoLoaded();
                }
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoPause() {
                if (HRPreRenderAdapter.this.expressMediaListener != null) {
                    HRPreRenderAdapter.this.expressMediaListener.onVideoPause();
                }
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoResume() {
                if (HRPreRenderAdapter.this.expressMediaListener != null) {
                    HRPreRenderAdapter.this.expressMediaListener.onVideoResume();
                }
            }

            @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoStart() {
                if (HRPreRenderAdapter.this.expressMediaListener != null) {
                    HRPreRenderAdapter.this.expressMediaListener.onVideoStart();
                }
            }
        }));
        if (styleBean == null) {
        }
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void bindAdToView(final Context context, final ViewGroup viewGroup, List<View> list, final RecylcerAdInteractionListener recylcerAdInteractionListener) {
        this.interactionListener = recylcerAdInteractionListener;
        final Rect rect = new Rect();
        viewGroup.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (!viewGroup.getGlobalVisibleRect(rect)) {
                    return true;
                }
                if (((long) rect.height()) * ((long) rect.width()) >= ((long) viewGroup.getHeight()) * ((long) viewGroup.getWidth()) * 0.3d && !HRPreRenderAdapter.this.isAdExposure) {
                    HRPreRenderAdapter.this.isAdExposure = true;
                    if (HRPreRenderAdapter.this.adWrapper.getHRAdListenerAdapter() != null && HRPreRenderAdapter.this.nativeAdData.getAdPatternType() != 2) {
                        HRPreRenderAdapter.this.adWrapper.getHRAdListenerAdapter().onADExposure();
                    }
                    if (HRPreRenderAdapter.this.shakeId == 0) {
                        HRPreRenderAdapter.this.shakeId = g.c.a.b();
                    }
                    if ((HRPreRenderAdapter.this.nativeAdData.getAdSlot().getAct_type() & 4) == 4 || (HRPreRenderAdapter.this.nativeAdData.getAdSlot().getAct_type() & 8) == 8) {
                        int i = (HRPreRenderAdapter.this.nativeAdData.getAdSlot().getAct_type() & 8) == 8 ? 2 : 1;
                        g.c.a.a(HRPreRenderAdapter.this.nativeAdData.getAdSlot().getPosId(), HRPreRenderAdapter.this.nativeAdData.getAdSlot().getLoadedTime(), HRPreRenderAdapter.this.nativeAdData.getAdSlot().getDclk());
                        g.c.a.a(HRPreRenderAdapter.this.nativeAdData.getAdSlot().getPower_index(), i, HRPreRenderAdapter.this.nativeAdData.getAdSlot().getPower_delay(), HRPreRenderAdapter.this.nativeAdData.getAdSlot().getPower_count(), HRPreRenderAdapter.this.shakeId, HRPreRenderAdapter.this.nativeAdData.getAdSlot().getEcpm(), new g.d() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.1.1
                            @Override // cn.haorui.sdk.core.loader.g.d
                            public void onShake() {
                                RecylcerAdInteractionListener recylcerAdInteractionListener2;
                                g.c.a.a(HRPreRenderAdapter.this.shakeId);
                                if (HRPreRenderAdapter.this.nativeAdData.getAdSlot().getCbc() == 0 && (recylcerAdInteractionListener2 = recylcerAdInteractionListener) != null) {
                                    recylcerAdInteractionListener2.onAdClicked();
                                }
                                ClickHandler.handleClick(HRPreRenderAdapter.this.nativeAdData);
                            }
                        });
                        g.c.a.a(true);
                    }
                    viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
                }
                return true;
            }
        });
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -2);
        TouchAdContainer touchAdContainer = new TouchAdContainer(viewGroup.getContext());
        View adView = getAdView();
        if (adView == null) {
            return;
        }
        if (adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) adView.getParent()).removeView(adView);
        }
        touchAdContainer.addView(adView, layoutParams);
        touchAdContainer.setOnWindownEventListener(new TouchAdContainer.OnWindownEventListener() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.2
            @Override // cn.haorui.sdk.core.view.TouchAdContainer.OnWindownEventListener
            public void onAttachedToWindow() {
            }

            @Override // cn.haorui.sdk.core.view.TouchAdContainer.OnWindownEventListener
            public void onDetachedFromWindow() {
                g.c.a.a(HRPreRenderAdapter.this.shakeId);
            }

            @Override // cn.haorui.sdk.core.view.TouchAdContainer.OnWindownEventListener
            public void onWindowFocusChanged(boolean z) {
                g gVar;
                int i;
                boolean z3;
                if (z) {
                    gVar = g.c.a;
                    i = HRPreRenderAdapter.this.shakeId;
                    z3 = true;
                } else {
                    gVar = g.c.a;
                    i = HRPreRenderAdapter.this.shakeId;
                    z3 = false;
                }
                gVar.a(i, z3);
            }
        });
        viewGroup.removeAllViews();
        viewGroup.addView(touchAdContainer, -1, -2);
        this.nativeAdData.setInteractionListener(this.interactionListener);
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, FrameLayout.LayoutParams layoutParams, RecyclerAdMediaListener recyclerAdMediaListener) {
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, RecyclerAdMediaListener recyclerAdMediaListener) {
    }

    public GradientDrawable createRectangleDrawable(List<Integer> list, int i, String str) {
        try {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setColor(-1);
            if (i > 0) {
                gradientDrawable.setStroke(i, Color.parseColor(str));
            }
            if (list != null && list.size() == 4) {
                gradientDrawable.setCornerRadii(new float[]{list.get(0).intValue(), list.get(0).intValue(), list.get(1).intValue(), list.get(1).intValue(), list.get(2).intValue(), list.get(2).intValue(), list.get(3).intValue(), list.get(3).intValue()});
            }
            return gradientDrawable;
        } catch (Exception unused) {
            return new GradientDrawable();
        }
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void destroy() {
        g.c.a.a(this.shakeId);
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getActionText() {
        return null;
    }

    public IAdExposureListener getAdExposureListener() {
        return this.iAdExposureListener;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getAdPatternType() {
        return this.nativeAdData.getAdPatternType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x017a  */
    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View getAdView() {
        LayoutBean.StyleBean styleBean;
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        Context context;
        if (this.adView == null) {
            this.isUpDownStyle = false;
            Context context2 = this.adWrapper.getContext();
            DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
            float containerWidth = ((RecyclerAdLoader) this.adWrapper.getAdLoader()).getContainerWidth();
            float containerHeight = ((RecyclerAdLoader) this.adWrapper.getAdLoader()).getContainerHeight();
            if (((RecyclerAdLoader) this.adWrapper.getAdLoader()).getAccept_ad_width() != null && ((RecyclerAdLoader) this.adWrapper.getAdLoader()).getAccept_ad_width().intValue() > 0) {
                containerWidth = (int) (((RecyclerAdLoader) this.adWrapper.getAdLoader()).getAccept_ad_width().intValue() / displayMetrics.density);
            }
            float f = containerWidth;
            if (((RecyclerAdLoader) this.adWrapper.getAdLoader()).getAccept_ad_height() != null && ((RecyclerAdLoader) this.adWrapper.getAdLoader()).getAccept_ad_height().intValue() > 0) {
                containerHeight = (int) (((RecyclerAdLoader) this.adWrapper.getAdLoader()).getAccept_ad_height().intValue() / displayMetrics.density);
            }
            float f2 = containerHeight;
            int style_id = this.nativeAdData.getAdSlot().getStyle_id();
            LayoutBean templateCache = CacheUtil.getInstance().getTemplateCache(context2);
            if (templateCache == null) {
                templateCache = CacheUtil.getInstance().getDefaultLayout();
            }
            if (templateCache != null) {
                try {
                    List<LayoutBean.StyleBean> style = templateCache.getStyle();
                    if (style != null) {
                        styleBean = null;
                        for (int i5 = 0; i5 < style.size(); i5++) {
                            try {
                                if (style_id == style.get(i5).getId()) {
                                    styleBean = style.get(i5);
                                }
                            } catch (Exception e) {
                                e = e;
                                e.printStackTrace();
                            }
                        }
                    } else {
                        styleBean = null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    styleBean = null;
                }
                float f3 = displayMetrics.density;
                int[] iArrUserPreRenderPaddings = AdSdk.adConfig().userPreRenderPaddings();
                int i6 = (int) (16.0f * f3);
                if (iArrUserPreRenderPaddings == null || iArrUserPreRenderPaddings.length != 4) {
                    i = i6;
                    i2 = i;
                    i3 = i2;
                    i4 = i3;
                } else {
                    i2 = (int) (iArrUserPreRenderPaddings[1] * f3);
                    i3 = (int) (iArrUserPreRenderPaddings[2] * f3);
                    i4 = (int) (iArrUserPreRenderPaddings[3] * f3);
                    i = (int) (iArrUserPreRenderPaddings[0] * f3);
                }
                String str2 = TAG;
                LogUtil.d(str2, "AdPatternType = " + this.nativeAdData.getAdPatternType());
                if (styleBean != null) {
                    int type = styleBean.getType();
                    if (type == 101 || type == 201) {
                        if (this.nativeAdData.getAdPatternType() != 2) {
                            str = str2;
                            showUpDownStyle(context2, styleBean, i, i2, i3, i4);
                        }
                    } else if (type == 301 || type == 401) {
                        if (this.nativeAdData.getAdPatternType() != 2) {
                            str = str2;
                            showLeftRightStyle(context2, styleBean, i, i2, i3, i4);
                        }
                    } else if (type != 501) {
                        str = str2;
                    } else {
                        str = str2;
                        showThreeImageStyle(context2, styleBean, i, i2, i3, i4);
                    }
                    str = str2;
                    showVideoStyle(context2, styleBean, i, i2, i3, i4);
                } else {
                    int adPatternType = this.nativeAdData.getAdPatternType();
                    if (adPatternType != 1) {
                        if (adPatternType != 2) {
                            switch (adPatternType) {
                            }
                        }
                        str = str2;
                        showVideoStyle(context2, styleBean, i, i2, i3, i4);
                    }
                    str = str2;
                    showUpDownStyle(context2, styleBean, i, i2, i3, i4);
                }
                if (this.adView != null) {
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -2);
                    if (f > 0.0f) {
                        context = context2;
                        if (displayMetrics.density * f >= ((double) displayMetrics.widthPixels) * 0.3d) {
                        }
                        Log.e(str, "container size is too small");
                        Toast.makeText(context, "容器尺寸不符合要求", 0).show();
                        return null;
                    }
                    context = context2;
                    if (f2 <= 0.0f || displayMetrics.density * f2 >= ((double) displayMetrics.widthPixels) * 0.3d) {
                        Context context3 = context;
                        if (f > 0.0f) {
                            layoutParams.width = (int) (f * displayMetrics.density);
                        }
                        if (f2 > 0.0f) {
                            layoutParams.height = (int) (f2 * displayMetrics.density);
                        }
                        this.adView.setLayoutParams(layoutParams);
                        new DownloadView().handleDownloadView(this.adView, this.nativeAdData.getAdSlot());
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(this.adView);
                        NativeAdData nativeAdData = this.nativeAdData;
                        nativeAdData.bindAdToView(context3, this.adView, arrayList, new HRInteractionListenerAdapter(nativeAdData, new RecylcerAdInteractionListener() { // from class: cn.haorui.sdk.platform.hr.recycler.HRPreRenderAdapter.3
                            @Override // cn.haorui.sdk.core.loader.InteractionListener
                            public void onAdClicked() {
                                if (HRPreRenderAdapter.this.nativeAdData.getAdSlot().getCbc() != 0 || HRPreRenderAdapter.this.interactionListener == null) {
                                    return;
                                }
                                HRPreRenderAdapter.this.interactionListener.onAdClicked();
                            }

                            @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                            public void onAdClosed() {
                            }

                            @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                            public void onAdRenderFailed() {
                            }
                        }));
                    }
                    Log.e(str, "container size is too small");
                    Toast.makeText(context, "容器尺寸不符合要求", 0).show();
                    return null;
                }
            }
        }
        return this.adView;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntro() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntroUrl() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppName() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public List<HRAdInfo.PermissionBean> getAppPermissionList() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppPremissionUrl() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppSize() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppVersion() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getContent() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        resultBean.setCid(this.adWrapper.getAdSlot().getCid());
        resultBean.setCat(this.adWrapper.getAdSlot().getCat());
        resultBean.setAderId(this.adWrapper.getAdSlot().getAder_id());
        resultBean.setFromId(this.adWrapper.getAdSlot().getFromId());
        resultBean.setReqId(this.adWrapper.getAdSlot().getReq_id());
        resultBean.setPrice(this.adWrapper.getAdSlot().getEcpm());
        resultBean.setEcpm(this.adWrapper.getAdSlot().getEcpm() + "");
        resultBean.setS_ext(this.adWrapper.getAdSlot().getS_ext());
        resultBean.setS_code(this.adWrapper.getAdSlot().getS_code());
        resultBean.setSdkName(HRConstants.PLATFORM_HR);
        return resultBean;
    }

    public String getDeepLink() {
        if (AderUtil.getIsOperationContent(this.nativeAdData.getAdSlot().getAder_id())) {
            return this.nativeAdData.getAdSlot().getDeep_link();
        }
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getDesc() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getDeveloper() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public long getDuration() {
        return this.nativeAdData.getAdSlot().getVideo_duration() * 1000;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getFrom() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getFromId() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getFromLogo() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getHeight() {
        return this.nativeAdData.getAdSlot().getHeight();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getIconTitle() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getIconUrl() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String[] getImgUrls() {
        return AderUtil.getIsOperationContent(this.nativeAdData.getAdSlot().getAder_id()) ? this.nativeAdData.getAdSlot().getImageUrls() : new String[0];
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getInteractionType() {
        return this.nativeAdData.getInteractionType();
    }

    public boolean getIsOperationContent() {
        return AderUtil.getIsOperationContent(this.nativeAdData.getAdSlot().getAder_id());
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getPackageName() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatFormEcpm() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatform() {
        return HRConstants.PLATFORM_HR;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getPrivacyAgreement() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getRecyclerType() {
        return 2;
    }

    public int getSrcType() {
        return this.nativeAdData.getAdPatternType();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getTitle() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getVideoUrl() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getWidth() {
        return this.nativeAdData.getAdSlot().getWidth();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public boolean isAdValid() {
        int expire_timestamp = this.adWrapper.getAdSlot().getExpire_timestamp();
        return SystemClock.uptimeMillis() - this.adWrapper.getAdSlot().getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public boolean isNativeExpress() {
        return true;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void mute() {
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void pauseVideo() {
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void replay() {
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void resumeVideo() {
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void setExpressMediaListener(ExpressMediaListener expressMediaListener) {
        this.expressMediaListener = expressMediaListener;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void setOnADExposureListener(IAdExposureListener iAdExposureListener) {
        this.iAdExposureListener = iAdExposureListener;
    }

    public void setOnImgloadSuccessListener(OnImgloadSuccessListener onImgloadSuccessListener) {
        this.imgLoadListener = onImgloadSuccessListener;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void startVideo() {
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void stopVideo() {
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void unmute() {
    }
}

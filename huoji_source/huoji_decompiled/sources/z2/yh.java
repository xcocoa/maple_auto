package z2;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.anythink.core.api.ATAdAppInfo;
import com.anythink.core.api.ATShakeViewListener;
import com.anythink.nativead.api.ATNativeImageView;
import com.anythink.nativead.api.ATNativeMaterial;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.elfin.ad.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class yh {
    private static final String OooO00o = "yh";

    public class OooO00o implements ViewTreeObserver.OnGlobalLayoutListener {
        public final /* synthetic */ View OoooOoO;
        public final /* synthetic */ Context OoooOoo;
        public final /* synthetic */ int Ooooo00;
        public final /* synthetic */ int Ooooo0o;
        public final /* synthetic */ FrameLayout.LayoutParams OooooO0;

        public OooO00o(View view, Context context, int i, int i2, FrameLayout.LayoutParams layoutParams) {
            this.OoooOoO = view;
            this.OoooOoo = context;
            this.Ooooo00 = i;
            this.Ooooo0o = i2;
            this.OooooO0 = layoutParams;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int i;
            this.OoooOoO.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            int width = this.OoooOoO.getWidth() - yh.OooO0O0(this.OoooOoo, 10.0f);
            int i2 = this.Ooooo00;
            if (i2 <= 0 || (i = this.Ooooo0o) <= 0 || i2 <= i) {
                FrameLayout.LayoutParams layoutParams = this.OooooO0;
                layoutParams.width = -1;
                layoutParams.height = (width * 600) / 1024;
            } else {
                int i3 = (i * width) / i2;
                FrameLayout.LayoutParams layoutParams2 = this.OooooO0;
                layoutParams2.width = width;
                layoutParams2.height = i3;
            }
        }
    }

    public class OooO0O0 implements ATShakeViewListener {
        public final /* synthetic */ FrameLayout OooO00o;

        public OooO0O0(FrameLayout frameLayout) {
            this.OooO00o = frameLayout;
        }

        @Override // com.anythink.core.api.ATShakeViewListener
        public void onDismiss() {
            this.OooO00o.setVisibility(8);
        }
    }

    public class OooO0OO implements ATShakeViewListener {
        public final /* synthetic */ FrameLayout OooO00o;

        public OooO0OO(FrameLayout frameLayout) {
            this.OooO00o = frameLayout;
        }

        @Override // com.anythink.core.api.ATShakeViewListener
        public void onDismiss() {
            this.OooO00o.setVisibility(8);
        }
    }

    public class OooO0o implements View.OnClickListener {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ View OoooOoo;

        public OooO0o(String str, View view) {
            this.OoooOoO = str;
            this.OoooOoo = view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.OoooOoO));
                intent.addFlags(268468224);
                Context context = this.OoooOoo.getContext();
                if (context != null) {
                    context.startActivity(intent);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0373  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void OooO00o(Context context, ATNativeMaterial aTNativeMaterial, View view, ATNativePrepareInfo aTNativePrepareInfo) {
        int i;
        String callToActionText;
        View adMediaView;
        ArrayList arrayList;
        ATNativePrepareInfo aTNativePrepareInfo2;
        FrameLayout frameLayout;
        FrameLayout.LayoutParams layoutParams;
        int i2;
        ArrayList arrayList2;
        ATNativePrepareInfo aTNativePrepareInfo3;
        int i3;
        int i4;
        View adLogoView;
        String adFrom;
        ATAdAppInfo adAppInfo;
        int i5;
        int i6;
        OooO0OO(aTNativeMaterial);
        int iOooO0O0 = OooO0O0(context, 5.0f);
        view.setPadding(iOooO0O0, iOooO0O0, iOooO0O0, iOooO0O0);
        TextView textView = (TextView) view.findViewById(R.id.native_ad_title);
        TextView textView2 = (TextView) view.findViewById(R.id.native_ad_desc);
        TextView textView3 = (TextView) view.findViewById(R.id.native_ad_install_btn);
        TextView textView4 = (TextView) view.findViewById(R.id.native_ad_from);
        FrameLayout frameLayout2 = (FrameLayout) view.findViewById(R.id.native_ad_image);
        FrameLayout frameLayout3 = (FrameLayout) view.findViewById(R.id.native_ad_content_image_area);
        ATNativeImageView aTNativeImageView = (ATNativeImageView) view.findViewById(R.id.native_ad_logo);
        View viewFindViewById = view.findViewById(R.id.native_ad_close);
        FrameLayout frameLayout4 = (FrameLayout) view.findViewById(R.id.native_ad_shake_view_container);
        FrameLayout frameLayout5 = (FrameLayout) view.findViewById(R.id.native_ad_slide_view_container);
        FrameLayout frameLayout6 = (FrameLayout) view.findViewById(R.id.native_ad_logo_container);
        ATNativePrepareInfo aTNativePrepareInfo4 = aTNativePrepareInfo == null ? new ATNativePrepareInfo() : aTNativePrepareInfo;
        ArrayList arrayList3 = new ArrayList();
        String title = aTNativeMaterial.getTitle();
        if (TextUtils.isEmpty(title)) {
            i = 8;
            textView.setVisibility(8);
        } else {
            textView.setText(title);
            aTNativePrepareInfo4.setTitleView(textView);
            arrayList3.add(textView);
            textView.setVisibility(0);
            i = 8;
        }
        String descriptionText = aTNativeMaterial.getDescriptionText();
        if (TextUtils.isEmpty(descriptionText)) {
            textView2.setVisibility(i);
        } else {
            textView2.setText(descriptionText);
            aTNativePrepareInfo4.setDescView(textView2);
            arrayList3.add(textView2);
            textView2.setVisibility(0);
        }
        View adIconView = aTNativeMaterial.getAdIconView();
        String iconImageUrl = aTNativeMaterial.getIconImageUrl();
        frameLayout2.removeAllViews();
        ATNativeImageView aTNativeImageView2 = new ATNativeImageView(context);
        if (adIconView != null) {
            frameLayout2.addView(adIconView);
            aTNativePrepareInfo4.setIconView(adIconView);
            arrayList3.add(adIconView);
        } else if (TextUtils.isEmpty(iconImageUrl)) {
            frameLayout2.setVisibility(4);
            callToActionText = aTNativeMaterial.getCallToActionText();
            if (TextUtils.isEmpty(callToActionText)) {
                textView3.setText(callToActionText);
                aTNativePrepareInfo4.setCtaView(textView3);
                arrayList3.add(textView3);
                textView3.setVisibility(0);
            } else {
                textView3.setVisibility(8);
            }
            adMediaView = aTNativeMaterial.getAdMediaView(frameLayout3);
            int mainImageHeight = aTNativeMaterial.getMainImageHeight();
            int mainImageWidth = aTNativeMaterial.getMainImageWidth();
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            if (adMediaView != null) {
                frameLayout = frameLayout5;
                arrayList = arrayList3;
                aTNativePrepareInfo2 = aTNativePrepareInfo4;
                view.getViewTreeObserver().addOnGlobalLayoutListener(new OooO00o(view, context, mainImageWidth, mainImageHeight, layoutParams2));
                layoutParams = layoutParams2;
            } else {
                arrayList = arrayList3;
                aTNativePrepareInfo2 = aTNativePrepareInfo4;
                frameLayout = frameLayout5;
                int iOooO0O02 = context.getResources().getDisplayMetrics().widthPixels - OooO0O0(context, 10.0f);
                if (context.getResources().getDisplayMetrics().widthPixels > context.getResources().getDisplayMetrics().heightPixels) {
                    iOooO0O02 = ((context.getResources().getDisplayMetrics().widthPixels - OooO0O0(context, 10.0f)) - OooO0O0(context, 330.0f)) - OooO0O0(context, 130.0f);
                }
                if (mainImageWidth <= 0 || mainImageHeight <= 0 || mainImageWidth <= mainImageHeight) {
                    layoutParams = layoutParams2;
                    layoutParams.width = -1;
                    i2 = (iOooO0O02 * 600) / 1024;
                } else {
                    layoutParams = layoutParams2;
                    layoutParams.width = -1;
                    i2 = (iOooO0O02 * mainImageHeight) / mainImageWidth;
                }
                layoutParams.height = i2;
            }
            aTNativeMaterial.getImageUrlList();
            frameLayout3.removeAllViews();
            if (adMediaView == null) {
                if (adMediaView.getParent() != null) {
                    ((ViewGroup) adMediaView.getParent()).removeView(adMediaView);
                }
                layoutParams.gravity = 17;
                adMediaView.setLayoutParams(layoutParams);
                frameLayout3.addView(adMediaView, layoutParams);
                i3 = 0;
                frameLayout3.setVisibility(0);
                arrayList2 = arrayList;
                aTNativePrepareInfo3 = aTNativePrepareInfo2;
            } else {
                if (TextUtils.isEmpty(aTNativeMaterial.getMainImageUrl())) {
                    arrayList2 = arrayList;
                    aTNativePrepareInfo3 = aTNativePrepareInfo2;
                    i3 = 0;
                    frameLayout3.removeAllViews();
                    i4 = 8;
                    frameLayout3.setVisibility(8);
                    adLogoView = aTNativeMaterial.getAdLogoView();
                    if (adLogoView != null) {
                        frameLayout6.setVisibility(i3);
                        frameLayout6.removeAllViews();
                        frameLayout6.addView(adLogoView);
                    } else {
                        frameLayout6.setVisibility(i4);
                        String adChoiceIconUrl = aTNativeMaterial.getAdChoiceIconUrl();
                        Bitmap adLogo = aTNativeMaterial.getAdLogo();
                        if (!TextUtils.isEmpty(adChoiceIconUrl)) {
                            aTNativeImageView.setImage(adChoiceIconUrl);
                            aTNativePrepareInfo3.setAdLogoView(aTNativeImageView);
                        } else if (adLogo != null) {
                            aTNativeImageView.setImageBitmap(adLogo);
                        } else {
                            aTNativeImageView.setImageBitmap(null);
                            i4 = 8;
                            aTNativeImageView.setVisibility(8);
                        }
                        aTNativeImageView.setVisibility(i3);
                        i4 = 8;
                    }
                    adFrom = aTNativeMaterial.getAdFrom();
                    if (TextUtils.isEmpty(adFrom)) {
                        textView4.setVisibility(i4);
                    } else {
                        textView4.setText(adFrom);
                        textView4.setVisibility(i3);
                    }
                    aTNativePrepareInfo3.setAdFromView(textView4);
                    OooO0Oo(context, aTNativeMaterial, frameLayout4);
                    OooO0o0(context, aTNativeMaterial, frameLayout);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(OooO0O0(context, 40.0f), OooO0O0(context, 10.0f));
                    layoutParams3.gravity = 85;
                    aTNativePrepareInfo3.setChoiceViewLayoutParams(layoutParams3);
                    aTNativePrepareInfo3.setCloseView(viewFindViewById);
                    aTNativePrepareInfo3.setClickViewList(arrayList2);
                    View viewFindViewById2 = view.findViewById(R.id.six_info);
                    adAppInfo = aTNativeMaterial.getAdAppInfo();
                    if (adAppInfo == null) {
                        viewFindViewById2.setVisibility(8);
                        return;
                    }
                    viewFindViewById2.setVisibility(0);
                    TextView textView5 = (TextView) viewFindViewById2.findViewById(R.id.function_test);
                    TextView textView6 = (TextView) viewFindViewById2.findViewById(R.id.developer_test);
                    TextView textView7 = (TextView) viewFindViewById2.findViewById(R.id.version_test);
                    TextView textView8 = (TextView) viewFindViewById2.findViewById(R.id.privacy_test);
                    TextView textView9 = (TextView) viewFindViewById2.findViewById(R.id.permission_test);
                    textView6.setText(TextUtils.isEmpty(adAppInfo.getPublisher()) ? "" : adAppInfo.getPublisher());
                    textView7.setText(TextUtils.isEmpty(adAppInfo.getAppVersion()) ? "" : adAppInfo.getAppVersion());
                    if (TextUtils.isEmpty(adAppInfo.getFunctionUrl())) {
                        i5 = 0;
                        textView5.setOnClickListener(null);
                        i6 = 8;
                        textView5.setVisibility(8);
                    } else {
                        i5 = 0;
                        textView5.setVisibility(0);
                        OooO0o(textView5, adAppInfo.getFunctionUrl());
                        i6 = 8;
                    }
                    if (TextUtils.isEmpty(adAppInfo.getAppPrivacyUrl())) {
                        textView8.setVisibility(i6);
                        textView8.setOnClickListener(null);
                    } else {
                        textView8.setVisibility(i5);
                        OooO0o(textView8, adAppInfo.getAppPrivacyUrl());
                    }
                    if (TextUtils.isEmpty(adAppInfo.getAppPermissonUrl())) {
                        textView9.setVisibility(i6);
                        textView9.setOnClickListener(null);
                    } else {
                        textView9.setVisibility(i5);
                        OooO0o(textView9, adAppInfo.getAppPermissonUrl());
                    }
                    if (aTNativePrepareInfo3 instanceof ATNativePrepareExInfo) {
                        ArrayList arrayList4 = new ArrayList();
                        arrayList4.add(textView5);
                        arrayList4.add(textView6);
                        arrayList4.add(textView7);
                        arrayList4.add(textView8);
                        arrayList4.add(textView9);
                        ((ATNativePrepareExInfo) aTNativePrepareInfo3).setAppInfoClickViewList(arrayList4);
                        return;
                    }
                    return;
                }
                ATNativeImageView aTNativeImageView3 = new ATNativeImageView(context);
                aTNativeImageView3.setImage(aTNativeMaterial.getMainImageUrl());
                aTNativeImageView3.setLayoutParams(layoutParams);
                frameLayout3.addView(aTNativeImageView3, layoutParams);
                aTNativePrepareInfo3 = aTNativePrepareInfo2;
                aTNativePrepareInfo3.setMainImageView(aTNativeImageView3);
                arrayList2 = arrayList;
                arrayList2.add(aTNativeImageView3);
                i3 = 0;
                frameLayout3.setVisibility(0);
            }
            i4 = 8;
            adLogoView = aTNativeMaterial.getAdLogoView();
            if (adLogoView != null) {
            }
            adFrom = aTNativeMaterial.getAdFrom();
            if (TextUtils.isEmpty(adFrom)) {
            }
            aTNativePrepareInfo3.setAdFromView(textView4);
            OooO0Oo(context, aTNativeMaterial, frameLayout4);
            OooO0o0(context, aTNativeMaterial, frameLayout);
            FrameLayout.LayoutParams layoutParams32 = new FrameLayout.LayoutParams(OooO0O0(context, 40.0f), OooO0O0(context, 10.0f));
            layoutParams32.gravity = 85;
            aTNativePrepareInfo3.setChoiceViewLayoutParams(layoutParams32);
            aTNativePrepareInfo3.setCloseView(viewFindViewById);
            aTNativePrepareInfo3.setClickViewList(arrayList2);
            View viewFindViewById22 = view.findViewById(R.id.six_info);
            adAppInfo = aTNativeMaterial.getAdAppInfo();
            if (adAppInfo == null) {
            }
        } else {
            frameLayout2.addView(aTNativeImageView2);
            aTNativeImageView2.setImage(iconImageUrl);
            aTNativePrepareInfo4.setIconView(aTNativeImageView2);
            arrayList3.add(aTNativeImageView2);
        }
        frameLayout2.setVisibility(0);
        callToActionText = aTNativeMaterial.getCallToActionText();
        if (TextUtils.isEmpty(callToActionText)) {
        }
        adMediaView = aTNativeMaterial.getAdMediaView(frameLayout3);
        int mainImageHeight2 = aTNativeMaterial.getMainImageHeight();
        int mainImageWidth2 = aTNativeMaterial.getMainImageWidth();
        FrameLayout.LayoutParams layoutParams22 = new FrameLayout.LayoutParams(-1, -2);
        if (adMediaView != null) {
        }
        aTNativeMaterial.getImageUrlList();
        frameLayout3.removeAllViews();
        if (adMediaView == null) {
        }
        i4 = 8;
        adLogoView = aTNativeMaterial.getAdLogoView();
        if (adLogoView != null) {
        }
        adFrom = aTNativeMaterial.getAdFrom();
        if (TextUtils.isEmpty(adFrom)) {
        }
        aTNativePrepareInfo3.setAdFromView(textView4);
        OooO0Oo(context, aTNativeMaterial, frameLayout4);
        OooO0o0(context, aTNativeMaterial, frameLayout);
        FrameLayout.LayoutParams layoutParams322 = new FrameLayout.LayoutParams(OooO0O0(context, 40.0f), OooO0O0(context, 10.0f));
        layoutParams322.gravity = 85;
        aTNativePrepareInfo3.setChoiceViewLayoutParams(layoutParams322);
        aTNativePrepareInfo3.setCloseView(viewFindViewById);
        aTNativePrepareInfo3.setClickViewList(arrayList2);
        View viewFindViewById222 = view.findViewById(R.id.six_info);
        adAppInfo = aTNativeMaterial.getAdAppInfo();
        if (adAppInfo == null) {
        }
    }

    public static int OooO0O0(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private static void OooO0OO(ATNativeMaterial aTNativeMaterial) {
        String str;
        String str2;
        String str3;
        String str4;
        if (aTNativeMaterial == null) {
            return;
        }
        String adType = aTNativeMaterial.getAdType();
        adType.hashCode();
        if (adType.equals("1")) {
            str = OooO00o;
            str2 = "Ad source type: Video, video duration: " + aTNativeMaterial.getVideoDuration();
        } else if (adType.equals("2")) {
            str = OooO00o;
            str2 = "Ad source type: Image";
        } else {
            str = OooO00o;
            str2 = "Ad source type: Unknown";
        }
        Log.i(str, str2);
        int nativeType = aTNativeMaterial.getNativeType();
        if (nativeType != 1) {
            if (nativeType == 2) {
                str3 = OooO00o;
                str4 = "Native type: Patch";
            }
            Log.i(OooO00o, "show native material:\nadMaterial: " + aTNativeMaterial + "\ngetTitle:" + aTNativeMaterial.getTitle() + "\ngetDescriptionText:" + aTNativeMaterial.getDescriptionText() + "\ngetNativeType:" + aTNativeMaterial.getNativeType() + "\ngetAdMediaView:" + aTNativeMaterial.getAdMediaView(new Object[0]) + "\ngetAdIconView:" + aTNativeMaterial.getAdIconView() + "\ngetIconImageUrl:" + aTNativeMaterial.getIconImageUrl() + "\ngetMainImageUrl:" + aTNativeMaterial.getMainImageUrl() + "\ngetMainImageWidth:" + aTNativeMaterial.getMainImageWidth() + "\ngetMainImageHeight:" + aTNativeMaterial.getMainImageHeight() + "\ngetVideoWidth:" + aTNativeMaterial.getVideoWidth() + "\ngetVideoHeight:" + aTNativeMaterial.getVideoHeight() + "\ngetAppPrice:" + aTNativeMaterial.getAppPrice() + "\ngetAppCommentNum:" + aTNativeMaterial.getAppCommentNum() + "\ngetCallToActionText:" + aTNativeMaterial.getCallToActionText() + "\ngetStarRating:" + aTNativeMaterial.getStarRating() + "\ngetVideoUrl:" + aTNativeMaterial.getVideoUrl() + "\ngetAdChoiceIconUrl:" + aTNativeMaterial.getAdChoiceIconUrl() + "\ngetAdFrom:" + aTNativeMaterial.getAdFrom() + "\ngetImageUrlList:" + aTNativeMaterial.getImageUrlList() + "\ngetNetworkInfoMap:" + aTNativeMaterial.getNetworkInfoMap() + "\ngetAdAppInfo:" + aTNativeMaterial.getAdAppInfo() + "\ngetNativeAdInteractionType:" + aTNativeMaterial.getNativeAdInteractionType() + "\ngetVideoDuration:" + aTNativeMaterial.getVideoDuration() + "\ngetAdvertiserName:" + aTNativeMaterial.getAdvertiserName() + "\ngetNativeType:" + aTNativeMaterial.getNativeType() + "\ngetAdType:" + aTNativeMaterial.getAdType() + "\ngetNativeCustomVideo:" + aTNativeMaterial.getNativeCustomVideo() + "\ngetAdLogo:" + aTNativeMaterial.getAdLogo() + "\ngetNativeExpressWidth:" + aTNativeMaterial.getNativeExpressWidth() + "\ngetNativeExpressHeight" + aTNativeMaterial.getNativeExpressHeight() + "\n");
        }
        str3 = OooO00o;
        str4 = "Native type: Feed";
        Log.i(str3, str4);
        Log.i(OooO00o, "show native material:\nadMaterial: " + aTNativeMaterial + "\ngetTitle:" + aTNativeMaterial.getTitle() + "\ngetDescriptionText:" + aTNativeMaterial.getDescriptionText() + "\ngetNativeType:" + aTNativeMaterial.getNativeType() + "\ngetAdMediaView:" + aTNativeMaterial.getAdMediaView(new Object[0]) + "\ngetAdIconView:" + aTNativeMaterial.getAdIconView() + "\ngetIconImageUrl:" + aTNativeMaterial.getIconImageUrl() + "\ngetMainImageUrl:" + aTNativeMaterial.getMainImageUrl() + "\ngetMainImageWidth:" + aTNativeMaterial.getMainImageWidth() + "\ngetMainImageHeight:" + aTNativeMaterial.getMainImageHeight() + "\ngetVideoWidth:" + aTNativeMaterial.getVideoWidth() + "\ngetVideoHeight:" + aTNativeMaterial.getVideoHeight() + "\ngetAppPrice:" + aTNativeMaterial.getAppPrice() + "\ngetAppCommentNum:" + aTNativeMaterial.getAppCommentNum() + "\ngetCallToActionText:" + aTNativeMaterial.getCallToActionText() + "\ngetStarRating:" + aTNativeMaterial.getStarRating() + "\ngetVideoUrl:" + aTNativeMaterial.getVideoUrl() + "\ngetAdChoiceIconUrl:" + aTNativeMaterial.getAdChoiceIconUrl() + "\ngetAdFrom:" + aTNativeMaterial.getAdFrom() + "\ngetImageUrlList:" + aTNativeMaterial.getImageUrlList() + "\ngetNetworkInfoMap:" + aTNativeMaterial.getNetworkInfoMap() + "\ngetAdAppInfo:" + aTNativeMaterial.getAdAppInfo() + "\ngetNativeAdInteractionType:" + aTNativeMaterial.getNativeAdInteractionType() + "\ngetVideoDuration:" + aTNativeMaterial.getVideoDuration() + "\ngetAdvertiserName:" + aTNativeMaterial.getAdvertiserName() + "\ngetNativeType:" + aTNativeMaterial.getNativeType() + "\ngetAdType:" + aTNativeMaterial.getAdType() + "\ngetNativeCustomVideo:" + aTNativeMaterial.getNativeCustomVideo() + "\ngetAdLogo:" + aTNativeMaterial.getAdLogo() + "\ngetNativeExpressWidth:" + aTNativeMaterial.getNativeExpressWidth() + "\ngetNativeExpressHeight" + aTNativeMaterial.getNativeExpressHeight() + "\n");
    }

    private static void OooO0Oo(Context context, ATNativeMaterial aTNativeMaterial, FrameLayout frameLayout) {
        int iOooO0O0 = OooO0O0(context, 100.0f);
        int iOooO0O02 = OooO0O0(context, 100.0f);
        View shakeView = aTNativeMaterial.getShakeView(iOooO0O0, iOooO0O02, new OooO0O0(frameLayout));
        if (shakeView == null || frameLayout == null) {
            return;
        }
        frameLayout.setVisibility(0);
        frameLayout.removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iOooO0O0, iOooO0O02);
        layoutParams.gravity = 17;
        frameLayout.addView(shakeView, layoutParams);
    }

    private static void OooO0o(View view, String str) {
        view.setOnClickListener(new OooO0o(str, view));
    }

    private static void OooO0o0(Context context, ATNativeMaterial aTNativeMaterial, FrameLayout frameLayout) {
        int iOooO0O0 = OooO0O0(context, 120.0f);
        int iOooO0O02 = OooO0O0(context, 50.0f);
        View slideView = aTNativeMaterial.getSlideView(iOooO0O0, iOooO0O02, 5, new OooO0OO(frameLayout));
        if (slideView == null || frameLayout == null) {
            return;
        }
        frameLayout.setVisibility(0);
        frameLayout.removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iOooO0O0, iOooO0O02 + OooO0O0(context, 50.0f));
        layoutParams.gravity = 17;
        frameLayout.addView(slideView, layoutParams);
    }
}

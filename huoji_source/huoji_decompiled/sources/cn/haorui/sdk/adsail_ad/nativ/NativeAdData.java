package cn.haorui.sdk.adsail_ad.nativ;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import cn.haorui.sdk.adsail_ad.MediaView;
import cn.haorui.sdk.platform.hr.IAdSailAd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface NativeAdData extends IAdSailAd {
    void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, NativeAdInteractionListener nativeAdInteractionListener);

    void bindMediaView(ViewGroup viewGroup, FrameLayout.LayoutParams layoutParams, NativeAdMediaListener nativeAdMediaListener);

    int getAdPatternType();

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    NativeAdSlot getAdSlot();

    String getDesc();

    String getIconUrl();

    String[] getImgUrls();

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    int getInteractionType();

    MediaView getMediaView();

    String getTitle();
}

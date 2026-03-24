package com.octopus.ad;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.octopus.ad.internal.nativead.NativeAdEventListener;
import com.octopus.ad.internal.network.ServerResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface NativeAdResponse {

    public enum a {
        OCTOPUS
    }

    public enum b {
        CONTENT,
        APP_INSTALL
    }

    void bindUnifiedView(ViewGroup viewGroup, List<View> list, NativeAdEventListener nativeAdEventListener);

    void bindView(ViewGroup viewGroup, NativeAdEventListener nativeAdEventListener);

    void destroy();

    String getAdvertiser();

    String getButtonText();

    String getDescription();

    Bitmap getIcon();

    String getIconUrl();

    Bitmap getImage();

    String getImageUrl();

    ArrayList<String> getImageUrls();

    String getLandingPageUrl();

    Bitmap getLogo(Context context);

    ServerResponse.AdLogoInfo getLogoInfo();

    String getLogoUrl();

    b getNativeAdType();

    HashMap<String, Object> getNativeElements();

    List<? extends View> getNativeInfoListView();

    a getNetworkIdentifier();

    int getPrice();

    double getStarRating();

    String getStore();

    ArrayList<String> getTextList();

    Bitmap getTextLogo(Context context);

    ServerResponse.AdLogoInfo getTextLogoInfo();

    String getTextLogoUrl();

    String getTitle();

    ArrayList<String> getVideoUrls();

    boolean hasExpired();

    void setIcon(Bitmap bitmap);

    void setImage(Bitmap bitmap);

    void setNativeInfoListView(List<? extends View> list);

    void setTag(String str);

    void unregisterViews();
}

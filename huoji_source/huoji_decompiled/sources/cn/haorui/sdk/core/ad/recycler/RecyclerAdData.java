package cn.haorui.sdk.core.ad.recycler;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.utils.ResultBean;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface RecyclerAdData {
    void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, RecylcerAdInteractionListener recylcerAdInteractionListener);

    void bindMediaView(ViewGroup viewGroup, FrameLayout.LayoutParams layoutParams, RecyclerAdMediaListener recyclerAdMediaListener);

    void bindMediaView(ViewGroup viewGroup, RecyclerAdMediaListener recyclerAdMediaListener);

    void destroy();

    String getActionText();

    int getAdPatternType();

    View getAdView();

    String getAppIntro();

    String getAppIntroUrl();

    String getAppName();

    List<HRAdInfo.PermissionBean> getAppPermissionList();

    String getAppPremissionUrl();

    String getAppSize();

    String getAppVersion();

    String getContent();

    ResultBean getData();

    String getDesc();

    String getDeveloper();

    long getDuration();

    String getFrom();

    String getFromId();

    String getFromLogo();

    int getHeight();

    String getIconTitle();

    String getIconUrl();

    String[] getImgUrls();

    int getInteractionType();

    String getPackageName();

    String getPlatFormEcpm();

    String getPlatform();

    String getPrivacyAgreement();

    @Deprecated
    int getRecyclerType();

    String getTitle();

    String getVideoUrl();

    int getWidth();

    boolean isAdValid();

    boolean isNativeExpress();

    void mute();

    void pauseVideo();

    void replay();

    void resumeVideo();

    void setExpressMediaListener(ExpressMediaListener expressMediaListener);

    void setOnADExposureListener(IAdExposureListener iAdExposureListener);

    void startVideo();

    void stopVideo();

    void unmute();
}

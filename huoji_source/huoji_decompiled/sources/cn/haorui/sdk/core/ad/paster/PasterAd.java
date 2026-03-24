package cn.haorui.sdk.core.ad.paster;

import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.core.ad.IAd;
import cn.haorui.sdk.core.domain.HRAdInfo;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface PasterAd extends IAd {
    void destroy();

    String getAppIntro();

    String getAppIntroUrl();

    String getAppName();

    List<HRAdInfo.PermissionBean> getAppPermissionList();

    String getAppPremissionUrl();

    String getAppSize();

    String getAppVersion();

    long getCurrentPosition();

    String getDeveloper();

    long getDuration();

    String getPrivacyAgreement();

    void mute();

    void onPause();

    void onResume();

    void pause();

    void replay();

    void resume();

    void setOnPreparedListener(NormalMediaView.IPreparedListener iPreparedListener);

    void start();

    void unmute();
}

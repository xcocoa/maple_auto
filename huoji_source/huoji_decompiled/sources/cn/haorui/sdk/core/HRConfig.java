package cn.haorui.sdk.core;

import android.app.Activity;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.anythink.expressad.exoplayer.f;
import com.anythink.expressad.video.module.a.a.m;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class HRConfig {
    public static final int DEVICE_CONTROL_ALL_CLOSE = 2;
    public static final int DEVICE_CONTROL_ALL_OPEN = 0;
    public static final int DEVICE_CONTROL_ONLY_OAID = 1;
    public static final int DOWNLOAD_CONFIRM_ALWAYS = 1;
    public static final int DOWNLOAD_CONFIRM_AUTO = 0;
    public static final int DOWNLOAD_CONFIRM_NEVER = 2;
    public static final String GENDER_FEMALE = "10";
    public static final String GENDER_MALE = "01";
    public static final String GENDER_UNKNOWN = "-1";
    public static final int SECURE_ALL = 2;
    public static final int SECURE_HTTP = 0;
    public static final int SECURE_HTTPS = 1;
    private String[] advertiserId;
    private String appId;
    private boolean canUseSdkPersonalRecommend;
    private CustomController customController;
    private String deny_ader_ids;
    private String deny_cats;
    private String deny_cids;
    private int downloadConfirm;
    private boolean enableDebug;
    private boolean enableInterstitialAutoClose;
    private boolean enableNotify;
    private boolean enableOaid;
    private String ext;
    private boolean isTest;
    private String oaid_cert_name;
    private int[] preRenderPaddings;
    private int secure;
    private boolean showFeedAdLogo;
    private boolean showLogo;
    private boolean splashClickPause;
    private String splashClickText;
    private long splashShowTime;
    private Integer userAge;
    private String userGender;
    private String userId;
    private String userKeywords;
    private Integer userType;
    private Class<? extends Activity> webViewActivity;
    private Class<? extends cn.haorui.sdk.core.webview.c> webViewClient;
    private Class<? extends cn.haorui.sdk.core.webview.a> webViewDownloadListener;
    private String wx_appid;
    private static String initUUID = UUID.randomUUID().toString();
    private static long initTime = System.currentTimeMillis();

    public static class Builder {
        private String[] advertiserId;
        private String appId;
        private CustomController customController;
        private String deny_ader_ids;
        private String deny_cats;
        private String deny_cids;
        private String ext;
        private String oaid_cert_name;
        private int[] preRenderPaddings;
        private String splashClickText;
        private Integer userAge;
        private String userGender;
        private String userId;
        private String userKeywords;
        private Integer userType;
        private Class<? extends Activity> webViewActivity;
        private Class<? extends cn.haorui.sdk.core.webview.c> webViewClient;
        private Class<? extends cn.haorui.sdk.core.webview.a> webViewDownloadListener;
        private String wx_appid;
        private boolean canUseSdkPersonalRecommend = true;
        private boolean enableDebug = false;
        private boolean enableNotify = true;
        private boolean enableOaid = true;
        private int downloadConfirm = 0;
        private int secure = 2;
        private boolean showFeedAdLogo = false;
        private boolean splashClickPause = true;
        private boolean showLogo = true;
        private boolean enableInterstitialAutoClose = true;
        private long splashShowTime = f.a;

        public Builder appId(@NonNull String str) {
            this.appId = str;
            return this;
        }

        public HRConfig build() {
            if (TextUtils.isEmpty(this.appId)) {
                throw new RuntimeException("appId错误");
            }
            return new HRConfig(this);
        }

        public Builder customController(@NonNull CustomController customController) {
            this.customController = customController;
            return this;
        }

        public Builder downloadConfirm(int i) {
            if (i == 0 || 1 == i || 2 == i) {
                this.downloadConfirm = i;
            }
            return this;
        }

        public Builder enableDebug(boolean z) {
            this.enableDebug = z;
            return this;
        }

        public Builder enableInterstitialAutoClose(boolean z) {
            this.enableInterstitialAutoClose = z;
            return this;
        }

        public Builder enableNotify(boolean z) {
            this.enableNotify = z;
            return this;
        }

        public Builder enableOaid(boolean z) {
            this.enableOaid = z;
            return this;
        }

        public Builder enableSdkPersonalRecommend(boolean z) {
            this.canUseSdkPersonalRecommend = z;
            return this;
        }

        public Builder secure(int i) {
            if (2 == i || i == 0 || 1 == i) {
                this.secure = i;
            }
            return this;
        }

        public Builder setOaidCertName(String str) {
            this.oaid_cert_name = str;
            return this;
        }

        public Builder setSplashShowTime(long j) {
            if (j >= m.ag) {
                this.splashShowTime = j;
            }
            return this;
        }

        public Builder setWxAppid(String str) {
            this.wx_appid = str;
            return this;
        }

        public Builder showFeedAdLogo(boolean z) {
            this.showFeedAdLogo = z;
            return this;
        }

        public Builder showLogo(boolean z) {
            this.showLogo = z;
            return this;
        }

        public Builder splashClickPause(boolean z) {
            this.splashClickPause = z;
            return this;
        }

        public Builder splashClickText(String str) {
            this.splashClickText = str;
            return this;
        }

        public Builder userAdvertiserId(@NonNull String... strArr) {
            if (strArr != null) {
                this.advertiserId = strArr;
            }
            return this;
        }

        public Builder userAge(int i) {
            if (i > 0 && 150 > i) {
                this.userAge = Integer.valueOf(i);
            }
            return this;
        }

        public Builder userDenyAderIds(String str) {
            this.deny_ader_ids = str;
            return this;
        }

        public Builder userDenyCats(String str) {
            this.deny_cats = str;
            return this;
        }

        public Builder userDenyCids(String str) {
            this.deny_cids = str;
            return this;
        }

        public Builder userExt(@NonNull String str) {
            if (!TextUtils.isEmpty(str)) {
                this.ext = str;
            }
            return this;
        }

        public Builder userGender(@NonNull String str) {
            if (HRConfig.GENDER_UNKNOWN.equals(str) || HRConfig.GENDER_MALE.equals(str) || HRConfig.GENDER_FEMALE.equals(str)) {
                this.userGender = str;
            }
            return this;
        }

        public Builder userId(@NonNull String str) {
            this.userId = str;
            return this;
        }

        public Builder userKeywords(@NonNull String str) {
            if (!TextUtils.isEmpty(str)) {
                this.userKeywords = str;
            }
            return this;
        }

        public Builder userPreRenderPaddings(int i, int i2, int i3, int i4) {
            if (this.preRenderPaddings == null) {
                this.preRenderPaddings = new int[4];
            }
            int[] iArr = this.preRenderPaddings;
            iArr[0] = i;
            iArr[1] = i2;
            iArr[2] = i3;
            iArr[3] = i4;
            return this;
        }

        public Builder userType(int i) {
            this.userType = Integer.valueOf(i);
            return this;
        }

        public Builder webViewActivity(@NonNull Class<? extends Activity> cls) {
            this.webViewActivity = cls;
            return this;
        }

        public Builder webViewClient(@NonNull Class<? extends cn.haorui.sdk.core.webview.c> cls) {
            this.webViewClient = cls;
            return this;
        }

        public Builder webviewDownloadListener(@NonNull Class<? extends cn.haorui.sdk.core.webview.a> cls) {
            this.webViewDownloadListener = cls;
            return this;
        }
    }

    public static abstract class CustomController {
        public boolean canUseMacAddress() {
            return true;
        }

        public boolean enablePersonalRecommend() {
            return true;
        }

        public String getAndroidId() {
            return null;
        }

        public String getImei() {
            return null;
        }

        public String getMacAddress() {
            return null;
        }

        public String getOaid() {
            return null;
        }

        public boolean isCanUseAndroidId() {
            return true;
        }

        public boolean isCanUseImei() {
            return true;
        }

        public boolean isCanUseLocation() {
            return true;
        }
    }

    private HRConfig(Builder builder) {
        this.splashClickPause = true;
        this.showLogo = true;
        this.enableInterstitialAutoClose = true;
        this.canUseSdkPersonalRecommend = true;
        this.splashShowTime = f.a;
        this.appId = builder.appId;
        this.enableDebug = builder.enableDebug;
        this.enableNotify = builder.enableNotify;
        this.enableOaid = builder.enableOaid;
        this.downloadConfirm = builder.downloadConfirm;
        this.secure = builder.secure;
        this.userId = builder.userId;
        this.userType = builder.userType;
        this.userAge = builder.userAge;
        this.userGender = builder.userGender;
        this.userKeywords = builder.userKeywords;
        this.customController = builder.customController;
        this.webViewDownloadListener = builder.webViewDownloadListener;
        this.webViewClient = builder.webViewClient;
        this.webViewActivity = builder.webViewActivity;
        this.ext = builder.ext;
        this.preRenderPaddings = builder.preRenderPaddings;
        this.showFeedAdLogo = builder.showFeedAdLogo;
        this.splashClickText = builder.splashClickText;
        this.deny_cats = builder.deny_cats;
        this.deny_cids = builder.deny_cids;
        this.deny_ader_ids = builder.deny_ader_ids;
        this.splashClickPause = builder.splashClickPause;
        this.wx_appid = builder.wx_appid;
        this.advertiserId = builder.advertiserId;
        this.showLogo = builder.showLogo;
        this.oaid_cert_name = builder.oaid_cert_name;
        this.canUseSdkPersonalRecommend = builder.canUseSdkPersonalRecommend;
        this.enableInterstitialAutoClose = builder.enableInterstitialAutoClose;
        this.splashShowTime = builder.splashShowTime;
    }

    public static long initTime() {
        return initTime;
    }

    public static String initUUID() {
        return initUUID;
    }

    public String appId() {
        return this.appId;
    }

    public CustomController customController() {
        return this.customController;
    }

    public int downloadConfirm() {
        return this.downloadConfirm;
    }

    public void downloadConfirm(int i) {
        if (i == 0 || 1 == i || 2 == i) {
            this.downloadConfirm = i;
        }
    }

    public boolean enableDebug() {
        return this.enableDebug;
    }

    public boolean enableNotify() {
        return this.enableNotify;
    }

    public boolean enableOaid() {
        return this.enableOaid;
    }

    public void enableSdkPersonalRecommend(boolean z) {
        this.canUseSdkPersonalRecommend = z;
    }

    public boolean getCanUseSdkPersonalRecommend() {
        return this.canUseSdkPersonalRecommend;
    }

    public boolean getEnableInterstitialAutoClose() {
        return this.enableInterstitialAutoClose;
    }

    public String getOaidCertName() {
        return this.oaid_cert_name;
    }

    public long getSplashShowTime() {
        return this.splashShowTime;
    }

    public String getWxAppid() {
        return this.wx_appid;
    }

    public boolean isTest() {
        return false;
    }

    public int secure() {
        return this.secure;
    }

    public void setEnableInterstitialAutoClose(boolean z) {
        this.enableInterstitialAutoClose = z;
    }

    public void setOaidCertName(String str) {
        this.oaid_cert_name = str;
    }

    public void setSplashShowTime(long j) {
        if (j < m.ag) {
            return;
        }
        this.splashShowTime = j;
    }

    public void setUserKeyWords(String str) {
        this.userKeywords = str;
    }

    public void setWxAppid(String str) {
        this.wx_appid = str;
    }

    public boolean showFeedAdLogo() {
        return this.showFeedAdLogo;
    }

    public void showLogo(boolean z) {
        this.showLogo = z;
    }

    public boolean showLogo() {
        return this.showLogo;
    }

    public void splashClickPause(boolean z) {
        this.splashClickPause = z;
    }

    public boolean splashClickPause() {
        return this.splashClickPause;
    }

    public String splashClickText() {
        return this.splashClickText;
    }

    public void splashClickText(String str) {
        this.splashClickText = str;
    }

    public void userAdvertiserId(String... strArr) {
        this.advertiserId = strArr;
    }

    public String[] userAdvertiserId() {
        return this.advertiserId;
    }

    public Integer userAge() {
        return this.userAge;
    }

    public String userDenyAderIds() {
        return this.deny_ader_ids;
    }

    public void userDenyAderIds(String str) {
        this.deny_ader_ids = str;
    }

    public String userDenyCats() {
        return this.deny_cats;
    }

    public void userDenyCats(String str) {
        this.deny_cats = str;
    }

    public String userDenyCids() {
        return this.deny_cids;
    }

    public void userDenyCids(String str) {
        this.deny_cids = str;
    }

    public String userExt() {
        return this.ext;
    }

    public void userExt(String str) {
        this.ext = str;
    }

    public String userGender() {
        return this.userGender;
    }

    public String userId() {
        return this.userId;
    }

    public void userId(String str) {
        this.userId = str;
    }

    public String userKeywords() {
        return this.userKeywords;
    }

    public void userKeywords(String str) {
        this.userKeywords = str;
    }

    public void userPreRenderPaddings(int i, int i2, int i3, int i4) {
        if (this.preRenderPaddings == null) {
            this.preRenderPaddings = new int[4];
        }
        int[] iArr = this.preRenderPaddings;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        iArr[3] = i4;
    }

    public int[] userPreRenderPaddings() {
        return this.preRenderPaddings;
    }

    public Integer userType() {
        return this.userType;
    }

    public Class<? extends Activity> webViewActivity() {
        return this.webViewActivity;
    }

    public Class<? extends cn.haorui.sdk.core.webview.c> webViewClient() {
        return this.webViewClient;
    }

    public Class<? extends cn.haorui.sdk.core.webview.a> webViewDownloadListener() {
        return this.webViewDownloadListener;
    }
}

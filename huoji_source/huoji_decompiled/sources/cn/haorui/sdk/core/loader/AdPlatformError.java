package cn.haorui.sdk.core.loader;

import cn.haorui.sdk.core.domain.SdkAdInfo;
import com.google.gson.GsonBuilder;

/* JADX INFO: loaded from: classes.dex */
public class AdPlatformError {
    public SdkAdInfo adInfo;
    public Integer code;
    public String message;
    public String platform;

    public AdPlatformError() {
        this.code = -1;
    }

    public AdPlatformError(String str, Integer num) {
        this.code = -1;
        this.message = str;
        this.code = num;
    }

    public Integer getCode() {
        return this.code;
    }

    public String getMessage() {
        return this.message;
    }

    public String getPlatform() {
        return this.platform;
    }

    public SdkAdInfo getSdkInfo() {
        return this.adInfo;
    }

    public void post(IAdLoadListener iAdLoadListener) {
        if (iAdLoadListener != null) {
            iAdLoadListener.onAdPlatformError(this);
            iAdLoadListener.onAdError();
        }
    }

    public String toString() {
        return new GsonBuilder().serializeNulls().create().toJson(this);
    }
}

package cn.haorui.sdk.platform.hr;

import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.utils.HRConstants;

/* JADX INFO: loaded from: classes.dex */
public class HRPlatformError extends AdPlatformError {
    public HRPlatformError(String str, Integer num) {
        this.platform = HRConstants.PLATFORM_HR;
        this.message = str;
        this.code = num;
    }
}

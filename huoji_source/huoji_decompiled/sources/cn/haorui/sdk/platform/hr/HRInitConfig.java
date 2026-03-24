package cn.haorui.sdk.platform.hr;

import cn.haorui.sdk.core.a;
import cn.haorui.sdk.core.b;
import cn.haorui.sdk.core.utils.HRConstants;

/* JADX INFO: loaded from: classes.dex */
public class HRInitConfig extends b {
    public static HRInitConfig getInstance() {
        return (HRInitConfig) a.a(HRConstants.PLATFORM_HR).config();
    }
}

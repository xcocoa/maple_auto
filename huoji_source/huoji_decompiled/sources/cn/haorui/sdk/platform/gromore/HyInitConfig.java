package cn.haorui.sdk.platform.gromore;

import android.content.Context;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.HRConfig;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomInitConfig;
import com.bytedance.msdk.api.v2.ad.custom.init.GMCustomAdapterConfiguration;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HyInitConfig extends GMCustomAdapterConfiguration {
    public String getAdapterSdkVersion() {
        return "1.0.0.0";
    }

    public String getNetworkSdkVersion() {
        return AdSdk.getVersionName();
    }

    public void initializeADN(Context context, GMCustomInitConfig gMCustomInitConfig, Map<String, Object> map) {
        AdSdk.init(context, new HRConfig.Builder().appId(gMCustomInitConfig.getAppId()).enableDebug(true).downloadConfirm(1).build());
    }
}

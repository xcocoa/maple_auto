package cn.haorui.sdk.platform.csjblend;

import android.content.Context;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.HRConfig;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomInitLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomInitConfig;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HYCBInitConfig extends MediationCustomInitLoader {
    public String getNetworkSdkVersion() {
        return AdSdk.getVersionName();
    }

    public void initializeADN(Context context, MediationCustomInitConfig mediationCustomInitConfig, Map<String, Object> map) {
        AdSdk.init(context, new HRConfig.Builder().appId(mediationCustomInitConfig.getAppId()).enableDebug(true).downloadConfirm(1).build());
    }
}

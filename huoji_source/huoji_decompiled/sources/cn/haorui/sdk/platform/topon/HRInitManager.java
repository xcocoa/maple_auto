package cn.haorui.sdk.platform.topon;

import android.content.Context;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.HRConfig;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.MediationInitCallback;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HRInitManager extends ATInitMediation {
    private static HRInitManager sInstance;
    private boolean isInit;

    private HRInitManager() {
    }

    public static HRInitManager getInstance() {
        if (sInstance == null) {
            synchronized (HRInitManager.class) {
                if (sInstance == null) {
                    sInstance = new HRInitManager();
                }
            }
        }
        return sInstance;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "HR Custom";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        try {
            return AdSdk.getVersionName();
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        if (this.isInit) {
            mediationInitCallback.onSuccess();
            return;
        }
        AdSdk.init(context, new HRConfig.Builder().appId((String) map.get("app_id")).enableDebug(true).downloadConfirm(1).build());
        this.isInit = true;
        mediationInitCallback.onSuccess();
    }
}

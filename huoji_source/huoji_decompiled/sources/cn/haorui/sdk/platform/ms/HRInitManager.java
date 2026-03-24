package cn.haorui.sdk.platform.ms;

import android.content.Context;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.HRConfig;
import com.anythink.expressad.exoplayer.f;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class HRInitManager {
    private static final String TAG = "HRInitManager";
    private static HRInitManager sInstance;
    private boolean isInit;
    private String oaid = "";
    private long splashShowTime = f.a;

    public interface InitCallback {
        void onError(int i, String str);

        void onSuccess();
    }

    public static synchronized HRInitManager getInstance() {
        if (sInstance == null) {
            sInstance = new HRInitManager();
        }
        return sInstance;
    }

    public synchronized void initSdk(Context context, String str, InitCallback initCallback) {
        if (this.isInit) {
            if (initCallback != null) {
                initCallback.onSuccess();
            }
            return;
        }
        try {
            this.oaid = (String) Class.forName("com.meishu.sdk.core.AdSdk").getMethod("getLocalOaid", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            Object objInvoke = Class.forName("com.meishu.sdk.core.AdSdk").getMethod("adConfig", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = Class.forName("com.meishu.sdk.core.MSAdConfig").getDeclaredField("splashShowTime");
            declaredField.setAccessible(true);
            this.splashShowTime = declaredField.getLong(objInvoke);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        AdSdk.init(context, new HRConfig.Builder().appId(str).enableDebug(true).downloadConfirm(1).setSplashShowTime(this.splashShowTime).customController(new HRConfig.CustomController() { // from class: cn.haorui.sdk.platform.ms.HRInitManager.1
            @Override // cn.haorui.sdk.core.HRConfig.CustomController
            public String getOaid() {
                return HRInitManager.this.oaid;
            }
        }).build());
        this.isInit = true;
        if (initCallback != null) {
            initCallback.onSuccess();
        }
    }
}

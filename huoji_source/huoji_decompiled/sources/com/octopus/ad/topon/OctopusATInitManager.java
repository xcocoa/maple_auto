package com.octopus.ad.topon;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.MediationInitCallback;
import com.octopus.ad.Octopus;
import com.octopus.ad.OctopusAdSdkController;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class OctopusATInitManager extends ATInitMediation {
    public static final String TAG = "OctopusATInitManager";
    private static volatile OctopusATInitManager sInstance;
    private String mAppId;
    private boolean mHasInit;
    private List<MediationInitCallback> mListeners;
    private final Object mLock = new Object();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final AtomicBoolean mIsIniting = new AtomicBoolean(false);

    private OctopusATInitManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackResult(boolean z, String str, String str2) {
        synchronized (this.mLock) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                MediationInitCallback mediationInitCallback = this.mListeners.get(i);
                if (mediationInitCallback != null) {
                    if (z) {
                        mediationInitCallback.onSuccess();
                    } else {
                        mediationInitCallback.onFail(str + " | " + str2);
                    }
                }
            }
            this.mListeners.clear();
            this.mIsIniting.set(false);
        }
    }

    public static OctopusATInitManager getInstance() {
        if (sInstance == null) {
            synchronized (OctopusATInitManager.class) {
                if (sInstance == null) {
                    sInstance = new OctopusATInitManager();
                }
            }
        }
        return sInstance;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Octopus";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return Octopus.getSdkVersion();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(final Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        if (this.mHasInit) {
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
                return;
            }
            return;
        }
        synchronized (this.mLock) {
            if (this.mIsIniting.get()) {
                if (mediationInitCallback != null) {
                    this.mListeners.add(mediationInitCallback);
                }
                return;
            }
            if (this.mListeners == null) {
                this.mListeners = new ArrayList();
            }
            this.mIsIniting.set(true);
            if (map.containsKey("app_id")) {
                this.mAppId = (String) map.get("app_id");
            }
            if (mediationInitCallback != null) {
                this.mListeners.add(mediationInitCallback);
            }
            if (!TextUtils.isEmpty(this.mAppId)) {
                this.mHandler.post(new Runnable() { // from class: com.octopus.ad.topon.OctopusATInitManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Octopus.init(context, OctopusATInitManager.this.mAppId, new OctopusAdSdkController() { // from class: com.octopus.ad.topon.OctopusATInitManager.1.1
                                @Override // com.octopus.ad.OctopusAdSdkController
                                public String getImei() {
                                    return super.getImei();
                                }

                                @Override // com.octopus.ad.OctopusAdSdkController
                                public String getOaid() {
                                    return super.getOaid();
                                }

                                @Override // com.octopus.ad.OctopusAdSdkController
                                public boolean isCanUsePhoneState() {
                                    return super.isCanUsePhoneState();
                                }
                            });
                            Octopus.setIsDownloadDirect(false);
                            Octopus.setLimitPersonalAds(false);
                            OctopusATInitManager.this.mHasInit = true;
                            OctopusATInitManager.this.callbackResult(true, null, null);
                            Log.i(OctopusATInitManager.TAG, "init success");
                        } catch (Throwable unused) {
                            OctopusATInitManager.this.callbackResult(false, "80000", "init fail");
                            Log.i(OctopusATInitManager.TAG, "init fail");
                        }
                    }
                });
            } else {
                callbackResult(false, "80000", "AppId is empty!");
                Log.i(TAG, "init fail");
            }
        }
    }
}

package com.anythink.core.common.b;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.res.b;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class p implements ATCustomLoadListenerExt {
    public ATCustomLoadListener a;
    public Map<String, Object> b;
    public int c;

    public p(ATCustomLoadListener aTCustomLoadListener, Map<String, Object> map, int i) {
        this.c = -1;
        this.a = aTCustomLoadListener;
        this.b = map;
        this.c = i;
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public final void onAdCacheLoaded(BaseAd... baseAdArr) {
        if (this.c != 0) {
            ATCustomLoadListener aTCustomLoadListener = this.a;
            if (aTCustomLoadListener != null) {
                aTCustomLoadListener.onAdCacheLoaded(new BaseAd[0]);
                return;
            }
            return;
        }
        if (baseAdArr.length <= 0) {
            ATCustomLoadListener aTCustomLoadListener2 = this.a;
            if (aTCustomLoadListener2 != null) {
                aTCustomLoadListener2.onAdLoadError("10011", "load fail with no adObject");
                return;
            }
            return;
        }
        final BaseAd baseAd = baseAdArr[0];
        if (TextUtils.isEmpty(baseAd.getMainImageUrl())) {
            this.a.onAdCacheLoaded(new com.anythink.core.common.f.a.e(baseAd, this.b));
        } else {
            com.anythink.core.common.res.b.a(n.a().f()).a(new com.anythink.core.common.res.e(2, baseAd.getMainImageUrl()), 0, 0, new b.a() { // from class: com.anythink.core.common.b.p.1
                @Override // com.anythink.core.common.res.b.a
                public final void onFail(String str, String str2) {
                    ATCustomLoadListener aTCustomLoadListener3 = p.this.a;
                    if (aTCustomLoadListener3 != null) {
                        aTCustomLoadListener3.onAdLoadError("10011", "load image fail:".concat(String.valueOf(str2)));
                    }
                }

                @Override // com.anythink.core.common.res.b.a
                public final void onSuccess(String str, Bitmap bitmap) {
                    p pVar;
                    ATCustomLoadListener aTCustomLoadListener3;
                    if (!TextUtils.equals(str, baseAd.getMainImageUrl()) || (aTCustomLoadListener3 = (pVar = p.this).a) == null) {
                        return;
                    }
                    aTCustomLoadListener3.onAdCacheLoaded(new com.anythink.core.common.f.a.e(baseAd, pVar.b));
                }
            });
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public final void onAdDataLoaded() {
        ATCustomLoadListener aTCustomLoadListener = this.a;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdDataLoaded();
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListenerExt
    public final void onAdDataLoadedWithAds(BaseAd... baseAdArr) {
        ATCustomLoadListener aTCustomLoadListener = this.a;
        if (aTCustomLoadListener instanceof ATCustomLoadListenerExt) {
            ((ATCustomLoadListenerExt) aTCustomLoadListener).onAdDataLoadedWithAds(baseAdArr);
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public final void onAdLoadError(String str, String str2) {
        ATCustomLoadListener aTCustomLoadListener = this.a;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(str, str2);
        }
    }
}

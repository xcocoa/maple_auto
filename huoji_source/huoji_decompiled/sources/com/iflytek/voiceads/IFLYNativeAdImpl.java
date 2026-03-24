package com.iflytek.voiceads;

import android.content.Context;
import com.iflytek.voiceads.c.a;
import com.iflytek.voiceads.listener.IFLYNativeListener;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class IFLYNativeAdImpl extends IFLYNativeAd {
    private a a;

    public IFLYNativeAdImpl(Context context, String str, IFLYNativeListener iFLYNativeListener) {
        this.a = new a(context, str, iFLYNativeListener);
    }

    public void loadAd() {
        if (this.a != null) {
            this.a.a();
        }
    }

    public void setParameter(String str, Object obj) {
        if (this.a != null) {
            this.a.a(str, obj);
        }
    }
}

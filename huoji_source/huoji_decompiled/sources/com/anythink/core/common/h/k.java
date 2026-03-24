package com.anythink.core.common.h;

import com.anythink.core.api.AdError;

/* JADX INFO: loaded from: classes.dex */
public interface k {
    void onLoadCanceled(int i);

    void onLoadError(int i, String str, AdError adError);

    void onLoadFinish(int i, Object obj);

    void onLoadStart(int i);
}

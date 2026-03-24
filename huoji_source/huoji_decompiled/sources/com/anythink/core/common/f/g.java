package com.anythink.core.common.f;

import com.anythink.core.api.AdError;

/* JADX INFO: loaded from: classes.dex */
public final class g extends IllegalStateException {
    public AdError a;
    public String b;

    public g(AdError adError, String str) {
        this.a = adError;
        this.b = str;
    }
}

package com.anythink.expressad.exoplayer.d;

import android.annotation.TargetApi;
import android.media.MediaCrypto;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class k implements i {
    private final MediaCrypto a;
    private final boolean b;

    private k(MediaCrypto mediaCrypto) {
        this(mediaCrypto, false);
    }

    public k(MediaCrypto mediaCrypto, boolean z) {
        this.a = (MediaCrypto) com.anythink.expressad.exoplayer.k.a.a(mediaCrypto);
        this.b = z;
    }

    public final MediaCrypto a() {
        return this.a;
    }

    @Override // com.anythink.expressad.exoplayer.d.i
    public final boolean a(String str) {
        return !this.b && this.a.requiresSecureDecoderComponent(str);
    }
}

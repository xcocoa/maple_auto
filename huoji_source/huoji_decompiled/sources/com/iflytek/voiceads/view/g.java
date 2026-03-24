package com.iflytek.voiceads.view;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.iflytek.voiceads.b.a;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class g implements a.InterfaceC0180a {
    final /* synthetic */ ImageView a;
    final /* synthetic */ InterstitialAdView b;

    g(InterstitialAdView interstitialAdView, ImageView imageView) {
        this.b = interstitialAdView;
        this.a = imageView;
    }

    @Override // com.iflytek.voiceads.b.a.InterfaceC0180a
    public void a(Bitmap bitmap) {
        if (bitmap != null) {
            this.a.setImageBitmap(bitmap);
        }
    }
}

package com.octopus.ad.internal.view;

import android.graphics.Canvas;
import com.octopus.ad.internal.view.e;

/* JADX INFO: loaded from: classes2.dex */
public class f extends AdWebView {
    public e c;

    public f(AdViewImpl adViewImpl, e eVar) {
        super(adViewImpl);
        this.b = e.a[e.b.STARTING_EXPANDED.ordinal()];
        this.c = eVar;
    }

    @Override // com.octopus.ad.internal.view.AdWebView
    public void e() {
        super.e();
        this.c.a();
    }

    @Override // com.octopus.ad.internal.view.AdWebView, android.webkit.WebView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }
}

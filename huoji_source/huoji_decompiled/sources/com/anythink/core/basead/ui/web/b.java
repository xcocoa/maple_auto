package com.anythink.core.basead.ui.web;

import android.webkit.WebView;
import com.anythink.core.common.f.bb;

/* JADX INFO: loaded from: classes.dex */
public interface b {
    void callbackClickResult(bb bbVar);

    WebProgressBarView getWebProgressBarView();

    void onWebFinish();

    void onWebPageFinish(WebView webView, String str);

    void onWebPageLoadError(WebView webView, String str);

    void onWebPageStart(WebView webView, String str);

    void recordRedirectUrl(String str);
}

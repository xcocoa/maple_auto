package com.anythink.core.basead.ui.web;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.anythink.core.common.f.bb;
import com.anythink.core.common.o.i;
import com.anythink.core.common.res.d;

/* JADX INFO: loaded from: classes.dex */
public final class a extends WebViewClient {
    private b a;

    public a(b bVar) {
        this.a = bVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        b bVar = this.a;
        if (bVar != null) {
            bVar.onWebPageFinish(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        b bVar = this.a;
        if (bVar != null) {
            bVar.onWebPageStart(webView, str);
            WebProgressBarView webProgressBarView = this.a.getWebProgressBarView();
            if (webProgressBarView != null) {
                webProgressBarView.setVisibility(0);
                webProgressBarView.setProgress(0);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        b bVar = this.a;
        if (bVar != null) {
            bVar.onWebPageLoadError(webView, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(26)
    public final boolean onRenderProcessGone(@Nullable WebView webView, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
        b bVar = this.a;
        if (bVar == null) {
            return true;
        }
        bVar.onWebFinish();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!TextUtils.isEmpty(str) && !d.a.equals(str)) {
            b bVar = this.a;
            if (bVar != null) {
                bVar.recordRedirectUrl(str);
            }
            bb bbVarA = com.anythink.core.basead.a.a.a(webView.getContext(), str);
            if (bbVarA.m) {
                b bVar2 = this.a;
                if (bVar2 != null) {
                    bVar2.callbackClickResult(bbVarA);
                }
                return true;
            }
            b bVar3 = this.a;
            if (bVar3 != null) {
                bVar3.callbackClickResult(bbVarA);
            }
            bb bbVarA2 = com.anythink.core.basead.a.a.a(str);
            b bVar4 = this.a;
            if (bVar4 != null) {
                bVar4.callbackClickResult(bbVarA2);
            }
            if (!TextUtils.equals(bbVarA2.o, str)) {
                webView.loadUrl(bbVarA2.o);
                return true;
            }
            if (!i.d(str)) {
                return true;
            }
        }
        return false;
    }
}

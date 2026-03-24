package com.iflytek.voiceads.f;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iflytek.voiceads.utils.g;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class b extends WebViewClient {
    private boolean a = false;
    private boolean b = false;
    private boolean c = false;
    private d d;

    public b(d dVar) {
        this.d = dVar;
    }

    public void a(boolean z) {
        this.c = z;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        g.a("IFLY_AD_SDK", "onPageFinished:" + this.b);
        if (!this.b) {
            this.a = true;
        }
        if (!this.a || this.b) {
            this.b = false;
        } else {
            this.d.b();
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        a(false);
        this.a = false;
        this.b = false;
        this.d.a();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        this.d.a(i, str);
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslError.getPrimaryError() == 5) {
            sslErrorHandler.proceed();
        } else {
            sslErrorHandler.cancel();
            this.d.a(-1, sslError.toString());
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        g.a("IFLY_AD_SDK", "shouldOverrideUrlLoading:" + this.c + this.a);
        if (this.c) {
            a(false);
            this.d.a(webView, str);
        } else {
            if (!this.a) {
                this.b = true;
            }
            this.a = false;
            webView.loadUrl(str);
            g.a("IFLY_AD_SDK", "shouldOverrideUrlLoading click=false");
        }
        return true;
    }
}

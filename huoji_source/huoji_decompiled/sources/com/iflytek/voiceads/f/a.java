package com.iflytek.voiceads.f;

import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a extends WebChromeClient {
    private int a;
    private c b;

    public a(c cVar) {
        this.b = cVar;
    }

    private void a(int i) {
        this.a = i;
    }

    public int a() {
        return this.a;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        this.b.a(str, str2, str3, jsPromptResult);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        a(i);
        this.b.a(i);
    }
}

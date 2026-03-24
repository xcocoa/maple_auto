package com.octopus.ad.internal.view;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.octopus.ad.R;
import com.octopus.ad.internal.utilities.HaoboLog;

/* JADX INFO: loaded from: classes2.dex */
public class a extends WebChromeClient {
    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        HaoboLog.v(HaoboLog.jsLogTag, HaoboLog.getString(R.string.console_message, consoleMessage.message(), consoleMessage.lineNumber(), consoleMessage.sourceId()));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        HaoboLog.v(HaoboLog.jsLogTag, HaoboLog.getString(R.string.js_alert, str2, str));
        jsResult.confirm();
        return true;
    }
}

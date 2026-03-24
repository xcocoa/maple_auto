package com.iflytek.voiceads.request;

import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class c extends WebChromeClient {
    final /* synthetic */ IFLYBrowser a;

    c(IFLYBrowser iFLYBrowser) {
        this.a = iFLYBrowser;
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        permissionRequest.grant(permissionRequest.getResources());
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        if (i != 100) {
            this.a.f.setVisibility(0);
            this.a.f.setProgress(i);
        } else if (this.a.f != null) {
            this.a.f.setVisibility(8);
        }
    }
}

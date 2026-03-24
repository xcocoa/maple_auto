package com.iflytek.voiceads.bridge;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class h extends WebChromeClient {
    final /* synthetic */ DSBridgeWebView a;

    h(DSBridgeWebView dSBridgeWebView) {
        this.a = dSBridgeWebView;
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        return this.a.g != null ? this.a.g.getDefaultVideoPoster() : super.getDefaultVideoPoster();
    }

    @Override // android.webkit.WebChromeClient
    public View getVideoLoadingProgressView() {
        return this.a.g != null ? this.a.g.getVideoLoadingProgressView() : super.getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
        if (this.a.g != null) {
            this.a.g.getVisitedHistory(valueCallback);
        } else {
            super.getVisitedHistory(valueCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        if (this.a.g != null) {
            this.a.g.onCloseWindow(webView);
        } else {
            super.onCloseWindow(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        if (this.a.g != null) {
            this.a.g.onConsoleMessage(str, i, str2);
        } else {
            super.onConsoleMessage(str, i, str2);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return this.a.g != null ? this.a.g.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z3, Message message) {
        return this.a.g != null ? this.a.g.onCreateWindow(webView, z, z3, message) : super.onCreateWindow(webView, z, z3, message);
    }

    @Override // android.webkit.WebChromeClient
    public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        if (this.a.g != null) {
            this.a.g.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        } else {
            super.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        if (this.a.g != null) {
            this.a.g.onGeolocationPermissionsHidePrompt();
        } else {
            super.onGeolocationPermissionsHidePrompt();
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        if (this.a.g != null) {
            this.a.g.onGeolocationPermissionsShowPrompt(str, callback);
        } else {
            super.onGeolocationPermissionsShowPrompt(str, callback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        if (this.a.g != null) {
            this.a.g.onHideCustomView();
        } else {
            super.onHideCustomView();
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (!this.a.i) {
            jsResult.confirm();
        }
        if (this.a.g == null || !this.a.g.onJsAlert(webView, str, str2, jsResult)) {
            try {
                if (!(this.a.getContext() instanceof Activity) || !((Activity) this.a.getContext()).isFinishing()) {
                    new AlertDialog.Builder(this.a.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(R.string.ok, new i(this, jsResult)).create().show();
                }
            } catch (Exception e) {
                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "onJsAlert:" + e.getMessage());
            }
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return this.a.g != null ? this.a.g.onJsBeforeUnload(webView, str, str2, jsResult) : super.onJsBeforeUnload(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        if (!this.a.i) {
            jsResult.confirm();
        }
        if (this.a.g == null || !this.a.g.onJsConfirm(webView, str, str2, jsResult)) {
            j jVar = new j(this, jsResult);
            try {
                if (!(this.a.getContext() instanceof Activity) || !((Activity) this.a.getContext()).isFinishing()) {
                    new AlertDialog.Builder(this.a.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(R.string.ok, jVar).setNegativeButton(R.string.cancel, jVar).show();
                }
            } catch (Exception e) {
                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "onJsConfirm:" + e.getMessage());
            }
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        if (Build.VERSION.SDK_INT > 16 || !str2.startsWith("_dsbridge=")) {
            if (!this.a.i) {
                jsPromptResult.confirm();
            }
            if (this.a.g == null || !this.a.g.onJsPrompt(webView, str, str2, str3, jsPromptResult)) {
                EditText editText = new EditText(this.a.getContext());
                editText.setText(str3);
                if (str3 != null) {
                    editText.setSelection(str3.length());
                }
                float f = this.a.getContext().getResources().getDisplayMetrics().density;
                k kVar = new k(this, jsPromptResult, editText);
                new AlertDialog.Builder(this.a.getContext()).setTitle(str2).setView(editText).setCancelable(false).setPositiveButton(R.string.ok, kVar).setNegativeButton(R.string.cancel, kVar).show();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                int i = (int) (16.0f * f);
                layoutParams.setMargins(i, 0, i, 0);
                layoutParams.gravity = 1;
                editText.setLayoutParams(layoutParams);
                int i2 = (int) (15.0f * f);
                editText.setPadding(i2 - ((int) (f * 5.0f)), i2, i2, i2);
            }
        } else {
            jsPromptResult.confirm(this.a.l.a(str2.substring("_dsbridge=".length()), str3));
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsTimeout() {
        return this.a.g != null ? this.a.g.onJsTimeout() : super.onJsTimeout();
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        if (this.a.g != null) {
            this.a.g.onPermissionRequest(permissionRequest);
        } else {
            super.onPermissionRequest(permissionRequest);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
        if (this.a.g != null) {
            this.a.g.onPermissionRequestCanceled(permissionRequest);
        } else {
            super.onPermissionRequestCanceled(permissionRequest);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        if (this.a.g != null) {
            this.a.g.onProgressChanged(webView, i);
        } else {
            super.onProgressChanged(webView, i);
        }
    }

    public void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        if (this.a.g != null) {
            this.a.g.onReachedMaxAppCacheSize(j, j2, quotaUpdater);
        }
        super.onReachedMaxAppCacheSize(j, j2, quotaUpdater);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        if (this.a.g != null) {
            this.a.g.onReceivedIcon(webView, bitmap);
        } else {
            super.onReceivedIcon(webView, bitmap);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        if (this.a.g != null) {
            this.a.g.onReceivedTitle(webView, str);
        } else {
            super.onReceivedTitle(webView, str);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        if (this.a.g != null) {
            this.a.g.onReceivedTouchIconUrl(webView, str, z);
        } else {
            super.onReceivedTouchIconUrl(webView, str, z);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView webView) {
        if (this.a.g != null) {
            this.a.g.onRequestFocus(webView);
        } else {
            super.onRequestFocus(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        if (this.a.g != null) {
            this.a.g.onShowCustomView(view, i, customViewCallback);
        } else {
            super.onShowCustomView(view, i, customViewCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        if (this.a.g != null) {
            this.a.g.onShowCustomView(view, customViewCallback);
        } else {
            super.onShowCustomView(view, customViewCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        return this.a.g != null ? this.a.g.onShowFileChooser(webView, valueCallback, fileChooserParams) : super.onShowFileChooser(webView, valueCallback, fileChooserParams);
    }
}

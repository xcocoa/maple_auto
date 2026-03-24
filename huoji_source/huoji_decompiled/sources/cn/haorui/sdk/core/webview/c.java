package cn.haorui.sdk.core.webview;

import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes.dex */
public class c extends WebViewClient {
    public static final /* synthetic */ int b = 0;
    public Context a;

    public c(Context context) {
        this.a = context;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith("http")) {
            return false;
        }
        try {
            Intent uri = Intent.parseUri(str, 0);
            if (uri.resolveActivity(this.a.getPackageManager()) == null) {
                return true;
            }
            uri.setFlags(268435456);
            this.a.startActivity(uri);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }
}

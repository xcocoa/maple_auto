package com.anythink.expressad.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.anythink.expressad.foundation.b.a;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.h.s;
import com.anythink.expressad.foundation.webview.BrowserView;

/* JADX INFO: loaded from: classes.dex */
public class DomainATCommonActivity extends Activity {
    private static final String b = "ATCommonActivity";
    private c c;
    private BrowserView d;
    public String a = "";
    private BrowserView.a e = new BrowserView.a() { // from class: com.anythink.expressad.activity.DomainATCommonActivity.1
        @Override // com.anythink.expressad.foundation.webview.BrowserView.a
        public final void a() {
            DomainATCommonActivity.this.finish();
        }

        @Override // com.anythink.expressad.foundation.webview.BrowserView.a
        public final boolean a(WebView webView, String str) {
            if (s.a.a(str) && s.a.a(DomainATCommonActivity.this, str, null)) {
                DomainATCommonActivity.this.finish();
            }
            return DomainATCommonActivity.this.a(webView, str);
        }

        @Override // com.anythink.expressad.foundation.webview.BrowserView.a
        public final void b() {
        }
    };

    private void a() {
        String stringExtra = getIntent().getStringExtra(c.am);
        this.a = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            Toast.makeText(this, "Error: no data", 0).show();
            return;
        }
        this.c = (c) getIntent().getSerializableExtra("mvcommon");
        BrowserView browserView = new BrowserView(this, this.c);
        this.d = browserView;
        browserView.setListener(this.e);
        this.d.loadUrl(this.a);
        BrowserView browserView2 = this.d;
        if (browserView2 != null) {
            setContentView(browserView2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(WebView webView, String str) {
        String str2;
        try {
        } catch (Throwable th) {
            th.getMessage();
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Uri uri = Uri.parse(str);
        boolean z = true;
        if (!(uri.getScheme().equals("http") || uri.getScheme().equals("https")) && uri.getScheme().equals("intent")) {
            Intent uri2 = Intent.parseUri(str, 1);
            try {
                str2 = uri2.getPackage();
            } catch (Throwable th2) {
                th2.getMessage();
            }
            if (!TextUtils.isEmpty(str2) && getPackageManager().getLaunchIntentForPackage(str2) != null) {
                uri2.addCategory("android.intent.category.BROWSABLE");
                uri2.setComponent(null);
                if (Build.VERSION.SDK_INT >= 15) {
                    uri2.setSelector(null);
                }
                uri2.setFlags(268435456);
                startActivityForResult(uri2, 0);
                finish();
                return true;
            }
            try {
                String stringExtra = uri2.getStringExtra("browser_fallback_url");
                if (!TextUtils.isEmpty(stringExtra)) {
                    Uri uri3 = Uri.parse(str);
                    if (!uri3.getScheme().equals("http") && !uri3.getScheme().equals("https")) {
                        z = false;
                    }
                    if (z) {
                        webView.loadUrl(stringExtra);
                        return false;
                    }
                }
            } catch (Throwable th3) {
                th3.getMessage();
            }
            th.getMessage();
            return false;
        }
        return false;
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
        } catch (Throwable th) {
            th.getMessage();
        }
        if (a.c().e() == null) {
            a.c().a(getApplicationContext());
        }
        String stringExtra = getIntent().getStringExtra(c.am);
        this.a = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            Toast.makeText(this, "Error: no data", 0).show();
            return;
        }
        this.c = (c) getIntent().getSerializableExtra("mvcommon");
        BrowserView browserView = new BrowserView(this, this.c);
        this.d = browserView;
        browserView.setListener(this.e);
        this.d.loadUrl(this.a);
        BrowserView browserView2 = this.d;
        if (browserView2 != null) {
            setContentView(browserView2);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        BrowserView browserView = this.d;
        if (browserView != null) {
            browserView.destroy();
        }
    }
}

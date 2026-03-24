package com.iflytek.voiceads.request;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.iflytek.voiceads.bridge.DSBridgeWebView;
import com.iflytek.voiceads.bridge.o;
import com.iflytek.voiceads.listener.DialogListener;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class IFLYBrowser extends Activity {
    o a = new b(this);
    WebChromeClient b = new c(this);
    DialogListener c = new d(this);
    private DSBridgeWebView d;
    private LinearLayout e;
    private ProgressBar f;
    private com.iflytek.voiceads.bridge.b g;
    private String h;

    class a implements DownloadListener {
        a() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "self webView");
            com.iflytek.voiceads.download.d dVarA = com.iflytek.voiceads.download.d.a(IFLYBrowser.this.getApplicationContext());
            dVarA.a(IFLYBrowser.this.c);
            dVarA.a(IFLYBrowser.this.getIntent().getBooleanExtra("is_show", false));
            dVarA.a(IFLYBrowser.this, str);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        this.e = new LinearLayout(getApplicationContext());
        this.e.setOrientation(1);
        this.d = new DSBridgeWebView(getApplicationContext());
        this.d.getSettings().setDomStorageEnabled(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.f = new ProgressBar(getApplicationContext(), null, R.attr.progressBarStyleHorizontal);
        this.f.setMax(100);
        this.f.setProgress(0);
        this.e.addView(this.f, -1, 16);
        this.e.addView(this.d, layoutParams);
        setContentView(this.e);
        this.h = getIntent().getStringExtra("ad_session_id");
        this.d.a(this.a);
        this.d.setWebChromeClient(this.b);
        this.d.setDownloadListener(new a());
        this.g = new com.iflytek.voiceads.bridge.b(getApplicationContext(), this.d);
        this.d.a(this.g, (String) null);
        this.d.loadUrl(getIntent().getStringExtra("url_ad"));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "IFLYBrowser onDestroy");
        try {
            if (this.g != null) {
                this.g.a();
            }
            if (this.d != null) {
                this.e.removeView(this.d);
                this.d.stopLoading();
                this.d.getSettings().setJavaScriptEnabled(false);
                this.d.clearHistory();
                this.d.loadUrl(com.anythink.core.common.res.d.a);
                this.d.removeAllViews();
                this.d.destroy();
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "IFLYBrowser onDestroy " + e.getMessage());
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.g != null) {
            this.g.a();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }
}

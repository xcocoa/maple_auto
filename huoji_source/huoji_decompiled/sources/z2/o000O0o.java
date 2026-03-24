package z2;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class o000O0o extends Dialog {
    private String OoooOoO;
    private WebViewClient OoooOoo;
    private WebView Ooooo00;
    private LinearLayout Ooooo0o;
    private String OooooO0;

    public class OooO00o extends WebViewClient {
        private OooO00o() {
        }

        public /* synthetic */ OooO00o(o000O0o o000o0o, OooO00o oooO00o) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            o000O0o.this.OooO0oO(false);
            o000O0o.this.OoooOoo.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            o000O0o.this.OoooOoo.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            o000O0o.this.OoooOoo.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return o000O0o.this.OoooOoo.shouldOverrideUrlLoading(webView, str);
        }
    }

    public o000O0o(Context context, String str, WebViewClient webViewClient) {
        super(context, R.style.Theme.NoTitleBar);
        this.OoooOoO = str;
        this.OoooOoo = webViewClient;
    }

    private void OooO0o(RelativeLayout relativeLayout) {
        WebView webView = new WebView(getContext());
        this.Ooooo00 = webView;
        webView.setVerticalScrollBarEnabled(false);
        this.Ooooo00.setHorizontalScrollBarEnabled(false);
        if (this.OoooOoo == null) {
            this.OoooOoo = new WebViewClient();
        }
        this.Ooooo00.setWebViewClient(new OooO00o(this, null));
        this.Ooooo00.getSettings().setJavaScriptEnabled(true);
        relativeLayout.addView(this.Ooooo00, new RelativeLayout.LayoutParams(-1, -1));
    }

    private void OooO0o0(RelativeLayout relativeLayout) {
        Context context = getContext();
        this.Ooooo0o = new LinearLayout(context);
        ProgressBar progressBar = new ProgressBar(context);
        int iOooOOO = o00O000.OooOOO(context, 30.0f);
        this.Ooooo0o.addView(progressBar, new LinearLayout.LayoutParams(iOooOOO, iOooOOO));
        if (this.OooooO0 != null) {
            TextView textView = new TextView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.leftMargin = o00O000.OooOOO(context, 5.0f);
            layoutParams.gravity = 16;
            textView.setText(this.OooooO0);
            this.Ooooo0o.addView(textView, layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        relativeLayout.addView(this.Ooooo0o, layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0oO(boolean z) {
        LinearLayout linearLayout = this.Ooooo0o;
        if (linearLayout != null) {
            linearLayout.setVisibility(z ? 0 : 8);
        }
    }

    public void OooO0OO() {
        WebView webView = this.Ooooo00;
        if (webView != null) {
            webView.loadUrl(this.OoooOoO);
        }
    }

    public void OooO0Oo(String str) {
        this.OooooO0 = str;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundColor(-1);
        OooO0o(relativeLayout);
        OooO0o0(relativeLayout);
        addContentView(relativeLayout, new FrameLayout.LayoutParams(-1, -1));
    }
}

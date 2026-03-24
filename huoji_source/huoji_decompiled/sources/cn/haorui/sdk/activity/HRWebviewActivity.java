package cn.haorui.sdk.activity;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ZoomButtonsController;
import androidx.appcompat.app.AppCompatActivity;
import cn.haorui.sdk.R;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.loader.ShareInfo;
import cn.haorui.sdk.core.loader.ShareInteractionListener;
import cn.haorui.sdk.core.webview.a;
import cn.haorui.sdk.core.webview.c;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HRWebviewActivity extends AppCompatActivity {
    public static final String EXTRA_AD_AMID_KEY = "EXTRA_AD_AMID_KEY";
    public static final String EXTRA_AD_DURL_KEY = "EXTRA_AD_DURL_KEY";
    public static final String EXTRA_AD_UUID_KEY = "EXTRA_AD_UUID_KEY";
    private static ShareInteractionListener shareListener;
    public Map<String, String> extraHeaders = new HashMap();
    private String shareInfo;
    private WebView webView;

    public static void setShareListener(ShareInteractionListener shareInteractionListener) {
        shareListener = shareInteractionListener;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        a aVar;
        c cVar;
        super.onCreate(bundle);
        setContentView(R.layout.adsail_activity_webview);
        String[] stringArrayExtra = getIntent().getStringArrayExtra(EXTRA_AD_DURL_KEY);
        ImageView imageView = (ImageView) findViewById(R.id.adsail_img_share);
        WebView webView = (WebView) findViewById(R.id.adsail_webView);
        this.webView = webView;
        webView.setScrollBarStyle(0);
        this.extraHeaders.put("X-Requested-With", "");
        WebSettings settings = this.webView.getSettings();
        settings.setSavePassword(false);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        this.webView.setWebChromeClient(new WebChromeClient());
        WebView webView2 = this.webView;
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (AdSdk.adConfig().webViewDownloadListener() != null) {
            Constructor<? extends a> declaredConstructor = AdSdk.adConfig().webViewDownloadListener().getDeclaredConstructor(Context.class);
            declaredConstructor.setAccessible(true);
            aVar = declaredConstructor.newInstance(this);
        } else {
            aVar = new a(this);
        }
        webView2.setDownloadListener(aVar);
        WebView webView3 = this.webView;
        int i = c.b;
        try {
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        if (AdSdk.adConfig().webViewClient() != null) {
            Constructor<? extends c> declaredConstructor2 = AdSdk.adConfig().webViewClient().getDeclaredConstructor(Context.class);
            declaredConstructor2.setAccessible(true);
            cVar = declaredConstructor2.newInstance(this);
        } else {
            cVar = new c(this);
        }
        webView3.setWebViewClient(cVar);
        if (stringArrayExtra != null && stringArrayExtra.length > 0) {
            try {
                String queryParameter = Uri.parse(stringArrayExtra[0]).getQueryParameter("__adsail_share_info");
                this.shareInfo = queryParameter;
                if (shareListener == null || TextUtils.isEmpty(queryParameter)) {
                    imageView.setVisibility(4);
                } else {
                    imageView.setVisibility(0);
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRWebviewActivity.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (HRWebviewActivity.shareListener != null) {
                                HRWebviewActivity.shareListener.onShareButtonClicked(new ShareInfo(HRWebviewActivity.this.shareInfo, HRWebviewActivity.this.webView.getUrl()));
                            }
                        }
                    });
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.webView.loadUrl(stringArrayExtra[0], this.extraHeaders);
        }
        findViewById(R.id.adsail_img_close).setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRWebviewActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HRWebviewActivity.this.finish();
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        try {
            super.onDestroy();
            shareListener = null;
            this.webView.destroy();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.webView.canGoBack()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.webView.goBack();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        try {
            super.onPause();
            this.webView.onPause();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        try {
            super.onResume();
            this.webView.onResume();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setZoomControlGone(View view) {
        try {
            Field declaredField = WebView.class.getDeclaredField("mZoomButtonsController");
            declaredField.setAccessible(true);
            ZoomButtonsController zoomButtonsController = new ZoomButtonsController(view);
            zoomButtonsController.getZoomControls().setVisibility(8);
            try {
                declaredField.set(view, zoomButtonsController);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
            }
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
        } catch (SecurityException e4) {
            e4.printStackTrace();
        }
    }
}

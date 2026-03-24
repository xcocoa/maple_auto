package com.anythink.basead.ui.animplayerview;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.TranslateAnimation;
import android.webkit.CookieSyncManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.basead.ui.web.BaseWebView;
import com.anythink.core.basead.ui.web.WebProgressBarView;
import com.anythink.core.common.f.bb;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.n;
import com.anythink.core.common.res.image.RecycleImageView;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class WebLandpagePlayerView extends BaseAnimPlayerView implements com.anythink.core.basead.ui.web.b {
    public int A;
    public IOfferClickHandler B;
    public int C;
    public String D;
    public boolean E;
    private final int F;
    private final int G;
    private final int H;
    private final int I;
    private TranslateAnimation J;
    private TranslateAnimation K;
    private TranslateAnimation L;
    private WebView M;
    private com.anythink.core.basead.ui.web.c N;
    private ValueCallback<Uri[]> O;
    private final int P;
    private String Q;
    private int R;
    private Map<String, JSONArray> S;
    public LinearLayout y;
    public int z;

    /* JADX INFO: renamed from: com.anythink.basead.ui.animplayerview.WebLandpagePlayerView$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ Context a;

        public AnonymousClass1(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebLandpagePlayerView.a(WebLandpagePlayerView.this, this.a);
            WebLandpagePlayerView.a(WebLandpagePlayerView.this);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.animplayerview.WebLandpagePlayerView$2, reason: invalid class name */
    public class AnonymousClass2 implements Animation.AnimationListener {
        public AnonymousClass2() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
            if (WebLandpagePlayerView.this.M != null) {
                WebLandpagePlayerView.this.M.setVisibility(0);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.animplayerview.WebLandpagePlayerView$3, reason: invalid class name */
    public class AnonymousClass3 implements DownloadListener {
        public final /* synthetic */ Context a;

        public AnonymousClass3(Context context) {
            this.a = context;
        }

        @Override // android.webkit.DownloadListener
        public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            WebLandpagePlayerView webLandpagePlayerView = WebLandpagePlayerView.this;
            l lVar = webLandpagePlayerView.w;
            if (lVar == null || webLandpagePlayerView.x == null || TextUtils.isEmpty(lVar.F())) {
                WebLandpagePlayerView.this.z = 11;
                n.a(str);
            } else {
                WebLandpagePlayerView webLandpagePlayerView2 = WebLandpagePlayerView.this;
                IOfferClickHandler iOfferClickHandler = webLandpagePlayerView2.B;
                if (iOfferClickHandler != null && (iOfferClickHandler instanceof IOfferClickHandler) && iOfferClickHandler.startDownloadApp(this.a, webLandpagePlayerView2.w, webLandpagePlayerView2.x, str)) {
                    WebLandpagePlayerView webLandpagePlayerView3 = WebLandpagePlayerView.this;
                    webLandpagePlayerView3.z = 6;
                    webLandpagePlayerView3.A = 1;
                } else {
                    WebLandpagePlayerView.this.A = 2;
                    n.a(str);
                    WebLandpagePlayerView.this.z = 7;
                }
            }
            WebLandpagePlayerView.c(WebLandpagePlayerView.this);
        }
    }

    public WebLandpagePlayerView(Context context) {
        super(context, null);
        this.F = 1;
        this.G = 2;
        this.H = 3;
        this.I = 0;
        this.z = 8;
        this.A = 0;
        this.O = null;
        this.P = 512;
        this.C = 0;
        this.E = false;
        this.Q = "";
        this.R = 0;
    }

    public WebLandpagePlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.F = 1;
        this.G = 2;
        this.H = 3;
        this.I = 0;
        this.z = 8;
        this.A = 0;
        this.O = null;
        this.P = 512;
        this.C = 0;
        this.E = false;
        this.Q = "";
        this.R = 0;
    }

    public WebLandpagePlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.F = 1;
        this.G = 2;
        this.H = 3;
        this.I = 0;
        this.z = 8;
        this.A = 0;
        this.O = null;
        this.P = 512;
        this.C = 0;
        this.E = false;
        this.Q = "";
        this.R = 0;
    }

    private void a(Context context) {
        a(getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels - i.a(context, 40.0f));
        this.S = new LinkedHashMap();
        LinearLayout linearLayout = new LinearLayout(context);
        this.y = linearLayout;
        linearLayout.setGravity(1);
        this.y.setOrientation(1);
        this.y.setBackgroundColor(-1);
        RecycleImageView recycleImageView = new RecycleImageView(context);
        recycleImageView.setImageResource(i.a(getContext(), "myoffer_arrow_up", com.anythink.expressad.foundation.h.i.c));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i.a(context, 9.0f), i.a(context, 9.0f));
        layoutParams.topMargin = i.a(context, 3.0f);
        this.y.addView(recycleImageView, layoutParams);
        TextView textView = new TextView(context);
        textView.setText(i.a(getContext(), "myoffer_slide_hint", com.anythink.expressad.foundation.h.i.g));
        textView.setTextSize(1, 12.0f);
        textView.setTextColor(Color.parseColor("#000000"));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = i.a(context, 1.0f);
        this.y.addView(textView, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, i.a(context, 54.0f));
        layoutParams3.addRule(12);
        layoutParams3.setMargins(0, 0, 0, 0);
        addView(this.y, layoutParams3);
        if (this.J == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, i.a(context, 18.0f), 0.0f);
            this.J = translateAnimation;
            translateAnimation.setFillAfter(true);
            this.J.setRepeatMode(2);
            this.J.setRepeatCount(-1);
            this.J.setInterpolator(new AnticipateInterpolator());
            this.J.setDuration(600L);
        }
        this.y.startAnimation(this.J);
        post(new AnonymousClass1(context));
    }

    public static /* synthetic */ void a(WebLandpagePlayerView webLandpagePlayerView) {
        if (webLandpagePlayerView.K == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, -webLandpagePlayerView.getMeasuredHeight());
            webLandpagePlayerView.K = translateAnimation;
            translateAnimation.setFillAfter(true);
            webLandpagePlayerView.K.setDuration(1200L);
        }
        if (webLandpagePlayerView.L == null) {
            TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, 0.0f, webLandpagePlayerView.getMeasuredHeight(), 0.0f);
            webLandpagePlayerView.L = translateAnimation2;
            translateAnimation2.setFillAfter(true);
            webLandpagePlayerView.L.setDuration(1200L);
            webLandpagePlayerView.L.setAnimationListener(webLandpagePlayerView.new AnonymousClass2());
        }
    }

    public static /* synthetic */ void a(WebLandpagePlayerView webLandpagePlayerView, Context context) {
        try {
            webLandpagePlayerView.M = new BaseWebView(context);
            webLandpagePlayerView.N = new com.anythink.core.basead.ui.web.c(webLandpagePlayerView.w);
            webLandpagePlayerView.M.setBackgroundColor(-1);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, webLandpagePlayerView.getMeasuredHeight());
            webLandpagePlayerView.M.setVisibility(8);
            webLandpagePlayerView.addView(webLandpagePlayerView.M, layoutParams);
            com.anythink.core.basead.ui.a.a.a(context);
            com.anythink.core.basead.ui.a.a.a(webLandpagePlayerView.M, context, webLandpagePlayerView);
            webLandpagePlayerView.M.setDownloadListener(webLandpagePlayerView.new AnonymousClass3(context));
            webLandpagePlayerView.E = true;
        } catch (Throwable unused) {
            webLandpagePlayerView.E = false;
        }
    }

    private void b(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        this.y = linearLayout;
        linearLayout.setGravity(1);
        this.y.setOrientation(1);
        this.y.setBackgroundColor(-1);
        RecycleImageView recycleImageView = new RecycleImageView(context);
        recycleImageView.setImageResource(i.a(getContext(), "myoffer_arrow_up", com.anythink.expressad.foundation.h.i.c));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i.a(context, 9.0f), i.a(context, 9.0f));
        layoutParams.topMargin = i.a(context, 3.0f);
        this.y.addView(recycleImageView, layoutParams);
        TextView textView = new TextView(context);
        textView.setText(i.a(getContext(), "myoffer_slide_hint", com.anythink.expressad.foundation.h.i.g));
        textView.setTextSize(1, 12.0f);
        textView.setTextColor(Color.parseColor("#000000"));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = i.a(context, 1.0f);
        this.y.addView(textView, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, i.a(context, 54.0f));
        layoutParams3.addRule(12);
        layoutParams3.setMargins(0, 0, 0, 0);
        addView(this.y, layoutParams3);
        if (this.J == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, i.a(context, 18.0f), 0.0f);
            this.J = translateAnimation;
            translateAnimation.setFillAfter(true);
            this.J.setRepeatMode(2);
            this.J.setRepeatCount(-1);
            this.J.setInterpolator(new AnticipateInterpolator());
            this.J.setDuration(600L);
        }
        this.y.startAnimation(this.J);
    }

    public static /* synthetic */ int c(WebLandpagePlayerView webLandpagePlayerView) {
        webLandpagePlayerView.R = 2;
        return 2;
    }

    private void c(Context context) {
        try {
            this.M = new BaseWebView(context);
            this.N = new com.anythink.core.basead.ui.web.c(this.w);
            this.M.setBackgroundColor(-1);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getMeasuredHeight());
            this.M.setVisibility(8);
            addView(this.M, layoutParams);
            com.anythink.core.basead.ui.a.a.a(context);
            com.anythink.core.basead.ui.a.a.a(this.M, context, this);
            this.M.setDownloadListener(new AnonymousClass3(context));
            this.E = true;
        } catch (Throwable unused) {
            this.E = false;
        }
    }

    private void d(Context context) {
        com.anythink.core.basead.ui.a.a.a(this.M, context, this);
        this.M.setDownloadListener(new AnonymousClass3(context));
    }

    private void j() {
        if (this.K == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, -getMeasuredHeight());
            this.K = translateAnimation;
            translateAnimation.setFillAfter(true);
            this.K.setDuration(1200L);
        }
        if (this.L == null) {
            TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, 0.0f, getMeasuredHeight(), 0.0f);
            this.L = translateAnimation2;
            translateAnimation2.setFillAfter(true);
            this.L.setDuration(1200L);
            this.L.setAnimationListener(new AnonymousClass2());
        }
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView
    public final void a() {
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView
    public final void b() {
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView
    public final void c() {
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void callbackClickResult(bb bbVar) {
        this.z = bbVar.l;
        if (bbVar.n) {
            if (!bbVar.m) {
                this.C = 2;
            } else {
                this.C = 1;
                this.R = 2;
            }
        }
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView
    public final void d() {
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView
    public final void g() {
        m mVar;
        super.g();
        WebView webView = this.M;
        if (webView != null) {
            webView.setDownloadListener(null);
            this.M.destroy();
        }
        this.M = null;
        l lVar = this.w;
        if (lVar == null || (mVar = this.x) == null) {
            return;
        }
        String str = mVar.b;
        String str2 = mVar.d;
        int iD = lVar.d();
        String strT = this.w.t();
        Map<String, JSONArray> map = this.S;
        int i = this.C;
        int i2 = this.A;
        int i3 = this.z;
        String str3 = this.D;
        int i4 = this.x.j;
        String str4 = this.Q;
        int i5 = this.R;
        e.a(str, str2, iD, strT, map, i, i2, i3, str3, i4, 1, 0L, str4, i5 == 0 ? 1 : i5);
    }

    @Override // com.anythink.core.basead.ui.web.b
    public WebProgressBarView getWebProgressBarView() {
        return null;
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView, com.anythink.basead.ui.animplayerview.BasePlayerView
    public void init(l lVar, m mVar, boolean z, List<Bitmap> list) {
        super.init(lVar, mVar, z, list);
        Context context = getContext();
        a(getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels - i.a(context, 40.0f));
        this.S = new LinkedHashMap();
        LinearLayout linearLayout = new LinearLayout(context);
        this.y = linearLayout;
        linearLayout.setGravity(1);
        this.y.setOrientation(1);
        this.y.setBackgroundColor(-1);
        RecycleImageView recycleImageView = new RecycleImageView(context);
        recycleImageView.setImageResource(i.a(getContext(), "myoffer_arrow_up", com.anythink.expressad.foundation.h.i.c));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i.a(context, 9.0f), i.a(context, 9.0f));
        layoutParams.topMargin = i.a(context, 3.0f);
        this.y.addView(recycleImageView, layoutParams);
        TextView textView = new TextView(context);
        textView.setText(i.a(getContext(), "myoffer_slide_hint", com.anythink.expressad.foundation.h.i.g));
        textView.setTextSize(1, 12.0f);
        textView.setTextColor(Color.parseColor("#000000"));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = i.a(context, 1.0f);
        this.y.addView(textView, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, i.a(context, 54.0f));
        layoutParams3.addRule(12);
        layoutParams3.setMargins(0, 0, 0, 0);
        addView(this.y, layoutParams3);
        if (this.J == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, i.a(context, 18.0f), 0.0f);
            this.J = translateAnimation;
            translateAnimation.setFillAfter(true);
            this.J.setRepeatMode(2);
            this.J.setRepeatCount(-1);
            this.J.setInterpolator(new AnticipateInterpolator());
            this.J.setDuration(600L);
        }
        this.y.startAnimation(this.J);
        post(new AnonymousClass1(context));
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        Uri[] uriArr;
        ClipData clipData;
        if (i == 512) {
            try {
                if (this.O == null) {
                    return;
                }
                if (i2 != -1 || intent == null) {
                    uriArr = null;
                } else {
                    String dataString = intent.getDataString();
                    try {
                        clipData = Build.VERSION.SDK_INT >= 16 ? intent.getClipData() : null;
                    } catch (Throwable unused) {
                    }
                    if (clipData != null) {
                        uriArr = new Uri[clipData.getItemCount()];
                        for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                            try {
                                uriArr[i3] = clipData.getItemAt(i3).getUri();
                            } catch (Throwable unused2) {
                            }
                        }
                    } else {
                        uriArr = null;
                    }
                    if (dataString != null) {
                        uriArr = new Uri[]{Uri.parse(dataString)};
                    }
                }
                this.O.onReceiveValue(uriArr);
                this.O = null;
            } catch (Throwable unused3) {
            }
        }
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void onWebFinish() {
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void onWebPageFinish(WebView webView, String str) {
        if (!TextUtils.isEmpty(str) && this.R != 3) {
            this.R = 2;
            JSONArray jSONArray = this.S.get(str);
            if (jSONArray != null) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis());
                    jSONArray.put(1, sb.toString());
                    this.S.put(str, jSONArray);
                } catch (JSONException unused) {
                }
            }
        }
        com.anythink.core.basead.ui.web.c cVar = this.N;
        if (cVar != null) {
            cVar.a(webView, str);
        }
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void onWebPageLoadError(WebView webView, String str) {
        this.R = 3;
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void onWebPageStart(WebView webView, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.R = 1;
        JSONArray jSONArray = this.S.get(str);
        if (jSONArray != null) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(System.currentTimeMillis());
                jSONArray.put(0, sb.toString());
                jSONArray.put(1, "");
                this.S.put(str, jSONArray);
            } catch (JSONException unused) {
            }
        }
    }

    public synchronized boolean openInternalWebView(String str, IOfferClickHandler iOfferClickHandler) {
        if (TextUtils.isEmpty(this.D)) {
            this.D = str;
            this.B = iOfferClickHandler;
            post(new Runnable() { // from class: com.anythink.basead.ui.animplayerview.WebLandpagePlayerView.5
                @Override // java.lang.Runnable
                public final void run() {
                    if (WebLandpagePlayerView.this.M != null) {
                        bb bbVarA = com.anythink.core.basead.a.a.a(WebLandpagePlayerView.this.D);
                        WebLandpagePlayerView webLandpagePlayerView = WebLandpagePlayerView.this;
                        webLandpagePlayerView.z = bbVarA.l;
                        webLandpagePlayerView.M.loadUrl(bbVarA.o);
                        WebLandpagePlayerView webLandpagePlayerView2 = WebLandpagePlayerView.this;
                        webLandpagePlayerView2.recordRedirectUrl(webLandpagePlayerView2.M.getUrl());
                        if (WebLandpagePlayerView.this.y.getAnimation() != null) {
                            WebLandpagePlayerView.this.y.getAnimation().cancel();
                        }
                        WebLandpagePlayerView webLandpagePlayerView3 = WebLandpagePlayerView.this;
                        webLandpagePlayerView3.y.startAnimation(webLandpagePlayerView3.K);
                        WebLandpagePlayerView.this.M.startAnimation(WebLandpagePlayerView.this.L);
                    }
                }
            });
        }
        return this.E;
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView, com.anythink.basead.ui.animplayerview.BasePlayerView
    public void pause() {
        super.pause();
        if (this.M != null) {
            CookieSyncManager.getInstance().stopSync();
            this.M.setWebChromeClient(null);
            com.anythink.core.basead.ui.a.a.a(this.M, getContext() instanceof Activity ? ((Activity) getContext()).isFinishing() : false);
        }
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void recordRedirectUrl(String str) {
        if (this.S.size() > 0) {
            JSONArray jSONArray = this.S.get(this.Q);
            try {
                if (this.R == 0 && jSONArray != null) {
                    if (TextUtils.isEmpty(jSONArray.getString(1))) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(System.currentTimeMillis());
                        jSONArray.put(1, sb.toString());
                    }
                    this.S.put(this.Q, jSONArray);
                }
            } catch (Throwable unused) {
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(System.currentTimeMillis());
        jSONArray2.put(sb2.toString());
        jSONArray2.put("");
        this.S.put(str, jSONArray2);
        this.Q = str;
        this.R = 0;
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView, com.anythink.basead.ui.animplayerview.BasePlayerView
    public void start() {
        super.start();
        if (this.M != null) {
            CookieSyncManager.getInstance().startSync();
            this.M.setWebChromeClient(new WebChromeClient() { // from class: com.anythink.basead.ui.animplayerview.WebLandpagePlayerView.4
                @Override // android.webkit.WebChromeClient
                public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                    com.anythink.core.basead.ui.a.a.a(WebLandpagePlayerView.this.getContext(), str, callback);
                    super.onGeolocationPermissionsShowPrompt(str, callback);
                }

                @Override // android.webkit.WebChromeClient
                public final boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                    try {
                        WebLandpagePlayerView.this.O = valueCallback;
                        Intent intent = new Intent("android.intent.action.GET_CONTENT");
                        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                        intent.setType("*/*");
                        intent.addCategory("android.intent.category.OPENABLE");
                        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                        if (WebLandpagePlayerView.this.getContext() instanceof Activity) {
                            ((Activity) WebLandpagePlayerView.this.getContext()).startActivityForResult(Intent.createChooser(intent, "File Chooser"), 512);
                        }
                        return true;
                    } catch (Throwable unused) {
                        return false;
                    }
                }
            });
            this.M.onResume();
        }
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView, com.anythink.basead.ui.animplayerview.BasePlayerView
    public void stop() {
        super.stop();
    }
}

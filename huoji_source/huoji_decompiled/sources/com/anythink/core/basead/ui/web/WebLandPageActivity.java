package com.anythink.core.basead.ui.web;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieSyncManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.basead.a;
import com.anythink.core.common.f.bb;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.n;
import com.anythink.core.common.o.x;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class WebLandPageActivity extends Activity implements b {
    private static final int e = 343452;
    private IOfferClickHandler A;
    private c B;
    private int C;
    public JSONArray b;
    private WebProgressBarView j;
    private WebView k;
    private ImageView l;
    private ImageView m;
    private TextView n;
    private ValueAnimator o;
    private Random p;
    private int q;
    private long r;
    private Map<String, JSONArray> s;
    private WebLoadFailRefrshView v;
    private RelativeLayout w;
    private l x;
    private m y;
    private String z;
    private final int f = 1;
    private final int g = 2;
    private final int h = 3;
    private final int i = 0;
    public int a = 8;
    private String t = "";
    private int u = 0;
    private ValueCallback<Uri[]> D = null;
    private final int E = 512;
    public int c = 0;
    public int d = 0;

    /* JADX INFO: renamed from: com.anythink.core.basead.ui.web.WebLandPageActivity$2, reason: invalid class name */
    public class AnonymousClass2 implements DownloadListener {
        public AnonymousClass2() {
        }

        @Override // android.webkit.DownloadListener
        public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            if (WebLandPageActivity.this.x == null || WebLandPageActivity.this.y == null || TextUtils.isEmpty(WebLandPageActivity.this.x.F())) {
                WebLandPageActivity.this.a = 11;
                n.a(str);
            } else if (WebLandPageActivity.this.A != null && (WebLandPageActivity.this.A instanceof IOfferClickHandler) && WebLandPageActivity.this.A.startDownloadApp(WebLandPageActivity.this.getApplicationContext(), WebLandPageActivity.this.x, WebLandPageActivity.this.y, str)) {
                WebLandPageActivity webLandPageActivity = WebLandPageActivity.this;
                webLandPageActivity.a = 6;
                webLandPageActivity.d = 1;
            } else {
                WebLandPageActivity.this.d = 2;
                n.a(str);
                WebLandPageActivity.this.a = 7;
            }
            WebLandPageActivity.f(WebLandPageActivity.this);
            WebLandPageActivity.this.e();
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.basead.ui.web.WebLandPageActivity$3, reason: invalid class name */
    public class AnonymousClass3 implements View.OnClickListener {
        public AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (WebLandPageActivity.this.k == null || !WebLandPageActivity.this.k.canGoBack()) {
                WebLandPageActivity.this.finish();
            } else {
                WebLandPageActivity.this.k.goBack();
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.basead.ui.web.WebLandPageActivity$4, reason: invalid class name */
    public class AnonymousClass4 implements View.OnClickListener {
        public AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            WebLandPageActivity.this.finish();
        }
    }

    private ImageView a(Drawable drawable) {
        ImageView imageView = new ImageView(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i.a(this, 48.0f), i.a(this, 48.0f));
        layoutParams.gravity = 16;
        layoutParams.rightMargin = i.a(this, 6.0f);
        imageView.setLayoutParams(layoutParams);
        int iA = i.a(this, 16.0f);
        imageView.setPadding(iA, iA, iA, iA);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setImageDrawable(drawable);
        return imageView;
    }

    private void a() {
        Intent intent = getIntent();
        if (intent != null) {
            try {
                Serializable serializableExtra = intent.getSerializableExtra(a.C0081a.c);
                if (serializableExtra != null && (serializableExtra instanceof l)) {
                    l lVar = (l) serializableExtra;
                    this.x = lVar;
                    this.B = new c(lVar);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                Serializable serializableExtra2 = intent.getSerializableExtra(a.C0081a.e);
                if (serializableExtra2 != null && (serializableExtra2 instanceof m)) {
                    this.y = (m) serializableExtra2;
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                Serializable serializableExtra3 = intent.getSerializableExtra(a.C0081a.l);
                if (serializableExtra3 != null && (serializableExtra3 instanceof IOfferClickHandler)) {
                    this.A = (IOfferClickHandler) serializableExtra3;
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            try {
                this.z = intent.getStringExtra(a.C0081a.j);
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            try {
                this.C = intent.getIntExtra(a.C0081a.q, -1);
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
        }
    }

    public static void a(Context context, com.anythink.core.basead.b.c cVar) {
        Intent intent = new Intent();
        intent.setClass(context, WebLandPageActivity.class);
        intent.putExtra(a.C0081a.c, cVar.c);
        intent.putExtra(a.C0081a.e, cVar.h);
        intent.putExtra(a.C0081a.j, cVar.f);
        intent.putExtra(a.C0081a.q, cVar.i);
        IOfferClickHandler iOfferClickHandler = cVar.g;
        if (iOfferClickHandler != null) {
            intent.putExtra(a.C0081a.l, iOfferClickHandler);
        }
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void a(Context context, String str) {
        com.anythink.core.basead.b.c cVar = new com.anythink.core.basead.b.c();
        cVar.f = str;
        a(context, cVar);
    }

    private void a(String str) {
        com.anythink.core.basead.ui.a.a.a(this.k, this, this);
        this.k.setDownloadListener(new AnonymousClass2());
        bb bbVarA = com.anythink.core.basead.a.a.a(str);
        this.a = bbVarA.l;
        this.k.loadUrl(bbVarA.o);
        recordRedirectUrl(this.k.getUrl());
    }

    private static void b() {
    }

    private static void c() {
    }

    private void d() {
        this.l.setOnClickListener(new AnonymousClass3());
        this.m.setOnClickListener(new AnonymousClass4());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        ((ViewGroup) getWindow().getDecorView()).removeAllViews();
        super.finish();
    }

    public static /* synthetic */ int f(WebLandPageActivity webLandPageActivity) {
        webLandPageActivity.u = 2;
        return 2;
    }

    private RelativeLayout f() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(e);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, i.a(this, 55.0f));
        layoutParams.addRule(10);
        linearLayout.setGravity(16);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackgroundColor(Color.parseColor("#FFFFFF"));
        int iA = i.a(this, 16.0f);
        linearLayout.setPadding(iA, 0, iA, 0);
        relativeLayout.addView(linearLayout);
        this.l = a(getResources().getDrawable(i.a(this, "browser_left_icon", com.anythink.expressad.foundation.h.i.c)));
        this.m = a(getResources().getDrawable(i.a(this, "browser_close_icon", com.anythink.expressad.foundation.h.i.c)));
        linearLayout.addView(this.l);
        linearLayout.addView(this.m);
        TextView textView = new TextView(this);
        new LinearLayout.LayoutParams(0, -2, 1.0f);
        textView.setPadding(i.a(this, 20.0f), 0, 0, i.a(this, 2.0f));
        textView.setTextSize(1, 18.0f);
        textView.setTextColor(Color.parseColor("#666666"));
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        this.n = textView;
        linearLayout.addView(textView);
        try {
            this.k = new BaseWebView(this);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(3, e);
            this.k.setLayoutParams(layoutParams2);
            relativeLayout.addView(this.k);
            View view = new View(this);
            view.setBackgroundColor(-2434342);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, i.a(this, 1.0f));
            layoutParams3.addRule(3, e);
            view.setLayoutParams(layoutParams3);
            relativeLayout.addView(view);
            WebProgressBarView webProgressBarView = new WebProgressBarView(this);
            this.j = webProgressBarView;
            webProgressBarView.setProgress(0);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, i.a(this, 4.0f));
            layoutParams4.addRule(3, e);
            relativeLayout.addView(this.j, layoutParams4);
            Random random = new Random();
            this.p = random;
            this.q = random.nextInt(12) + 3;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 70);
            this.o = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(1000L);
            this.o.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                    int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    if (WebLandPageActivity.this.j == null || iIntValue % WebLandPageActivity.this.q != 0) {
                        return;
                    }
                    WebLandPageActivity webLandPageActivity = WebLandPageActivity.this;
                    webLandPageActivity.q = webLandPageActivity.p.nextInt(12) + 3;
                    WebLandPageActivity.this.j.setProgress(iIntValue);
                }
            });
            this.o.start();
            return relativeLayout;
        } catch (Throwable unused) {
            return null;
        }
    }

    private TextView g() {
        TextView textView = new TextView(this);
        new LinearLayout.LayoutParams(0, -2, 1.0f);
        textView.setPadding(i.a(this, 20.0f), 0, 0, i.a(this, 2.0f));
        textView.setTextSize(1, 18.0f);
        textView.setTextColor(Color.parseColor("#666666"));
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        return textView;
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void callbackClickResult(bb bbVar) {
        this.a = bbVar.l;
        if (bbVar.n) {
            if (!bbVar.m) {
                this.c = 2;
                return;
            }
            this.c = 1;
            this.u = 2;
            e();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        com.anythink.core.common.f.n nVar;
        m mVar = this.y;
        if (mVar != null && (nVar = mVar.n) != null && nVar.f() == 1) {
            try {
                AlertDialog.Builder builder = new AlertDialog.Builder(this, i.a(this, "system_dialog", com.anythink.expressad.foundation.h.i.e));
                builder.setMessage(getString(i.a(this, "web_land_page_dialog_title", com.anythink.expressad.foundation.h.i.g))).setCancelable(true).setPositiveButton(getString(i.a(this, "web_land_page_dialog_stay", com.anythink.expressad.foundation.h.i.g)), new DialogInterface.OnClickListener() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.7
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        String str = WebLandPageActivity.this.y.b;
                        String str2 = WebLandPageActivity.this.y.d;
                        int iD = WebLandPageActivity.this.x.d();
                        String strT = WebLandPageActivity.this.x.t();
                        WebLandPageActivity webLandPageActivity = WebLandPageActivity.this;
                        e.a(str, str2, iD, strT, webLandPageActivity.b, webLandPageActivity.t, 0);
                    }
                }).setNegativeButton(getString(i.a(this, "web_land_page_dialog_yes", com.anythink.expressad.foundation.h.i.g)), new DialogInterface.OnClickListener() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        String str = WebLandPageActivity.this.y.b;
                        String str2 = WebLandPageActivity.this.y.d;
                        int iD = WebLandPageActivity.this.x.d();
                        String strT = WebLandPageActivity.this.x.t();
                        WebLandPageActivity webLandPageActivity = WebLandPageActivity.this;
                        e.a(str, str2, iD, strT, webLandPageActivity.b, webLandPageActivity.t, 1);
                        WebLandPageActivity.this.e();
                    }
                });
                builder.create().show();
                return;
            } catch (Throwable unused) {
            }
        }
        e();
    }

    @Override // com.anythink.core.basead.ui.web.b
    public WebProgressBarView getWebProgressBarView() {
        return this.j;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri[] uriArr;
        ClipData clipData;
        if (i == 512) {
            try {
                if (this.D == null) {
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
                this.D.onReceiveValue(uriArr);
                this.D = null;
            } catch (Throwable unused3) {
            }
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        WebView webView = this.k;
        if (webView == null || !webView.canGoBack()) {
            super.onBackPressed();
        } else {
            this.k.goBack();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.r = SystemClock.elapsedRealtime();
        this.s = new LinkedHashMap();
        setResult(-1);
        Intent intent = getIntent();
        if (intent != null) {
            try {
                Serializable serializableExtra = intent.getSerializableExtra(a.C0081a.c);
                if (serializableExtra != null && (serializableExtra instanceof l)) {
                    l lVar = (l) serializableExtra;
                    this.x = lVar;
                    this.B = new c(lVar);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                Serializable serializableExtra2 = intent.getSerializableExtra(a.C0081a.e);
                if (serializableExtra2 != null && (serializableExtra2 instanceof m)) {
                    this.y = (m) serializableExtra2;
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                Serializable serializableExtra3 = intent.getSerializableExtra(a.C0081a.l);
                if (serializableExtra3 != null && (serializableExtra3 instanceof IOfferClickHandler)) {
                    this.A = (IOfferClickHandler) serializableExtra3;
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            try {
                this.z = intent.getStringExtra(a.C0081a.j);
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            try {
                this.C = intent.getIntExtra(a.C0081a.q, -1);
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
        }
        String strE = this.z;
        if (TextUtils.isEmpty(strE)) {
            l lVar2 = this.x;
            strE = lVar2 != null ? lVar2.E() : "";
        }
        Context applicationContext = getApplicationContext();
        if (TextUtils.isEmpty(strE)) {
            Toast.makeText(applicationContext, i.a(applicationContext, "basead_click_empty", com.anythink.expressad.foundation.h.i.g), 0).show();
            this.u = 3;
            e();
            return;
        }
        bb bbVarA = com.anythink.core.basead.a.a.a(applicationContext, strE);
        boolean z = bbVarA.m;
        callbackClickResult(bbVarA);
        if (z) {
            return;
        }
        RelativeLayout relativeLayoutF = f();
        this.w = relativeLayoutF;
        if (relativeLayoutF == null) {
            n.a(strE);
            e();
            return;
        }
        setContentView(relativeLayoutF);
        this.l.setOnClickListener(new AnonymousClass3());
        this.m.setOnClickListener(new AnonymousClass4());
        com.anythink.core.basead.ui.a.a.a(this);
        com.anythink.core.basead.ui.a.a.a(this.k, this, this);
        this.k.setDownloadListener(new AnonymousClass2());
        bb bbVarA2 = com.anythink.core.basead.a.a.a(strE);
        this.a = bbVarA2.l;
        this.k.loadUrl(bbVarA2.o);
        recordRedirectUrl(this.k.getUrl());
    }

    @Override // android.app.Activity
    public void onDestroy() {
        m mVar;
        super.onDestroy();
        ValueAnimator valueAnimator = this.o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.o = null;
        }
        WebView webView = this.k;
        if (webView != null) {
            webView.setDownloadListener(null);
            this.k.destroy();
        }
        this.k = null;
        l lVar = this.x;
        if (lVar == null || (mVar = this.y) == null) {
            return;
        }
        String str = mVar.b;
        String str2 = mVar.d;
        int iD = lVar.d();
        String strT = this.x.t();
        Map<String, JSONArray> map = this.s;
        int i = this.c;
        int i2 = this.d;
        int i3 = this.a;
        String str3 = this.z;
        int i4 = this.y.j;
        int i5 = this.C;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.r;
        String str4 = this.t;
        int i6 = this.u;
        e.a(str, str2, iD, strT, map, i, i2, i3, str3, i4, i5, jElapsedRealtime, str4, i6 == 0 ? 1 : i6);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        WebView webView = this.k;
        if (webView != null) {
            webView.setWebChromeClient(null);
            com.anythink.core.basead.ui.a.a.a(this.k, isFinishing());
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        WebView webView = this.k;
        if (webView != null) {
            webView.setWebChromeClient(new WebChromeClient() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.5
                @Override // android.webkit.WebChromeClient
                public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                    com.anythink.core.basead.ui.a.a.a(WebLandPageActivity.this, str, callback);
                    super.onGeolocationPermissionsShowPrompt(str, callback);
                }

                @Override // android.webkit.WebChromeClient
                public final void onProgressChanged(WebView webView2, int i) {
                    if (WebLandPageActivity.this.j != null) {
                        if (!WebLandPageActivity.this.o.isRunning()) {
                            WebLandPageActivity.this.j.setProgress(((i * 30) / 100) + 70);
                        }
                        if (i == 100) {
                            if (WebLandPageActivity.this.o.isRunning()) {
                                WebLandPageActivity.this.o.cancel();
                                WebLandPageActivity.this.j.setProgress(100);
                            }
                            com.anythink.core.common.b.n.a().a(new Runnable() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.5.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebLandPageActivity.this.j.setVisibility(8);
                                }
                            }, 200L);
                        }
                    }
                }

                @Override // android.webkit.WebChromeClient
                public final void onReceivedTitle(WebView webView2, String str) {
                    super.onReceivedTitle(webView2, str);
                    if (TextUtils.isEmpty(str) || WebLandPageActivity.this.n == null || WebLandPageActivity.this.n.getText().toString().length() != 0) {
                        return;
                    }
                    WebLandPageActivity.this.n.setText(str);
                }

                @Override // android.webkit.WebChromeClient
                public final boolean onShowFileChooser(WebView webView2, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                    try {
                        WebLandPageActivity.this.D = valueCallback;
                        Intent intent = new Intent("android.intent.action.GET_CONTENT");
                        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                        intent.setType("*/*");
                        intent.addCategory("android.intent.category.OPENABLE");
                        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                        WebLandPageActivity.this.startActivityForResult(Intent.createChooser(intent, "File Chooser"), 512);
                        return true;
                    } catch (Throwable unused) {
                        return false;
                    }
                }
            });
            this.k.onResume();
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void onWebFinish() {
        e();
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void onWebPageFinish(WebView webView, String str) {
        WebView webView2;
        WebLoadFailRefrshView webLoadFailRefrshView = this.v;
        if (webLoadFailRefrshView != null && webLoadFailRefrshView.getParent() == null && (webView2 = this.k) != null) {
            webView2.setVisibility(0);
        }
        webView.canGoBack();
        webView.canGoForward();
        if (!TextUtils.isEmpty(str) && this.u != 3 && TextUtils.equals(this.t, str) && !isFinishing()) {
            this.u = 2;
            JSONArray jSONArray = this.s.get(str);
            if (jSONArray != null) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis());
                    jSONArray.put(1, sb.toString());
                    this.s.put(str, jSONArray);
                } catch (JSONException unused) {
                }
            }
        }
        c cVar = this.B;
        if (cVar != null) {
            cVar.a(webView, str);
        }
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void onWebPageLoadError(WebView webView, String str) {
        if (TextUtils.equals(this.t, str)) {
            this.u = 3;
        }
        WebLoadFailRefrshView webLoadFailRefrshView = this.v;
        if (webLoadFailRefrshView != null) {
            x.a(webLoadFailRefrshView);
        } else {
            WebLoadFailRefrshView webLoadFailRefrshView2 = new WebLoadFailRefrshView(this);
            this.v = webLoadFailRefrshView2;
            WebView webView2 = this.k;
            if (webView2 != null) {
                webLoadFailRefrshView2.setLayoutParams(webView2.getLayoutParams());
            }
            this.v.setOnRefreshListener(new View.OnClickListener() { // from class: com.anythink.core.basead.ui.web.WebLandPageActivity.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    x.a(WebLandPageActivity.this.v);
                    if (WebLandPageActivity.this.k != null) {
                        WebLandPageActivity.this.k.reload();
                    }
                }
            });
        }
        WebView webView3 = this.k;
        if (webView3 != null) {
            webView3.setVisibility(8);
        }
        this.w.addView(this.v);
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void onWebPageStart(WebView webView, String str) {
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.equals(this.t, str)) {
                this.u = 1;
            }
            JSONArray jSONArray = this.s.get(str);
            if (jSONArray != null) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis());
                    jSONArray.put(0, sb.toString());
                    jSONArray.put(1, "");
                    this.s.put(str, jSONArray);
                } catch (JSONException unused) {
                }
            }
        }
        WebLoadFailRefrshView webLoadFailRefrshView = this.v;
        if (webLoadFailRefrshView != null) {
            x.a(webLoadFailRefrshView);
        }
    }

    @Override // com.anythink.core.basead.ui.web.b
    public void recordRedirectUrl(String str) {
        if (this.b == null) {
            this.b = new JSONArray();
        }
        this.b.put(str);
        if (this.s.size() > 0) {
            JSONArray jSONArray = this.s.get(this.t);
            try {
                if (this.u == 0 && jSONArray != null) {
                    if (TextUtils.isEmpty(jSONArray.getString(1))) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(System.currentTimeMillis());
                        jSONArray.put(1, sb.toString());
                    }
                    this.s.put(this.t, jSONArray);
                }
            } catch (Throwable unused) {
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(System.currentTimeMillis());
        jSONArray2.put(sb2.toString());
        jSONArray2.put("");
        this.s.put(str, jSONArray2);
        this.t = str;
        this.u = 0;
    }
}

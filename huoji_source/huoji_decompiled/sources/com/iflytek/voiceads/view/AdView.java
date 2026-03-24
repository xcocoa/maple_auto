package com.iflytek.voiceads.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.listener.DialogListener;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.listener.InternalListener;
import com.iflytek.voiceads.request.a;
import com.iflytek.voiceads.utils.a;
import com.iflytek.voiceads.utils.j;
import com.iflytek.voiceads.view.b;
import org.json.JSONArray;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public abstract class AdView extends WebView implements b.a {
    protected Context a;
    protected RelativeLayout b;
    protected com.iflytek.voiceads.f.b c;
    protected com.iflytek.voiceads.f.a d;
    protected com.iflytek.voiceads.param.a e;
    protected com.iflytek.voiceads.d.b f;
    protected com.iflytek.voiceads.d.a g;
    protected a.EnumC0185a h;
    protected a.b i;
    protected IFLYAdListener j;
    protected InternalListener k;
    protected b l;
    protected HandlerThread m;
    protected com.iflytek.voiceads.view.a n;
    protected a o;
    protected int p;
    a.InterfaceC0184a q;
    com.iflytek.voiceads.f.d r;
    com.iflytek.voiceads.f.c s;
    private int t;
    private boolean u;
    private final int v;
    private final int w;
    private final int x;

    class a extends Handler {
        private a(Looper looper) {
            super(looper);
        }

        /* synthetic */ a(AdView adView, Looper looper, c cVar) {
            this(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "procMsgShow");
                    AdView.this.a(0);
                    AdView.this.d();
                    AdView.this.j();
                    ViewGroup viewGroup = (ViewGroup) AdView.this.b.getParent();
                    if (viewGroup != null && viewGroup.getVisibility() == 0) {
                        if (AdView.this.e.c("banner_recycle")) {
                            AdView.this.h();
                        }
                        AdView.this.j.onAdExposure();
                    } else {
                        AdView.this.j.onAdFailed(new AdError(71002));
                        com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "Ad is invisible, invalid exposure!");
                    }
                    break;
                case 2:
                    com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "procMsgTimeout:" + AdView.this.getProgress() + "% , " + AdView.this.getContentHeight());
                    if (AdView.this.getContentHeight() <= 0 && AdView.this.q() != a.b.success) {
                        if (AdView.this.t >= 2) {
                            AdView.this.t = 0;
                            AdView.this.l.a(5, 71006);
                        } else {
                            AdView.c(AdView.this);
                            AdView.this.p();
                            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Loading ad timeout, reload again!");
                        }
                        break;
                    }
                    break;
                case 3:
                    try {
                        String strOptString = AdView.this.g.e.optString("adm");
                        if (TextUtils.isEmpty(strOptString)) {
                            AdView.this.l.a(5, 71002);
                        } else {
                            try {
                                AdView.this.loadDataWithBaseURL(null, strOptString, "text/html", "utf-8", null);
                                AdView.this.k();
                            } catch (Exception e) {
                                AdView.this.l.a(5, 71007);
                                AdView.this.k.onAdDestroy();
                            }
                        }
                    } catch (Exception e2) {
                        AdView.this.l.a(5, 71007);
                        com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "html load:" + e2.getMessage());
                        return;
                    }
                    break;
            }
        }
    }

    protected AdView(Context context) {
        super(context);
        this.i = a.b.init;
        this.p = 0;
        this.t = 0;
        this.q = new c(this);
        this.u = false;
        this.r = new d(this);
        this.s = new e(this);
        this.v = 1;
        this.w = 2;
        this.x = 3;
    }

    protected AdView(Context context, RelativeLayout relativeLayout, String str, a.EnumC0185a enumC0185a, InternalListener internalListener) {
        super(context.getApplicationContext());
        this.i = a.b.init;
        this.p = 0;
        this.t = 0;
        this.q = new c(this);
        this.u = false;
        this.r = new d(this);
        this.s = new e(this);
        this.v = 1;
        this.w = 2;
        this.x = 3;
        this.a = context.getApplicationContext();
        this.b = relativeLayout;
        this.h = enumC0185a;
        this.k = internalListener;
        this.o = new a(this, context.getMainLooper(), null);
        this.f = new com.iflytek.voiceads.d.b(this.a.getApplicationContext());
        this.e = new com.iflytek.voiceads.param.a(str);
        n();
    }

    private synchronized void a(a.b bVar) {
        this.i = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: Thrown type has an unknown type hierarchy: com.iflytek.voiceads.config.AdError */
    public void b(String str) throws AdError {
        int iOptInt;
        int iOptInt2;
        this.f.a(str);
        this.g = this.f.f;
        if (70200 != this.f.a) {
            this.l.a(5, this.f.a);
            return;
        }
        try {
            iOptInt = this.g.e.optInt("width");
            iOptInt2 = this.g.e.optInt("height");
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "html parse2:" + e.getMessage());
        }
        if (iOptInt <= 0 || iOptInt2 <= 0) {
            this.l.a(5, 71007);
            return;
        }
        this.e.a(iOptInt);
        this.e.b(iOptInt2);
        this.l.a(2, this.f.a);
    }

    static /* synthetic */ int c(AdView adView) {
        int i = adView.t;
        adView.t = i + 1;
        return i;
    }

    private void n() {
        setScrollContainer(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        getSettings().setJavaScriptEnabled(true);
        this.l = new b(o().getLooper(), this);
        this.n = new com.iflytek.voiceads.view.a();
        this.n.a(this.k);
        setBackgroundColor(0);
        getSettings().setCacheMode(2);
        if (Build.VERSION.SDK_INT >= 16) {
            getSettings().setAllowUniversalAccessFromFileURLs(true);
        }
        getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        a(8);
        this.c = new com.iflytek.voiceads.f.b(this.r);
        setWebViewClient(this.c);
        this.d = new com.iflytek.voiceads.f.a(this.s);
        setWebChromeClient(this.d);
    }

    private HandlerThread o() {
        this.m = new HandlerThread("" + this.h);
        this.m.start();
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        try {
            a(a.b.start);
            Message message = new Message();
            message.obj = this.f;
            message.what = 3;
            this.o.sendMessage(message);
        } catch (Exception e) {
            this.l.a(5, 71007);
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "ShowAd:" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized a.b q() {
        return this.i;
    }

    private void r() {
        if (this.n.hasMessages(4)) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "移除关闭广告msg");
            this.n.removeMessages(4);
            this.u = true;
        }
    }

    private void s() {
        if (this.u) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "添加关闭广告msg");
            this.n.a(4, 2000);
        }
    }

    @Override // com.iflytek.voiceads.view.b.a
    public void a() {
        p();
    }

    public void a(int i) {
        if (this.b == null) {
            return;
        }
        setVisibility(i);
        this.b.setVisibility(i);
        for (int i2 = 0; i2 < this.b.getChildCount(); i2++) {
            this.b.getChildAt(i2).setVisibility(i);
        }
    }

    protected void a(int i, int i2) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "AdView setLayoutParam()");
        RelativeLayout.LayoutParams layoutParamsB = b(i, i2);
        if (getParent() == null) {
            this.b.removeAllViews();
            this.b.addView(this, layoutParamsB);
        }
    }

    @Override // com.iflytek.voiceads.view.b.a
    public void a(Message message) {
        try {
            d(message);
        } catch (Exception e) {
            this.l.a(5, 71003);
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "Request:" + e.getMessage());
        } catch (AdError e2) {
            this.l.a(5, e2.getErrorCode());
        }
    }

    public synchronized void a(IFLYAdListener iFLYAdListener) {
        if (iFLYAdListener == null) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "invalid IFLYAdListener!");
        } else if (a.c.exit == this.l.a()) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "ad is exited!");
        } else if (a.c.init == this.l.a() || a.c.end == this.l.a()) {
            if (this.e.c("debug_mode")) {
                com.iflytek.voiceads.utils.g.a(true);
            } else {
                com.iflytek.voiceads.utils.g.a(false);
            }
            this.j = iFLYAdListener;
            this.n.a(iFLYAdListener);
            this.l.a(1);
        } else {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "ad is requesting, please retry a little later!");
        }
    }

    protected void a(String str) {
        int i = this.g.M;
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "clickAd: actionType=" + i);
        if (!URLUtil.isValidUrl(str) || str.equals(com.anythink.core.common.res.d.a)) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Invalid click url: " + str);
            return;
        }
        switch (i) {
            case 3:
                com.iflytek.voiceads.download.d dVarA = com.iflytek.voiceads.download.d.a(this.a.getApplicationContext());
                dVarA.a((DialogListener) this.j);
                dVarA.a(this.e.c("download_alert"));
                dVarA.a(this.a, this.f.f, str);
                com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "AdView startDownload");
                break;
            default:
                com.iflytek.voiceads.request.e.a(this.a, str, this.e, this.f.c);
                break;
        }
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "点击监控");
        try {
            if (this.g.J != null && this.g.J.has("click_urls")) {
                j.a(this.g.J.optJSONArray("click_urls"), this.a, 2);
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "html click:" + e.getMessage());
        }
        this.j.onAdClick();
    }

    public void a(String str, Object obj) {
        this.e.a(str, obj);
    }

    protected RelativeLayout.LayoutParams b(int i, int i2) {
        return new RelativeLayout.LayoutParams(i, i2);
    }

    @Override // com.iflytek.voiceads.view.b.a
    public void b() {
        this.o.sendEmptyMessage(1);
        this.l.a(a.c.end);
        try {
            if (this.g.J != null && this.g.J.has("impress_urls")) {
                JSONArray jSONArrayA = j.a(this.e.e("auction_price"), this.g.J.optJSONArray("impress_urls"));
                if (jSONArrayA != null) {
                    j.a(jSONArrayA, this.a, 1);
                } else {
                    com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "impArray null");
                }
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "Show:" + e.getMessage());
        }
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "procMsgShow successfully!");
    }

    @Override // com.iflytek.voiceads.view.b.a
    public void b(Message message) {
        this.o.sendEmptyMessage(2);
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "procMsgTimeout " + message.obj);
    }

    @Override // com.iflytek.voiceads.view.b.a
    public void c() {
        this.j.onAdClose();
        i();
        this.a = null;
    }

    @Override // com.iflytek.voiceads.view.b.a
    public void c(Message message) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "procMsgEnd:" + message.obj);
        int errorCode = 0;
        if (message.obj != null) {
            AdError adError = new AdError(((Integer) message.obj).intValue());
            errorCode = adError.getErrorCode();
            this.n.a(1, adError);
        }
        if (70403 == errorCode || !this.e.c("banner_recycle")) {
            return;
        }
        h();
    }

    protected void d() {
        if (a.EnumC0185a.BANNER != this.h) {
            requestFocus();
        }
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    protected synchronized void d(Message message) throws Exception {
        com.iflytek.voiceads.request.f.a(this.a.getApplicationContext(), this.e, this.q);
    }

    protected int e() {
        int iD = this.e.d("banner_interval");
        if (iD < 15 || iD > 40) {
            return 30000;
        }
        return iD * 1000;
    }

    protected boolean f() {
        return this.e.c("banner_recycle");
    }

    public synchronized void g() {
        this.l.a(3, 70200);
    }

    protected synchronized void h() {
    }

    protected void i() {
        this.l.removeCallbacksAndMessages(null);
        this.m.quit();
    }

    protected void j() {
    }

    protected abstract void k();

    public void l() {
        c();
    }

    protected void m() {
        if (q() != a.b.success) {
            int visibility = getVisibility();
            a(a.b.success);
            this.j.onAdReceive();
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "onAdPageFinished:" + visibility);
        }
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                if (a.EnumC0185a.INTERSTITIAL.equals(this.h) && this.e.c("back_key_enable")) {
                    this.k.onAdDestroy();
                    this.j.onAdClose();
                    return true;
                }
                break;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 1:
                this.c.a(true);
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.p = i;
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "ad view visibility=" + this.p);
        if (this.p == 8 || this.p == 4) {
            r();
        }
        if (this.p == 0) {
            s();
        }
    }
}

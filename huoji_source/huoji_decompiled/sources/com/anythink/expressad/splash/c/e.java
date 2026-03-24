package com.anythink.expressad.splash.c;

import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.anythink.expressad.splash.js.SplashJSBridgeImpl;
import com.anythink.expressad.splash.js.SplashJsUtils;
import com.anythink.expressad.splash.view.ATSplashView;
import com.anythink.expressad.splash.view.ATSplashWebview;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    private static final String a = "WebViewRenderManager";
    private boolean b;
    private boolean c;

    public static class a {
        private static final e a = new e(0);
    }

    public interface b {
        void a();

        void a(int i);

        void a(String str);
    }

    public static class c {
        private String a;
        private String b;
        private com.anythink.expressad.foundation.d.c c;
        private String d;
        private boolean e;
        private int f;
        private boolean g;

        private boolean g() {
            return this.g;
        }

        public final String a() {
            return this.d;
        }

        public final void a(int i) {
            this.f = i;
        }

        public final void a(com.anythink.expressad.foundation.d.c cVar) {
            this.c = cVar;
        }

        public final void a(String str) {
            this.d = str;
        }

        public final void a(boolean z) {
            this.g = z;
        }

        public final String b() {
            return this.a;
        }

        public final void b(String str) {
            this.a = str;
        }

        public final void b(boolean z) {
            this.e = z;
        }

        public final String c() {
            return this.b;
        }

        public final void c(String str) {
            this.b = str;
        }

        public final com.anythink.expressad.foundation.d.c d() {
            return this.c;
        }

        public final boolean e() {
            return this.e;
        }

        public final int f() {
            return this.f;
        }
    }

    private e() {
        this.b = false;
        this.c = false;
    }

    public /* synthetic */ e(byte b2) {
        this();
    }

    public static /* synthetic */ boolean a(e eVar) {
        eVar.c = true;
        return true;
    }

    private static e b() {
        return a.a;
    }

    public final void a() {
        this.b = false;
        this.c = false;
    }

    public final void a(final ATSplashView aTSplashView, c cVar, final b bVar) {
        if (aTSplashView != null) {
            String strC = cVar.c();
            String strB = cVar.b();
            final com.anythink.expressad.foundation.d.c cVarD = cVar.d();
            String strA = cVar.a();
            boolean zE = cVar.e();
            int iF = cVar.f();
            ATSplashWebview splashWebview = aTSplashView.getSplashWebview();
            if (splashWebview == null) {
                return;
            }
            SplashJSBridgeImpl splashJSBridgeImpl = new SplashJSBridgeImpl(aTSplashView.getContext(), strB, strC);
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVarD);
            splashJSBridgeImpl.setCampaignList(arrayList);
            splashJSBridgeImpl.setAllowSkip(zE ? 1 : 0);
            splashJSBridgeImpl.setCountdownS(iF);
            aTSplashView.setSplashJSBridgeImpl(splashJSBridgeImpl);
            String strAa = TextUtils.isEmpty(cVarD.Z()) ? cVarD.aa() : cVarD.Z();
            String requestId = splashWebview.getRequestId();
            StringBuilder sb = new StringBuilder("CampaignEx RequestId = ");
            sb.append(strAa);
            sb.append(" WebView RequestId = ");
            sb.append(requestId);
            if (!TextUtils.isEmpty(requestId) && requestId.equals(strAa) && (this.b || this.c)) {
                aTSplashView.setH5Ready(true);
                if (bVar != null) {
                    bVar.a(1);
                    return;
                }
                return;
            }
            a();
            splashWebview.setRequestId(strAa);
            System.currentTimeMillis();
            splashWebview.setWebViewListener(new com.anythink.expressad.atsignalcommon.a.b() { // from class: com.anythink.expressad.splash.c.e.1
                @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                public final void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a();
                    }
                    e.a(e.this);
                    if (!cVarD.s()) {
                        aTSplashView.setH5Ready(true);
                    }
                    SplashJsUtils.fireOnJSBridgeConnected(webView);
                }

                @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                public final void onReceivedError(WebView webView, int i, String str, String str2) {
                    super.onReceivedError(webView, i, str, str2);
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a(str);
                    }
                    e.this.a();
                    aTSplashView.setH5Ready(false);
                }

                @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                    super.onReceivedSslError(webView, sslErrorHandler, sslError);
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a(sslError.toString());
                    }
                    e.this.a();
                    aTSplashView.setH5Ready(false);
                }

                @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                public final void readyState(WebView webView, int i) {
                    super.readyState(webView, i);
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a(i);
                    }
                    if (i == 1) {
                        e.this.b = true;
                        aTSplashView.setH5Ready(true);
                    } else {
                        e.this.b = false;
                        aTSplashView.setH5Ready(false);
                    }
                }
            });
            if (splashWebview.isDestroyed()) {
                aTSplashView.setH5Ready(false);
            } else {
                splashWebview.loadUrl(strA);
            }
        }
    }
}

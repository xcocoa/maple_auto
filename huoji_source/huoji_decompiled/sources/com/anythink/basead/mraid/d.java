package com.anythink.basead.mraid;

import android.net.http.SslError;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.anythink.basead.c.f;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static String a = "d";

    public interface a {
        void a();

        void a(com.anythink.basead.c.e eVar);
    }

    public static String a(m mVar, l lVar) {
        if (!TextUtils.isEmpty(lVar.m())) {
            return lVar.m();
        }
        if (TextUtils.isEmpty(lVar.l())) {
            return "";
        }
        File fileB = com.anythink.core.common.res.d.a(n.a().f()).b(mVar, lVar);
        if (fileB == null) {
            Log.e(a, "loadMraidResource: html no exists: ");
            return com.anythink.core.common.res.d.a(n.a().f()).a(lVar.l(), mVar, lVar);
        }
        Log.e(a, "loadMraidResource: html exists: " + fileB.toURI().toString());
        return fileB.toURI().toString();
    }

    public static void a(final String str, final String str2, final MraidWebView mraidWebView, final a aVar, final l lVar, final m mVar, final int i) {
        if (mraidWebView == null) {
            return;
        }
        n.a().b(new Runnable() { // from class: com.anythink.basead.mraid.d.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.n.e.b(mVar, lVar, i);
                String str3 = d.a;
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(", start load mraid webview");
                com.anythink.basead.mraid.a aVar2 = new com.anythink.basead.mraid.a();
                e eVar = new e(str2);
                eVar.a(new com.anythink.expressad.atsignalcommon.a.b() { // from class: com.anythink.basead.mraid.d.1.1
                    public boolean a = false;

                    @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                    public final void onPageFinished(WebView webView, String str4) {
                        if (this.a) {
                            return;
                        }
                        this.a = true;
                        if (com.anythink.core.common.res.d.a.equals(str4)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(str2);
                            sb2.append(", about:blank");
                            a aVar3 = aVar;
                            if (aVar3 != null) {
                                aVar3.a(f.a(f.o, f.J));
                                return;
                            }
                            return;
                        }
                        com.anythink.expressad.mbbanner.a.a.a.a(webView);
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        MraidWebView mraidWebView2 = mraidWebView;
                        if (mraidWebView2 != null) {
                            com.anythink.basead.a.b.c.a(str, mraidWebView2);
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(str2);
                        sb3.append(", load success");
                        a aVar4 = aVar;
                        if (aVar4 != null) {
                            aVar4.a();
                        }
                    }

                    @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                    public final void onReceivedError(WebView webView, int i2, String str4, String str5) {
                        if (this.a) {
                            return;
                        }
                        this.a = true;
                        super.onReceivedError(webView, i2, str4, str5);
                        com.anythink.basead.c.e eVarA = f.a("10000", i2 + "_" + str4);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str2);
                        sb2.append(", load failed: ");
                        sb2.append(eVarA.c());
                        a aVar3 = aVar;
                        if (aVar3 != null) {
                            aVar3.a(eVarA);
                        }
                    }

                    @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                        if (this.a) {
                            return;
                        }
                        this.a = true;
                        super.onReceivedSslError(webView, sslErrorHandler, sslError);
                        com.anythink.basead.c.e eVarA = f.a("10000", sslError != null ? sslError.toString() : "onReceivedSslError");
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str2);
                        sb2.append(", load failed: ");
                        sb2.append(eVarA.c());
                        a aVar3 = aVar;
                        if (aVar3 != null) {
                            aVar3.a(eVarA);
                        }
                    }
                });
                mraidWebView.setWebViewClient(eVar);
                mraidWebView.setObject(aVar2);
                mraidWebView.loadUrl(str2);
            }
        });
    }
}

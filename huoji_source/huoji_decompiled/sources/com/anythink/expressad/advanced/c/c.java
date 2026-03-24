package com.anythink.expressad.advanced.c;

import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import cn.haorui.sdk.adsail_ad.view.scaleImage.ImageSource;
import com.anythink.expressad.advanced.js.NativeAdvancedJSBridgeImpl;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import com.anythink.expressad.advanced.view.ATNativeAdvancedView;
import com.anythink.expressad.advanced.view.ATNativeAdvancedWebview;
import com.anythink.expressad.videocommon.b.e;
import com.anythink.expressad.videocommon.b.i;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static String a = "ResManager";
    private static int b = 1;

    public interface a {
        void a();

        void b();
    }

    private static com.anythink.expressad.foundation.d.c a(com.anythink.expressad.foundation.d.c cVar) {
        if (!TextUtils.isEmpty(cVar.c()) || (!TextUtils.isEmpty(cVar.d()) && cVar.d().contains("<MBTPLMARK>"))) {
            cVar.a(true);
            cVar.b(false);
        } else {
            cVar.a(false);
            cVar.b(true);
        }
        return cVar;
    }

    private static String a(String str) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                return "";
            }
            return ImageSource.FILE_SCHEME + file.getAbsolutePath();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Exception e) {
                e.getMessage();
                return "";
            }
        }
    }

    private static void a(ATNativeAdvancedView aTNativeAdvancedView, String str, com.anythink.expressad.foundation.d.c cVar, String str2, String str3, int i) {
        a(aTNativeAdvancedView, str, cVar, str2, str3, i, null);
    }

    private static void a(final ATNativeAdvancedView aTNativeAdvancedView, final String str, final com.anythink.expressad.foundation.d.c cVar, String str2, String str3, int i, final a aVar) {
        if (aTNativeAdvancedView == null || aTNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        NativeAdvancedJSBridgeImpl nativeAdvancedJSBridgeImpl = new NativeAdvancedJSBridgeImpl(aTNativeAdvancedView.getContext(), str2, str3);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar);
        nativeAdvancedJSBridgeImpl.setCampaignList(arrayList);
        nativeAdvancedJSBridgeImpl.setAllowSkip(i);
        aTNativeAdvancedView.setAdvancedNativeJSBridgeImpl(nativeAdvancedJSBridgeImpl);
        final ATNativeAdvancedWebview advancedNativeWebview = aTNativeAdvancedView.getAdvancedNativeWebview();
        System.currentTimeMillis();
        advancedNativeWebview.setWebViewListener(new com.anythink.expressad.atsignalcommon.a.b() { // from class: com.anythink.expressad.advanced.c.c.1
            @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
            public final void onPageFinished(WebView webView, String str4) {
                super.onPageFinished(webView, str4);
                if (!cVar.s()) {
                    com.anythink.expressad.advanced.a.a.a(cVar.Z());
                    aTNativeAdvancedView.setH5Ready(true);
                }
                NativeAdvancedJsUtils.fireOnJSBridgeConnected(webView);
            }

            @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
            public final void onReceivedError(WebView webView, int i2, String str4, String str5) {
                super.onReceivedError(webView, i2, str4, str5);
                aTNativeAdvancedView.setH5Ready(false);
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.b();
                }
            }

            @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
            public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
                aTNativeAdvancedView.setH5Ready(false);
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.b();
                }
            }

            @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
            public final void readyState(WebView webView, int i2) {
                super.readyState(webView, i2);
                if (i2 == 1) {
                    com.anythink.expressad.advanced.a.a.a(cVar.Z());
                    aTNativeAdvancedView.setH5Ready(true);
                } else {
                    aTNativeAdvancedView.setH5Ready(false);
                }
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a();
                }
            }
        });
        if (advancedNativeWebview.isDestroyed()) {
            aTNativeAdvancedView.setH5Ready(false);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.anythink.expressad.advanced.c.c.2
                @Override // java.lang.Runnable
                public final void run() {
                    advancedNativeWebview.loadUrl(str);
                }
            });
        }
    }

    public static boolean a(ATNativeAdvancedView aTNativeAdvancedView, com.anythink.expressad.foundation.d.c cVar) {
        if (aTNativeAdvancedView == null) {
            return false;
        }
        boolean zIsVideoReady = TextUtils.isEmpty(cVar.S()) ? true : aTNativeAdvancedView.isVideoReady();
        if (zIsVideoReady && !TextUtils.isEmpty(cVar.c())) {
            zIsVideoReady = com.anythink.expressad.advanced.a.a.b(cVar.Z());
            StringBuilder sb = new StringBuilder("======isReady getAdZip:");
            sb.append(zIsVideoReady);
            sb.append("---requestId:");
            sb.append(cVar.Z());
        }
        if (zIsVideoReady && TextUtils.isEmpty(cVar.c()) && !TextUtils.isEmpty(cVar.d())) {
            zIsVideoReady = com.anythink.expressad.advanced.a.a.b(cVar.Z());
        }
        boolean z = (TextUtils.isEmpty(cVar.c()) && TextUtils.isEmpty(cVar.d())) ? false : zIsVideoReady;
        return (!z || TextUtils.isEmpty(cVar.I())) ? z : aTNativeAdvancedView.isEndCardReady();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(ATNativeAdvancedView aTNativeAdvancedView, com.anythink.expressad.foundation.d.c cVar, String str, String str2, int i, a aVar) {
        boolean z;
        boolean zA;
        boolean z3;
        boolean z4 = false;
        if (cVar != null) {
            aTNativeAdvancedView.clearResState();
            if (TextUtils.isEmpty(cVar.S())) {
                zA = true;
            } else {
                zA = e.a().a(com.anythink.expressad.foundation.g.a.aX, str2, cVar.A());
                if (zA) {
                }
                z3 = zA;
                if (!TextUtils.isEmpty(cVar.I()) && !aTNativeAdvancedView.isEndCardReady() && !TextUtils.isEmpty(i.a().c(cVar.I()))) {
                    aTNativeAdvancedView.setEndCardReady(true);
                }
                if (!TextUtils.isEmpty(cVar.c()) || aTNativeAdvancedView.isH5Ready()) {
                    z = false;
                } else {
                    String strC = i.a().c(cVar.c());
                    if (TextUtils.isEmpty(strC)) {
                        z = false;
                        z3 = false;
                    } else if (com.anythink.expressad.advanced.a.a.b(cVar.Z())) {
                        aTNativeAdvancedView.setH5Ready(true);
                        z = false;
                        z3 = true;
                    } else {
                        a(aTNativeAdvancedView, strC, cVar, str, str2, i, aVar);
                        z = true;
                    }
                }
                if (TextUtils.isEmpty(cVar.c()) || TextUtils.isEmpty(cVar.d()) || aTNativeAdvancedView.isH5Ready()) {
                    z4 = z3;
                } else {
                    String strA = a(cVar.d());
                    if (!TextUtils.isEmpty(strA)) {
                        if (com.anythink.expressad.advanced.a.a.b(cVar.Z())) {
                            aTNativeAdvancedView.setH5Ready(true);
                            if (cVar.H()) {
                                aTNativeAdvancedView.setVideoReady(true);
                            }
                            z4 = true;
                        } else {
                            a(aTNativeAdvancedView, strA, cVar, str, str2, i, aVar);
                            z4 = z3;
                            z = true;
                        }
                    }
                }
            }
            aTNativeAdvancedView.setVideoReady(true);
            z3 = zA;
            if (!TextUtils.isEmpty(cVar.I())) {
                aTNativeAdvancedView.setEndCardReady(true);
            }
            if (TextUtils.isEmpty(cVar.c())) {
                z = false;
                if (TextUtils.isEmpty(cVar.c())) {
                    z4 = z3;
                }
            }
        } else {
            z = false;
        }
        if (z4 && !z) {
            aVar.a();
        }
        return z4;
    }
}

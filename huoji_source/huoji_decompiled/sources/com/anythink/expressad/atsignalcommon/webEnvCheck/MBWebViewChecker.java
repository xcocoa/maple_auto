package com.anythink.expressad.atsignalcommon.webEnvCheck;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
public final class MBWebViewChecker {
    private static volatile Boolean a;
    private static volatile Handler b;
    private static Boolean c;

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Context context) {
        WebView webView;
        try {
            webView = new WebView(context);
        } catch (Exception unused) {
            webView = null;
        }
        return webView != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0053, code lost:
    
        if (com.anythink.expressad.atsignalcommon.webEnvCheck.MBWebViewChecker.a == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isWebViewAvailable(final Context context) {
        Boolean bool = Boolean.FALSE;
        c = bool;
        if (bool != null && bool.booleanValue()) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                if (a == null) {
                    try {
                        a = Boolean.valueOf(b(context));
                    } catch (Exception unused) {
                        a = bool;
                    }
                }
                if (a == null) {
                    a = bool;
                }
            } else if (a == null && b == null) {
                Handler handler = new Handler(Looper.getMainLooper());
                b = handler;
                handler.post(new Runnable() { // from class: com.anythink.expressad.atsignalcommon.webEnvCheck.MBWebViewChecker.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MBWebViewChecker.a == null) {
                            try {
                                Boolean unused2 = MBWebViewChecker.a = Boolean.valueOf(MBWebViewChecker.b(context));
                            } catch (Exception unused3) {
                                Boolean unused4 = MBWebViewChecker.a = Boolean.FALSE;
                            }
                        }
                    }
                });
            }
            return a.booleanValue();
        }
        return true;
    }
}

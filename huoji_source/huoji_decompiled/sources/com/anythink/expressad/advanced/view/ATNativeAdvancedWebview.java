package com.anythink.expressad.advanced.view;

import android.content.Context;
import android.content.IntentFilter;
import com.anythink.expressad.advanced.a.c;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;

/* JADX INFO: loaded from: classes.dex */
public class ATNativeAdvancedWebview extends WindVaneWebView {
    private static final String a = ATNativeAdvancedWebview.class.getSimpleName();
    private c b;

    public ATNativeAdvancedWebview(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        registerNetWorkReceiver();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        unregisterNetWorkReceiver();
    }

    public void registerNetWorkReceiver() {
        try {
            if (this.b == null) {
                this.b = new c(this);
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            getContext().registerReceiver(this.b, intentFilter);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void unregisterNetWorkReceiver() {
        try {
            c cVar = this.b;
            if (cVar != null) {
                cVar.a();
                getContext().unregisterReceiver(this.b);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}

package com.anythink.expressad.splash.view;

import android.content.Context;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;

/* JADX INFO: loaded from: classes.dex */
public class ATSplashWebview extends WindVaneWebView {
    private static final String a = ATSplashWebview.class.getSimpleName();
    private String b;

    public ATSplashWebview(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    public String getRequestId() {
        return this.b;
    }

    public void setRequestId(String str) {
        this.b = str;
    }
}

package com.iflytek.voiceads.request;

import com.iflytek.voiceads.listener.DialogListener;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class d implements DialogListener {
    final /* synthetic */ IFLYBrowser a;

    d(IFLYBrowser iFLYBrowser) {
        this.a = iFLYBrowser;
    }

    public void onCancel() {
        this.a.finish();
    }

    public void onConfirm() {
        this.a.finish();
    }
}

package com.iflytek.voiceads.bridge;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class i implements DialogInterface.OnClickListener {
    final /* synthetic */ JsResult a;
    final /* synthetic */ h b;

    i(h hVar, JsResult jsResult) {
        this.b = hVar;
        this.a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (this.b.a.i) {
            this.a.confirm();
        }
    }
}

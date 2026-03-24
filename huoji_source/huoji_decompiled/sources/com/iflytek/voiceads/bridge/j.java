package com.iflytek.voiceads.bridge;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class j implements DialogInterface.OnClickListener {
    final /* synthetic */ JsResult a;
    final /* synthetic */ h b;

    j(h hVar, JsResult jsResult) {
        this.b = hVar;
        this.a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.b.a.i) {
            if (i == -1) {
                this.a.confirm();
            } else {
                this.a.cancel();
            }
        }
    }
}

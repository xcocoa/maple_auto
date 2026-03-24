package com.iflytek.voiceads.bridge;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class k implements DialogInterface.OnClickListener {
    final /* synthetic */ JsPromptResult a;
    final /* synthetic */ EditText b;
    final /* synthetic */ h c;

    k(h hVar, JsPromptResult jsPromptResult, EditText editText) {
        this.c = hVar;
        this.a = jsPromptResult;
        this.b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.c.a.i) {
            if (i == -1) {
                this.a.confirm(this.b.getText().toString());
            } else {
                this.a.cancel();
            }
        }
    }
}

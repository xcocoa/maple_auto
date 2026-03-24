package com.iflytek.voiceads.download;

import android.content.DialogInterface;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class k implements DialogInterface.OnClickListener {
    final /* synthetic */ d a;

    k(d dVar) {
        this.a = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (this.a.f != null) {
            this.a.f.onCancel();
            this.a.f = null;
        }
    }
}

package com.iflytek.voiceads.download;

import android.content.DialogInterface;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class l implements DialogInterface.OnCancelListener {
    final /* synthetic */ d a;

    l(d dVar) {
        this.a = dVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        dialogInterface.dismiss();
    }
}

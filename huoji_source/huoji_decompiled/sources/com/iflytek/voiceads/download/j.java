package com.iflytek.voiceads.download;

import android.content.DialogInterface;
import com.iflytek.voiceads.download.d;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class j implements DialogInterface.OnClickListener {
    final /* synthetic */ d.a a;
    final /* synthetic */ d b;

    j(d dVar, d.a aVar) {
        this.b = dVar;
        this.a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.a.a();
        if (this.b.f != null) {
            this.b.f.onConfirm();
            this.b.f = null;
        }
    }
}

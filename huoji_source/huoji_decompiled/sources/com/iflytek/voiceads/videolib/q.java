package com.iflytek.voiceads.videolib;

import android.content.DialogInterface;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class q implements DialogInterface.OnClickListener {
    final /* synthetic */ JZVPStandard a;

    q(JZVPStandard jZVPStandard) {
        this.a = jZVPStandard;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}

package com.iflytek.voiceads.videolib;

import android.content.DialogInterface;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class p implements DialogInterface.OnClickListener {
    final /* synthetic */ JZVPStandard a;

    p(JZVPStandard jZVPStandard) {
        this.a = jZVPStandard;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.a.k();
    }
}

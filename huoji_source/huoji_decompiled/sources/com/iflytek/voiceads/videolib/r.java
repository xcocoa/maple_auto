package com.iflytek.voiceads.videolib;

import android.content.DialogInterface;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class r implements DialogInterface.OnCancelListener {
    final /* synthetic */ JZVPStandard a;

    r(JZVPStandard jZVPStandard) {
        this.a = jZVPStandard;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        dialogInterface.dismiss();
    }
}

package com.iflytek.voiceads.b;

import android.graphics.Bitmap;
import com.iflytek.voiceads.b.e;
import com.iflytek.voiceads.utils.g;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class b implements e.b {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    @Override // com.iflytek.voiceads.b.e.b
    public void a(Bitmap bitmap) {
        this.a.b.sendMessage(this.a.b.obtainMessage(1, bitmap));
        this.a.c.a(bitmap);
    }

    @Override // com.iflytek.voiceads.b.e.b
    public void a(Exception exc) {
        this.a.b.sendMessage(this.a.b.obtainMessage(1, null));
        g.b("IFLY_AD_SDK", "get image from network failed!");
    }
}

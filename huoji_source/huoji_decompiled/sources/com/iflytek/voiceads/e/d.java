package com.iflytek.voiceads.e;

import android.graphics.Bitmap;
import com.iflytek.voiceads.b.a;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class d implements a.InterfaceC0180a {
    final /* synthetic */ a a;

    d(a aVar) {
        this.a = aVar;
    }

    @Override // com.iflytek.voiceads.b.a.InterfaceC0180a
    public void a(Bitmap bitmap) {
        if (bitmap == null || this.a.a == null) {
            return;
        }
        this.a.a.V.setImageBitmap(bitmap);
    }
}

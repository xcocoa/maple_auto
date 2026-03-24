package com.iflytek.voiceads.e;

import android.app.Activity;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.request.a;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class b implements a.InterfaceC0184a {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    @Override // com.iflytek.voiceads.request.a.InterfaceC0184a
    public void a(Exception exc, int i) {
        this.a.h.a(1, new AdError(i));
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.iflytek.voiceads.config.AdError */
    @Override // com.iflytek.voiceads.request.a.InterfaceC0184a
    public void a(byte[] bArr) {
        try {
            if ((this.a.d instanceof Activity) && ((Activity) this.a.d).isFinishing()) {
                this.a.h.a(1, new AdError(71009));
                com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "activity is finishing");
            } else {
                this.a.e.a(new String(bArr, "utf-8"));
                this.a.f = this.a.e.f;
                this.a.j = new g(this.a.f);
                if (70200 == this.a.e.a) {
                    this.a.h.a(0, new e(this.a.d, this.a.e, this.a.c, this.a.g));
                } else {
                    this.a.h.a(1, new AdError(this.a.e.a));
                }
            }
        } catch (AdError e) {
            this.a.h.a(1, e);
        } catch (Exception e2) {
            this.a.h.a(1, new AdError(71003));
        }
    }
}

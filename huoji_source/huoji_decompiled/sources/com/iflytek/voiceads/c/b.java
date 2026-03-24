package com.iflytek.voiceads.c;

import android.app.Activity;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.request.a;
import com.iflytek.voiceads.utils.g;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class b implements a.InterfaceC0184a {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    @Override // com.iflytek.voiceads.request.a.InterfaceC0184a
    public void a(Exception exc, int i) {
        this.a.f.a(1, new AdError(i));
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.iflytek.voiceads.config.AdError */
    @Override // com.iflytek.voiceads.request.a.InterfaceC0184a
    public void a(byte[] bArr) {
        try {
            if ((this.a.c instanceof Activity) && ((Activity) this.a.c).isFinishing()) {
                this.a.f.a(1, new AdError(71009));
                g.a("IFLY_AD_SDK", "activity is finishing");
            } else {
                this.a.d.a(new String(bArr, "utf-8"));
                if (70200 == this.a.d.a) {
                    this.a.f.a(0, new c(this.a.c, this.a.d, this.a.b, this.a.e));
                } else {
                    this.a.f.a(1, new AdError(this.a.d.a));
                }
            }
        } catch (AdError e) {
            this.a.f.a(1, e);
        } catch (Exception e2) {
            this.a.f.a(1, new AdError(71003));
            g.b("IFLY_AD_SDK", e2.getMessage());
        }
    }
}

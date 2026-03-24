package com.iflytek.voiceads.view;

import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.request.a;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class c implements a.InterfaceC0184a {
    final /* synthetic */ AdView a;

    c(AdView adView) {
        this.a = adView;
    }

    @Override // com.iflytek.voiceads.request.a.InterfaceC0184a
    public void a(Exception exc, int i) {
        this.a.l.a(5, i);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.iflytek.voiceads.config.AdError */
    @Override // com.iflytek.voiceads.request.a.InterfaceC0184a
    public void a(byte[] bArr) {
        try {
            if (bArr != null) {
                this.a.b(new String(bArr, "utf-8"));
            } else {
                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "Invalid response data!");
            }
        } catch (AdError e) {
            this.a.l.a(5, e.getErrorCode());
        } catch (Exception e2) {
            this.a.l.a(5, 71003);
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "html parse1:" + e2.getMessage());
        }
    }
}

package com.iflytek.voiceads.download;

import java.io.File;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class n implements com.iflytek.voiceads.download.a.a {
    final /* synthetic */ String a;
    final /* synthetic */ d b;

    n(d dVar, String str) {
        this.b = dVar;
        this.a = str;
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void a(int i) {
        this.b.a(i);
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void a(long j, long j2, int i) {
        this.b.a(i, (int) ((100 * j) / j2));
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void a(com.iflytek.voiceads.download.e.a aVar, int i) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "download failed " + aVar.getMessage());
        this.b.b(i);
        File file = new File(this.a);
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void b(int i) {
        this.b.b(i);
        this.b.a(this.b.a, new File(this.a));
    }
}

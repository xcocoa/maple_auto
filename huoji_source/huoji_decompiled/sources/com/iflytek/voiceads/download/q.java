package com.iflytek.voiceads.download;

import com.iflytek.voiceads.download.p;
import java.io.File;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
final class q implements com.iflytek.voiceads.download.a.a {
    final /* synthetic */ p.a a;
    final /* synthetic */ String b;

    q(p.a aVar, String str) {
        this.a = aVar;
        this.b = str;
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void a(int i) {
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void a(long j, long j2, int i) {
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void a(com.iflytek.voiceads.download.e.a aVar, int i) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "video cache failed");
        this.a.a();
        File file = new File(this.b);
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void b(int i) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "video cache success");
        this.a.a(this.b);
    }
}

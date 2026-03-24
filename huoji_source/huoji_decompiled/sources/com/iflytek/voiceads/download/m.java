package com.iflytek.voiceads.download;

import com.iflytek.voiceads.download.d;
import java.io.File;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class m implements com.iflytek.voiceads.download.a.a {
    final /* synthetic */ d.b a;
    final /* synthetic */ String b;
    final /* synthetic */ d c;

    m(d dVar, d.b bVar, String str) {
        this.c = dVar;
        this.a = bVar;
        this.b = str;
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void a(int i) {
        this.c.a(i);
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void a(long j, long j2, int i) {
        this.c.a(i, (int) ((100 * j) / j2));
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void a(com.iflytek.voiceads.download.e.a aVar, int i) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "download failed " + aVar.getMessage());
        this.c.b(i);
        this.c.c.remove(this.a.b);
        File file = new File(this.b);
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // com.iflytek.voiceads.download.a.a
    public void b(int i) {
        this.c.b();
        this.c.b(i);
        this.c.c.remove(this.a.b);
        this.c.d.put(this.a.b, this.a);
        this.c.b(this.a.b);
        this.c.c(this.a.b);
        this.c.a(this.c.a, new File(this.b));
    }
}

package com.anythink.expressad.video.module.a.a;

/* JADX INFO: loaded from: classes.dex */
public final class h extends k {
    public h(com.anythink.expressad.foundation.d.c cVar, com.anythink.expressad.videocommon.b.c cVar2, com.anythink.expressad.videocommon.c.c cVar3, String str, String str2, com.anythink.expressad.video.module.a.a aVar, int i, boolean z) {
        super(cVar, cVar2, cVar3, str, str2, aVar, i, z);
    }

    @Override // com.anythink.expressad.video.module.a.a.k, com.anythink.expressad.video.module.a.a.f, com.anythink.expressad.video.module.a.a
    public final void a(int i, Object obj) {
        int i2;
        if (i == 100) {
            e();
            d();
            c();
            a(2);
        } else if (i == 109) {
            b(2);
        } else if (i == 122) {
            a();
        } else if (i != 129) {
            String str = "";
            if (i == 118) {
                if (obj != null && (obj instanceof String)) {
                    str = (String) obj;
                }
                i2 = 3;
            } else if (i == 119) {
                if (obj != null && (obj instanceof String)) {
                    str = (String) obj;
                }
                i2 = 4;
            }
            a(i2, str);
        } else {
            com.anythink.expressad.foundation.d.c cVar = this.X;
            if (cVar != null && cVar.J() == 2) {
                e();
                d();
                c();
                a(1);
            }
        }
        super.a(i, obj);
    }
}

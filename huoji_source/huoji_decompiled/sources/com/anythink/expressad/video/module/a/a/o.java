package com.anythink.expressad.video.module.a.a;

import com.anythink.expressad.video.module.AnythinkVideoView;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class o extends k {
    private boolean ag;
    public int ah;
    private boolean ai;
    private boolean aj;
    private boolean ak;
    private boolean al;
    private Map<Integer, String> am;
    private int an;

    public o(com.anythink.expressad.foundation.d.c cVar, com.anythink.expressad.videocommon.c.c cVar2, com.anythink.expressad.videocommon.b.c cVar3, String str, String str2, com.anythink.expressad.video.module.a.a aVar, int i, boolean z) {
        super(cVar, cVar3, cVar2, str, str2, aVar, i, z);
        this.al = false;
        this.ah = 0;
        this.an = -1;
        if (this.W) {
            this.am = cVar.R();
        }
        this.ah = cVar.i();
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:60:0x00eb, B:17:0x001d, B:19:0x0028, B:21:0x002c, B:24:0x003d, B:26:0x0041, B:27:0x0045, B:29:0x0061, B:30:0x006a, B:32:0x006e, B:37:0x0076, B:38:0x007a, B:39:0x007e, B:40:0x0089, B:41:0x0094, B:44:0x009a, B:46:0x009e, B:48:0x00a7, B:50:0x00ab, B:52:0x00bd, B:54:0x00c1, B:55:0x00d1, B:57:0x00d5, B:59:0x00d9), top: B:65:0x0002 }] */
    @Override // com.anythink.expressad.video.module.a.a.k, com.anythink.expressad.video.module.a.a.f, com.anythink.expressad.video.module.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(int i, Object obj) {
        int i2;
        com.anythink.expressad.foundation.d.c cVar;
        try {
            if (i == 2 || i == 6) {
                if (this.W && !this.aj) {
                    this.aj = true;
                    b();
                    com.anythink.expressad.video.module.b.a.d(com.anythink.core.common.b.n.a().f(), this.X);
                }
            } else if (i != 7) {
                int iBi = 0;
                if (i == 11) {
                    com.anythink.expressad.videocommon.b.e.a().a(false);
                    b();
                } else if (i == 12) {
                    b();
                    com.anythink.expressad.videocommon.b.e.a().a(false);
                } else if (i == 15) {
                    e();
                    d();
                    c();
                    if (obj == null || !(obj instanceof AnythinkVideoView.a)) {
                        i2 = 0;
                    } else {
                        int i3 = ((AnythinkVideoView.a) obj).a;
                        iBi = ((AnythinkVideoView.a) obj).b;
                        i2 = i3;
                    }
                    if (iBi == 0 && (cVar = this.X) != null) {
                        iBi = cVar.bi();
                    }
                    com.anythink.expressad.video.module.b.a.a(com.anythink.core.common.b.n.a().f(), this.X, i2, iBi, this.af);
                    com.anythink.expressad.video.module.b.a.a(this.X, this.am, this.ac, i2);
                    if (!this.ak) {
                        this.ak = true;
                        com.anythink.expressad.video.module.b.a.a(this.X, this.ac);
                    }
                    if (!this.al) {
                        int i4 = this.ah;
                        if (i4 != 0) {
                            iBi = i4;
                        }
                        if (i2 >= iBi) {
                            this.al = true;
                            i = 17;
                        }
                    }
                    this.an = i2;
                } else if (i == 16) {
                }
            } else if (this.W && obj != null && (obj instanceof Integer)) {
                int iIntValue = ((Integer) obj).intValue();
                if (iIntValue == 2) {
                    if (!this.ai) {
                        this.ai = true;
                        com.anythink.expressad.video.module.b.a.b(com.anythink.core.common.b.n.a().f(), this.X);
                    }
                } else if (iIntValue == 1 && !this.ag) {
                    this.ag = true;
                    com.anythink.expressad.video.module.b.a.c(com.anythink.core.common.b.n.a().f(), this.X);
                }
            }
            this.ae.a(i, obj);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}

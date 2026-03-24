package com.anythink.basead.a.b;

import com.anythink.basead.c.i;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.n;
import com.anythink.core.common.res.a.a;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public final String a = f.class.getSimpleName();
    private String b;
    private String c;
    private String d;
    private int e;
    private l f;
    private n g;
    private com.anythink.core.common.res.a.a h;

    public f(String str, final l lVar, n nVar) {
        this.b = lVar.B();
        this.f = lVar;
        this.g = nVar;
        this.c = str;
        this.d = lVar.t();
        this.e = lVar.d();
        com.anythink.core.common.res.a.a aVarA = com.anythink.core.common.res.a.c.a().a(this.b);
        this.h = aVarA;
        aVarA.a(new com.anythink.core.common.res.a.b(this.g.W(), this.g.Y()));
        this.h.a(new a.AbstractC0094a() { // from class: com.anythink.basead.a.b.f.1
            @Override // com.anythink.core.common.res.a.a.AbstractC0094a
            public final void a(String str2, String str3) {
            }

            @Override // com.anythink.core.common.res.a.a.AbstractC0094a
            public final boolean a(int i, long j, long j2) {
                if (i < f.this.g.W()) {
                    return false;
                }
                d.a().a(f.this.b, i);
                return true;
            }
        });
        this.h.k = new a.b() { // from class: com.anythink.basead.a.b.f.2
            @Override // com.anythink.core.common.res.a.a.b
            public final void a(long j, long j2, long j3, long j4, long j5) {
                com.anythink.basead.a.a.a(30, lVar, new i("", ""));
                com.anythink.core.common.n.e.a(f.this.c, f.this.d, f.this.b, "1", j, (String) null, j2, j3, f.this.e, j5 - j4);
            }

            @Override // com.anythink.core.common.res.a.a.b
            public final void a(String str2, String str3, long j, long j2, long j3, long j4) {
                com.anythink.core.common.n.e.a(f.this.c, f.this.d, f.this.b, "0", j, str3, j2, 0L, f.this.e, j4 - j3);
                d.a().a(f.this.b, com.anythink.basead.c.f.a(str2, str3));
            }
        };
    }

    public final void a() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.d);
        sb.append(",");
        sb.append(this.b);
        sb.append(" startRequest");
        this.h.e();
    }

    public final void b() {
        int iB = com.anythink.core.common.a.l.a().b(this.b);
        StringBuilder sb = new StringBuilder();
        sb.append(this.d);
        sb.append(",");
        sb.append(this.b);
        sb.append(" resumeRequest: readyRate:");
        sb.append(iB);
        sb.append(",cdRate:");
        sb.append(this.g.X());
        if (iB == 100) {
            return;
        }
        this.h.f();
    }
}

package com.anythink.core.common.j;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f;
import com.anythink.core.common.f.v;
import com.anythink.core.common.u;

/* JADX INFO: loaded from: classes.dex */
public final class a implements d {
    public String a;
    public String b;
    public b c;
    public com.anythink.core.common.m.b d = new com.anythink.core.common.m.b() { // from class: com.anythink.core.common.j.a.1
        @Override // java.lang.Runnable
        public final void run() {
            if (a.this.a()) {
                a.this.a(n.a().E(), 4);
            }
        }
    };

    public a(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // com.anythink.core.common.j.d
    public final void a(int i) {
        com.anythink.core.common.m.d.a().a(this.d, ((long) Math.pow(2.0d, i)) * 1000, false);
    }

    @Override // com.anythink.core.common.j.d
    public final void a(Context context, int i) {
        v vVar = new v();
        vVar.a(context);
        vVar.d = i;
        f.a(context, this.a, this.b).b(context, this.b, this.a, vVar, null);
    }

    @Override // com.anythink.core.common.j.d
    public final void a(AdError adError, int i) {
        if (a()) {
            com.anythink.core.common.m.d.a().a(this.d, ((long) Math.pow(2.0d, i)) * 1000, false);
            b bVar = this.c;
            if (bVar != null) {
                bVar.a(this.a, adError);
            }
        }
    }

    @Override // com.anythink.core.common.j.d
    public final void a(b bVar) {
        this.c = bVar;
    }

    @Override // com.anythink.core.common.j.d
    public final boolean a() {
        return u.a().e(this.a);
    }

    @Override // com.anythink.core.common.j.d
    public final void b() {
        b bVar;
        if (!a() || (bVar = this.c) == null) {
            return;
        }
        bVar.a(this.a);
    }

    @Override // com.anythink.core.common.j.d
    public final void c() {
        com.anythink.core.common.m.d.a().b(this.d);
    }
}

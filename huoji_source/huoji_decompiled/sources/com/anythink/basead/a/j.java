package com.anythink.basead.a;

import android.content.Context;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.a.f;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    private static volatile j a;
    private Context b = n.a().f();
    private com.anythink.core.common.o.a.c c = new com.anythink.core.common.o.a.c(50);
    private f.b d = new f.b();

    private j() {
    }

    public static j a() {
        if (a == null) {
            synchronized (g.class) {
                if (a == null) {
                    a = new j();
                }
            }
        }
        return a;
    }

    public final com.anythink.core.common.o.a.c b() {
        return this.c;
    }

    public final f.b c() {
        return this.d;
    }
}

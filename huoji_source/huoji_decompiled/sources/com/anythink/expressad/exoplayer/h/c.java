package com.anythink.expressad.exoplayer.h;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.s;
import com.anythink.expressad.exoplayer.h.t;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements s {
    private final ArrayList<s.b> a = new ArrayList<>(1);
    private final t.a b = new t.a();
    private com.anythink.expressad.exoplayer.h c;
    private com.anythink.expressad.exoplayer.ae d;
    private Object e;

    private t.a a(s.a aVar, long j) {
        com.anythink.expressad.exoplayer.k.a.a(aVar != null);
        return this.b.a(0, aVar, j);
    }

    public final t.a a(int i, @Nullable s.a aVar) {
        return this.b.a(i, aVar, 0L);
    }

    public final t.a a(@Nullable s.a aVar) {
        return this.b.a(0, aVar, 0L);
    }

    public abstract void a();

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(Handler handler, t tVar) {
        this.b.a(handler, tVar);
    }

    public final void a(com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj) {
        this.d = aeVar;
        this.e = obj;
        Iterator<s.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(this, aeVar, obj);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(s.b bVar) {
        this.a.remove(bVar);
        if (this.a.isEmpty()) {
            this.c = null;
            this.d = null;
            this.e = null;
            a();
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(t tVar) {
        this.b.a(tVar);
    }

    public abstract void a(com.anythink.expressad.exoplayer.h hVar, boolean z);

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(com.anythink.expressad.exoplayer.h hVar, boolean z, s.b bVar) {
        com.anythink.expressad.exoplayer.h hVar2 = this.c;
        com.anythink.expressad.exoplayer.k.a.a(hVar2 == null || hVar2 == hVar);
        this.a.add(bVar);
        if (this.c == null) {
            this.c = hVar;
            a(hVar, z);
        } else {
            com.anythink.expressad.exoplayer.ae aeVar = this.d;
            if (aeVar != null) {
                bVar.a(this, aeVar, this.e);
            }
        }
    }
}

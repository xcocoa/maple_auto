package com.anythink.expressad.exoplayer.i;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.af;
import com.anythink.expressad.exoplayer.z;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    @Nullable
    private a a;

    public interface a {
        void c();
    }

    public abstract i a(z[] zVarArr, af afVar);

    public final void a(a aVar) {
        this.a = aVar;
    }

    public abstract void a(Object obj);

    public final void b() {
        a aVar = this.a;
        if (aVar != null) {
            aVar.c();
        }
    }
}

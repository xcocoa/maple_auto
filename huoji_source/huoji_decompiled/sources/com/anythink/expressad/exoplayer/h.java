package com.anythink.expressad.exoplayer;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.w;
import com.anythink.expressad.exoplayer.x;

/* JADX INFO: loaded from: classes.dex */
public interface h extends w {

    @Deprecated
    public static final int a = 1;

    @Deprecated
    public static final int b = 2;

    @Deprecated
    public static final int c = 3;

    @Deprecated
    public static final int d = 4;

    @Deprecated
    public static final int e = 0;

    @Deprecated
    public static final int f = 1;

    @Deprecated
    public static final int g = 2;

    @Deprecated
    public interface a extends w.c {
    }

    @Deprecated
    public interface b extends x.b {
    }

    @Deprecated
    public static final class c {
        public final x.b a;
        public final int b;
        public final Object c;

        @Deprecated
        private c(x.b bVar, int i, Object obj) {
            this.a = bVar;
            this.b = i;
            this.c = obj;
        }
    }

    Looper a();

    x a(x.b bVar);

    void a(@Nullable ac acVar);

    void a(com.anythink.expressad.exoplayer.h.s sVar);

    void a(com.anythink.expressad.exoplayer.h.s sVar, boolean z, boolean z3);

    @Deprecated
    void a(c... cVarArr);

    @Deprecated
    void b(c... cVarArr);
}

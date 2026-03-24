package com.anythink.expressad.exoplayer.h;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.s;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class v extends f<Integer> {
    private static final int a = -1;
    private final s[] b;
    private final ArrayList<s> c;
    private final h d;
    private com.anythink.expressad.exoplayer.ae e;
    private Object f;
    private int g;
    private a h;

    public static final class a extends IOException {
        public static final int a = 0;
        public final int b = 0;

        /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.h.v$a$a, reason: collision with other inner class name */
        @Retention(RetentionPolicy.SOURCE)
        public @interface InterfaceC0122a {
        }
    }

    private v(h hVar, s... sVarArr) {
        this.b = sVarArr;
        this.d = hVar;
        this.c = new ArrayList<>(Arrays.asList(sVarArr));
        this.g = -1;
    }

    private v(s... sVarArr) {
        this(new j(), sVarArr);
    }

    private a a(com.anythink.expressad.exoplayer.ae aeVar) {
        int i = this.g;
        int iC = aeVar.c();
        if (i == -1) {
            this.g = iC;
            return null;
        }
        if (iC != this.g) {
            return new a();
        }
        return null;
    }

    private void a(s sVar, com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj) {
        if (this.h == null) {
            if (this.g == -1) {
                this.g = aeVar.c();
            } else {
                a aVar = aeVar.c() != this.g ? new a() : null;
                this.h = aVar;
            }
            this.h = aVar;
        }
        if (this.h != null) {
            return;
        }
        this.c.remove(sVar);
        if (sVar == this.b[0]) {
            this.e = aeVar;
            this.f = obj;
        }
        if (this.c.isEmpty()) {
            a(this.e, this.f);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final r a(s.a aVar, com.anythink.expressad.exoplayer.j.b bVar) {
        int length = this.b.length;
        r[] rVarArr = new r[length];
        for (int i = 0; i < length; i++) {
            rVarArr[i] = this.b[i].a(aVar, bVar);
        }
        return new u(this.d, rVarArr);
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.c
    public final void a() {
        super.a();
        this.e = null;
        this.f = null;
        this.g = -1;
        this.h = null;
        this.c.clear();
        Collections.addAll(this.c, this.b);
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(r rVar) {
        u uVar = (u) rVar;
        int i = 0;
        while (true) {
            s[] sVarArr = this.b;
            if (i >= sVarArr.length) {
                return;
            }
            sVarArr[i].a(uVar.a[i]);
            i++;
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.c
    public final void a(com.anythink.expressad.exoplayer.h hVar, boolean z) {
        super.a(hVar, z);
        for (int i = 0; i < this.b.length; i++) {
            a(Integer.valueOf(i), this.b[i]);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.f
    public final /* synthetic */ void a(Integer num, s sVar, com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj) {
        if (this.h == null) {
            if (this.g == -1) {
                this.g = aeVar.c();
            } else {
                a aVar = aeVar.c() != this.g ? new a() : null;
                this.h = aVar;
            }
            this.h = aVar;
        }
        if (this.h == null) {
            this.c.remove(sVar);
            if (sVar == this.b[0]) {
                this.e = aeVar;
                this.f = obj;
            }
            if (this.c.isEmpty()) {
                a(this.e, this.f);
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.s
    public final void b() throws a {
        a aVar = this.h;
        if (aVar != null) {
            throw aVar;
        }
        super.b();
    }
}

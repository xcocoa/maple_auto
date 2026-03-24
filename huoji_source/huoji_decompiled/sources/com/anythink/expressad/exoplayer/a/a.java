package com.anythink.expressad.exoplayer.a;

import android.net.NetworkInfo;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.a.b;
import com.anythink.expressad.exoplayer.ae;
import com.anythink.expressad.exoplayer.b.g;
import com.anythink.expressad.exoplayer.g.f;
import com.anythink.expressad.exoplayer.h.af;
import com.anythink.expressad.exoplayer.h.s;
import com.anythink.expressad.exoplayer.h.t;
import com.anythink.expressad.exoplayer.j.d;
import com.anythink.expressad.exoplayer.l.h;
import com.anythink.expressad.exoplayer.m;
import com.anythink.expressad.exoplayer.v;
import com.anythink.expressad.exoplayer.w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public final class a implements g, com.anythink.expressad.exoplayer.d.c, f, t, d.a, h, w.c {
    private final com.anythink.expressad.exoplayer.k.c b;

    @Nullable
    private w e;
    private final CopyOnWriteArraySet<com.anythink.expressad.exoplayer.a.b> a = new CopyOnWriteArraySet<>();
    private final b d = new b();
    private final ae.b c = new ae.b();

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.a.a$a, reason: collision with other inner class name */
    public static class C0106a {
        public static a a(@Nullable w wVar, com.anythink.expressad.exoplayer.k.c cVar) {
            return new a(wVar, cVar);
        }
    }

    public static final class b {
        private c c;
        private c d;
        private boolean f;
        private final ArrayList<c> a = new ArrayList<>();
        private final ae.a b = new ae.a();
        private ae e = ae.a;

        private c a(c cVar, ae aeVar) {
            int iA;
            return (aeVar.a() || this.e.a() || (iA = aeVar.a(this.e.a(cVar.b.a, this.b, true).b)) == -1) ? cVar : new c(aeVar.a(iA, this.b, false).c, cVar.b.a(iA));
        }

        private void i() {
            if (this.a.isEmpty()) {
                return;
            }
            this.c = this.a.get(0);
        }

        @Nullable
        public final c a() {
            if (this.a.isEmpty() || this.e.a() || this.f) {
                return null;
            }
            return this.a.get(0);
        }

        @Nullable
        public final s.a a(int i) {
            ae aeVar = this.e;
            if (aeVar == null) {
                return null;
            }
            int iC = aeVar.c();
            s.a aVar = null;
            for (int i2 = 0; i2 < this.a.size(); i2++) {
                c cVar = this.a.get(i2);
                int i3 = cVar.b.a;
                if (i3 < iC && this.e.a(i3, this.b, false).c == i) {
                    if (aVar != null) {
                        return null;
                    }
                    aVar = cVar.b;
                }
            }
            return aVar;
        }

        public final void a(int i, s.a aVar) {
            this.a.add(new c(i, aVar));
            if (this.a.size() != 1 || this.e.a()) {
                return;
            }
            i();
        }

        public final void a(ae aeVar) {
            for (int i = 0; i < this.a.size(); i++) {
                ArrayList<c> arrayList = this.a;
                arrayList.set(i, a(arrayList.get(i), aeVar));
            }
            c cVar = this.d;
            if (cVar != null) {
                this.d = a(cVar, aeVar);
            }
            this.e = aeVar;
            i();
        }

        @Nullable
        public final c b() {
            return this.c;
        }

        public final void b(int i, s.a aVar) {
            c cVar = new c(i, aVar);
            this.a.remove(cVar);
            if (cVar.equals(this.d)) {
                this.d = this.a.isEmpty() ? null : this.a.get(0);
            }
        }

        @Nullable
        public final c c() {
            return this.d;
        }

        public final void c(int i, s.a aVar) {
            this.d = new c(i, aVar);
        }

        @Nullable
        public final c d() {
            if (this.a.isEmpty()) {
                return null;
            }
            return this.a.get(r0.size() - 1);
        }

        public final boolean e() {
            return this.f;
        }

        public final void f() {
            i();
        }

        public final void g() {
            this.f = true;
        }

        public final void h() {
            this.f = false;
            i();
        }
    }

    public static final class c {
        public final int a;
        public final s.a b;

        public c(int i, s.a aVar) {
            this.a = i;
            this.b = aVar;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && c.class == obj.getClass()) {
                c cVar = (c) obj;
                if (this.a == cVar.a && this.b.equals(cVar.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (this.a * 31) + this.b.hashCode();
        }
    }

    public a(@Nullable w wVar, com.anythink.expressad.exoplayer.k.c cVar) {
        this.e = wVar;
        this.b = (com.anythink.expressad.exoplayer.k.c) com.anythink.expressad.exoplayer.k.a.a(cVar);
    }

    private b.a a(@Nullable c cVar) {
        if (cVar != null) {
            return d(cVar.a, cVar.b);
        }
        int iP = ((w) com.anythink.expressad.exoplayer.k.a.a(this.e)).p();
        return d(iP, this.d.a(iP));
    }

    private void a(int i, int i2) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI, i, i2);
        }
    }

    private void a(@Nullable NetworkInfo networkInfo) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI, networkInfo);
        }
    }

    private void a(w wVar) {
        com.anythink.expressad.exoplayer.k.a.b(this.e == null);
        this.e = (w) com.anythink.expressad.exoplayer.k.a.a(wVar);
    }

    private b.a d(int i, @Nullable s.a aVar) {
        long jA;
        long j;
        com.anythink.expressad.exoplayer.k.a.a(this.e);
        long jA2 = this.b.a();
        ae aeVarF = this.e.F();
        long jT = 0;
        if (i != this.e.p()) {
            if (i < aeVarF.b() && (aVar == null || !aVar.a())) {
                jA = com.anythink.expressad.exoplayer.b.a(aeVarF.a(i, this.c, false).h);
                j = jA;
            }
            j = jT;
        } else if (aVar == null || !aVar.a()) {
            jA = this.e.B();
            j = jA;
        } else {
            if (this.e.z() == aVar.b && this.e.A() == aVar.c) {
                jT = this.e.t();
            }
            j = jT;
        }
        return new b.a(jA2, aeVarF, i, aVar, j, this.e.t(), this.e.u() - this.e.B());
    }

    private Set<com.anythink.expressad.exoplayer.a.b> g() {
        return Collections.unmodifiableSet(this.a);
    }

    private b.a h() {
        return a(this.d.b());
    }

    private b.a i() {
        return a(this.d.a());
    }

    private b.a j() {
        return a(this.d.c());
    }

    private b.a k() {
        return a(this.d.d());
    }

    public final void a() {
        if (this.d.e()) {
            return;
        }
        b.a aVarI = i();
        this.d.g();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI);
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.g
    public final void a(int i) {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().f(aVarJ, i);
        }
    }

    @Override // com.anythink.expressad.exoplayer.l.h
    public final void a(int i, int i2, int i3, float f) {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().b(aVarJ, i, i2);
        }
    }

    @Override // com.anythink.expressad.exoplayer.l.h
    public final void a(int i, long j) {
        b.a aVarH = h();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().g(aVarH, i);
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.g
    public final void a(int i, long j, long j2) {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarJ, i, j, j2);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.t
    public final void a(int i, s.a aVar) {
        this.d.a(i, aVar);
        b.a aVarD = d(i, aVar);
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().c(aVarD);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.t
    public final void a(int i, @Nullable s.a aVar, t.b bVar, t.c cVar) {
        d(i, aVar);
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.t
    public final void a(int i, @Nullable s.a aVar, t.b bVar, t.c cVar, IOException iOException, boolean z) {
        b.a aVarD = d(i, aVar);
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarD, iOException);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.t
    public final void a(int i, @Nullable s.a aVar, t.c cVar) {
        b.a aVarD = d(i, aVar);
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().b(aVarD, cVar);
        }
    }

    @Override // com.anythink.expressad.exoplayer.l.h
    public final void a(Surface surface) {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarJ, surface);
        }
    }

    public final void a(com.anythink.expressad.exoplayer.a.b bVar) {
        this.a.add(bVar);
    }

    @Override // com.anythink.expressad.exoplayer.l.h
    public final void a(com.anythink.expressad.exoplayer.c.d dVar) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().d(aVarI, 2);
        }
    }

    @Override // com.anythink.expressad.exoplayer.g.f
    public final void a(com.anythink.expressad.exoplayer.g.a aVar) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI, aVar);
        }
    }

    @Override // com.anythink.expressad.exoplayer.l.h
    public final void a(m mVar) {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarJ, 2, mVar);
        }
    }

    @Override // com.anythink.expressad.exoplayer.d.c
    public final void a(Exception exc) {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarJ, exc);
        }
    }

    @Override // com.anythink.expressad.exoplayer.l.h
    public final void a(String str, long j, long j2) {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarJ, 2, str);
        }
    }

    public final void b() {
        for (c cVar : new ArrayList(this.d.a)) {
            b(cVar.a, cVar.b);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.t
    public final void b(int i, s.a aVar) {
        this.d.b(i, aVar);
        b.a aVarD = d(i, aVar);
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().d(aVarD);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.t
    public final void b(int i, @Nullable s.a aVar, t.b bVar, t.c cVar) {
        d(i, aVar);
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.t
    public final void b(int i, @Nullable s.a aVar, t.c cVar) {
        b.a aVarD = d(i, aVar);
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarD, cVar);
        }
    }

    public final void b(com.anythink.expressad.exoplayer.a.b bVar) {
        this.a.remove(bVar);
    }

    @Override // com.anythink.expressad.exoplayer.l.h
    public final void b(com.anythink.expressad.exoplayer.c.d dVar) {
        b.a aVarH = h();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().e(aVarH, 2);
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.g
    public final void b(m mVar) {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarJ, 1, mVar);
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.g
    public final void b(String str, long j, long j2) {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarJ, 1, str);
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.d.a
    public final void c() {
        a(this.d.d());
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.t
    public final void c(int i, s.a aVar) {
        this.d.c(i, aVar);
        b.a aVarD = d(i, aVar);
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().e(aVarD);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.t
    public final void c(int i, @Nullable s.a aVar, t.b bVar, t.c cVar) {
        d(i, aVar);
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.g
    public final void c(com.anythink.expressad.exoplayer.c.d dVar) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().d(aVarI, 1);
        }
    }

    @Override // com.anythink.expressad.exoplayer.d.c
    public final void d() {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().f(aVarJ);
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.g
    public final void d(com.anythink.expressad.exoplayer.c.d dVar) {
        b.a aVarH = h();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().e(aVarH, 1);
        }
    }

    @Override // com.anythink.expressad.exoplayer.d.c
    public final void e() {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().g(aVarJ);
        }
    }

    @Override // com.anythink.expressad.exoplayer.d.c
    public final void f() {
        b.a aVarJ = j();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().h(aVarJ);
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onLoadingChanged(boolean z) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().b(aVarI, z);
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onPlaybackParametersChanged(v vVar) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI, vVar);
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onPlayerError(com.anythink.expressad.exoplayer.g gVar) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI, gVar);
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onPlayerStateChanged(boolean z, int i) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI, z, i);
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onPositionDiscontinuity(int i) {
        this.d.f();
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().b(aVarI, i);
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onRepeatModeChanged(int i) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().c(aVarI, i);
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onSeekProcessed() {
        if (this.d.e()) {
            this.d.h();
            b.a aVarI = i();
            Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().b(aVarI);
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onShuffleModeEnabledChanged(boolean z) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI, z);
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onTimelineChanged(ae aeVar, @Nullable Object obj, int i) {
        this.d.a(aeVar);
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI, i);
        }
    }

    @Override // com.anythink.expressad.exoplayer.w.c
    public final void onTracksChanged(af afVar, com.anythink.expressad.exoplayer.i.g gVar) {
        b.a aVarI = i();
        Iterator<com.anythink.expressad.exoplayer.a.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(aVarI, gVar);
        }
    }
}

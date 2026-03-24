package com.anythink.expressad.exoplayer.h;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.ae;
import com.anythink.expressad.exoplayer.h.aa;
import com.anythink.expressad.exoplayer.h.s;
import com.anythink.expressad.exoplayer.x;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class i extends com.anythink.expressad.exoplayer.h.f<e> implements x.b {
    private static final int a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;
    private static final int e = 4;
    private static final int f = 5;
    private static final int g = 6;
    private final List<e> h;
    private final List<e> i;
    private final e j;
    private final Map<r, e> k;
    private final List<d> l;
    private final boolean m;
    private final ae.b n;
    private com.anythink.expressad.exoplayer.h o;
    private boolean p;
    private aa q;
    private int r;
    private int s;

    public static final class a extends com.anythink.expressad.exoplayer.h.a {
        private final int b;
        private final int c;
        private final int[] d;
        private final int[] e;
        private final com.anythink.expressad.exoplayer.ae[] f;
        private final Object[] g;
        private final HashMap<Object, Integer> h;

        public a(Collection<e> collection, int i, int i2, aa aaVar, boolean z) {
            super(z, aaVar);
            this.b = i;
            this.c = i2;
            int size = collection.size();
            this.d = new int[size];
            this.e = new int[size];
            this.f = new com.anythink.expressad.exoplayer.ae[size];
            this.g = new Object[size];
            this.h = new HashMap<>();
            int i3 = 0;
            for (e eVar : collection) {
                this.f[i3] = eVar.c;
                this.d[i3] = eVar.f;
                this.e[i3] = eVar.e;
                Object[] objArr = this.g;
                objArr[i3] = eVar.b;
                this.h.put(objArr[i3], Integer.valueOf(i3));
                i3++;
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int a(int i) {
            return com.anythink.expressad.exoplayer.k.af.a(this.d, i + 1);
        }

        @Override // com.anythink.expressad.exoplayer.ae
        public final int b() {
            return this.b;
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int b(int i) {
            return com.anythink.expressad.exoplayer.k.af.a(this.e, i + 1);
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int b(Object obj) {
            Integer num = this.h.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // com.anythink.expressad.exoplayer.ae
        public final int c() {
            return this.c;
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final com.anythink.expressad.exoplayer.ae c(int i) {
            return this.f[i];
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int d(int i) {
            return this.d[i];
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final int e(int i) {
            return this.e[i];
        }

        @Override // com.anythink.expressad.exoplayer.h.a
        public final Object f(int i) {
            return this.g[i];
        }
    }

    public static final class b extends p {
        private static final Object c = new Object();
        private static final ae.a d = new ae.a();
        private static final c e = new c(0);
        private final Object f;

        public b() {
            this(e, null);
        }

        private b(com.anythink.expressad.exoplayer.ae aeVar, Object obj) {
            super(aeVar);
            this.f = obj;
        }

        @Override // com.anythink.expressad.exoplayer.h.p, com.anythink.expressad.exoplayer.ae
        public final int a(Object obj) {
            com.anythink.expressad.exoplayer.ae aeVar = this.b;
            if (c.equals(obj)) {
                obj = this.f;
            }
            return aeVar.a(obj);
        }

        @Override // com.anythink.expressad.exoplayer.h.p, com.anythink.expressad.exoplayer.ae
        public final ae.a a(int i, ae.a aVar, boolean z) {
            this.b.a(i, aVar, z);
            if (com.anythink.expressad.exoplayer.k.af.a(aVar.b, this.f)) {
                aVar.b = c;
            }
            return aVar;
        }

        public final b a(com.anythink.expressad.exoplayer.ae aeVar) {
            return new b(aeVar, (this.f != null || aeVar.c() <= 0) ? this.f : aeVar.a(0, d, true).b);
        }

        public final com.anythink.expressad.exoplayer.ae d() {
            return this.b;
        }
    }

    public static final class c extends com.anythink.expressad.exoplayer.ae {
        private c() {
        }

        public /* synthetic */ c(byte b) {
            this();
        }

        @Override // com.anythink.expressad.exoplayer.ae
        public final int a(Object obj) {
            return obj == null ? 0 : -1;
        }

        @Override // com.anythink.expressad.exoplayer.ae
        public final ae.a a(int i, ae.a aVar, boolean z) {
            return aVar.a(null, null, com.anythink.expressad.exoplayer.b.b, 0L);
        }

        @Override // com.anythink.expressad.exoplayer.ae
        public final ae.b a(int i, ae.b bVar, boolean z, long j) {
            return bVar.a(null, com.anythink.expressad.exoplayer.b.b, com.anythink.expressad.exoplayer.b.b, false, true, j > 0 ? com.anythink.expressad.exoplayer.b.b : 0L, com.anythink.expressad.exoplayer.b.b, 0L);
        }

        @Override // com.anythink.expressad.exoplayer.ae
        public final int b() {
            return 1;
        }

        @Override // com.anythink.expressad.exoplayer.ae
        public final int c() {
            return 1;
        }
    }

    public static final class d {
        public final Handler a;
        public final Runnable b;

        public d(Runnable runnable) {
            this.b = runnable;
            this.a = new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        }

        private void a() {
            this.a.post(this.b);
        }
    }

    public static final class e implements Comparable<e> {
        public final s a;
        public int d;
        public int e;
        public int f;
        public boolean g;
        public boolean h;
        public b c = new b();
        public List<l> i = new ArrayList();
        public final Object b = new Object();

        public e(s sVar) {
            this.a = sVar;
        }

        private int a(@NonNull e eVar) {
            return this.f - eVar.f;
        }

        public final void a(int i, int i2, int i3) {
            this.d = i;
            this.e = i2;
            this.f = i3;
            this.g = false;
            this.h = false;
            this.i.clear();
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(@NonNull e eVar) {
            return this.f - eVar.f;
        }
    }

    public static final class f<T> {
        public final int a;
        public final T b;

        @Nullable
        public final d c;

        public f(int i, T t, @Nullable Runnable runnable) {
            this.a = i;
            this.c = runnable != null ? new d(runnable) : null;
            this.b = t;
        }
    }

    public i() {
        this(false, (aa) new aa.a());
    }

    private i(boolean z) {
        this(z, new aa.a());
    }

    private i(boolean z, aa aaVar) {
        this(z, aaVar, new s[0]);
    }

    private i(boolean z, aa aaVar, s... sVarArr) {
        for (s sVar : sVarArr) {
            com.anythink.expressad.exoplayer.k.a.a(sVar);
        }
        this.q = aaVar.a() > 0 ? aaVar.d() : aaVar;
        this.k = new IdentityHashMap();
        ArrayList arrayList = new ArrayList();
        this.h = arrayList;
        this.i = new ArrayList();
        this.l = new ArrayList();
        this.j = new e(null);
        this.m = z;
        this.n = new ae.b();
        a(arrayList.size(), Arrays.asList(sVarArr), (Runnable) null);
    }

    private i(s... sVarArr) {
        this(sVarArr, (byte) 0);
    }

    private i(s[] sVarArr, byte b2) {
        this(false, new aa.a(), sVarArr);
    }

    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    private static int a2(e eVar, int i) {
        return i + eVar.e;
    }

    @Nullable
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    private static s.a a2(e eVar, s.a aVar) {
        for (int i = 0; i < eVar.i.size(); i++) {
            if (eVar.i.get(i).b.d == aVar.d) {
                return aVar.a(aVar.a + eVar.f);
            }
        }
        return null;
    }

    private void a(int i) {
        this.h.remove(i);
        com.anythink.expressad.exoplayer.h hVar = this.o;
        if (hVar != null) {
            hVar.a((x.b) this).a(2).a(new f(i, null, null)).i();
        }
    }

    private void a(int i, int i2) {
        if (i != i2) {
            List<e> list = this.h;
            list.add(i2, list.remove(i));
            com.anythink.expressad.exoplayer.h hVar = this.o;
            if (hVar != null) {
                hVar.a((x.b) this).a(3).a(new f(i, Integer.valueOf(i2), null)).i();
            }
        }
    }

    private void a(int i, int i2, int i3, int i4) {
        this.r += i3;
        this.s += i4;
        while (i < this.i.size()) {
            this.i.get(i).d += i2;
            this.i.get(i).e += i3;
            this.i.get(i).f += i4;
            i++;
        }
    }

    private void a(int i, int i2, @Nullable Runnable runnable) {
        if (i == i2) {
            return;
        }
        List<e> list = this.h;
        list.add(i2, list.remove(i));
        com.anythink.expressad.exoplayer.h hVar = this.o;
        if (hVar != null) {
            hVar.a((x.b) this).a(3).a(new f(i, Integer.valueOf(i2), runnable)).i();
        } else if (runnable != null) {
            runnable.run();
        }
    }

    private void a(int i, e eVar) {
        if (i > 0) {
            e eVar2 = this.i.get(i - 1);
            eVar.a(i, eVar2.e + eVar2.c.b(), eVar2.f + eVar2.c.c());
        } else {
            eVar.a(i, 0, 0);
        }
        a(i, 1, eVar.c.b(), eVar.c.c());
        this.i.add(i, eVar);
        a(eVar, eVar.a);
    }

    private void a(int i, s sVar) {
        a(i, sVar, (Runnable) null);
    }

    private void a(int i, s sVar, @Nullable Runnable runnable) {
        com.anythink.expressad.exoplayer.k.a.a(sVar);
        e eVar = new e(sVar);
        this.h.add(i, eVar);
        com.anythink.expressad.exoplayer.h hVar = this.o;
        if (hVar != null) {
            hVar.a((x.b) this).a(0).a(new f(i, eVar, runnable)).i();
        } else if (runnable != null) {
            runnable.run();
        }
    }

    private void a(int i, @Nullable Runnable runnable) {
        this.h.remove(i);
        com.anythink.expressad.exoplayer.h hVar = this.o;
        if (hVar != null) {
            hVar.a((x.b) this).a(2).a(new f(i, null, runnable)).i();
        } else if (runnable != null) {
            runnable.run();
        }
    }

    private void a(int i, Collection<s> collection) {
        a(i, collection, (Runnable) null);
    }

    private void a(int i, Collection<s> collection, @Nullable Runnable runnable) {
        Iterator<s> it = collection.iterator();
        while (it.hasNext()) {
            com.anythink.expressad.exoplayer.k.a.a(it.next());
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<s> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(new e(it2.next()));
        }
        this.h.addAll(i, arrayList);
        if (this.o != null && !collection.isEmpty()) {
            this.o.a((x.b) this).a(1).a(new f(i, arrayList, runnable)).i();
        } else if (runnable != null) {
            runnable.run();
        }
    }

    private void a(@Nullable d dVar) {
        if (!this.p) {
            this.o.a((x.b) this).a(5).i();
            this.p = true;
        }
        if (dVar != null) {
            this.l.add(dVar);
        }
    }

    private void a(e eVar, com.anythink.expressad.exoplayer.ae aeVar) {
        if (eVar == null) {
            throw new IllegalArgumentException();
        }
        b bVar = eVar.c;
        if (bVar.d() != aeVar) {
            int iB = aeVar.b() - bVar.b();
            int iC = aeVar.c() - bVar.c();
            if (iB != 0 || iC != 0) {
                a(eVar.d + 1, 0, iB, iC);
            }
            eVar.c = bVar.a(aeVar);
            if (!eVar.g && !aeVar.a()) {
                aeVar.a(0, this.n, false);
                ae.b bVar2 = this.n;
                long j = bVar2.j + bVar2.h;
                for (int i = 0; i < eVar.i.size(); i++) {
                    l lVar = eVar.i.get(i);
                    lVar.d(j);
                    lVar.f();
                }
                eVar.g = true;
            }
            a((d) null);
        }
    }

    private void a(s sVar) {
        a(this.h.size(), sVar, (Runnable) null);
    }

    private void a(s sVar, @Nullable Runnable runnable) {
        a(this.h.size(), sVar, runnable);
    }

    private void a(@Nullable Runnable runnable) {
        this.h.clear();
        com.anythink.expressad.exoplayer.h hVar = this.o;
        if (hVar != null) {
            hVar.a((x.b) this).a(4).a(runnable != null ? new d(runnable) : null).i();
        } else if (runnable != null) {
            runnable.run();
        }
    }

    private void a(Collection<s> collection) {
        a(this.h.size(), collection, (Runnable) null);
    }

    private void a(Collection<s> collection, @Nullable Runnable runnable) {
        a(this.h.size(), collection, runnable);
    }

    private s b(int i) {
        return this.h.get(i).a;
    }

    private void b(int i, int i2) {
        int iMin = Math.min(i, i2);
        int iMax = Math.max(i, i2);
        int iB = this.i.get(iMin).e;
        int iC = this.i.get(iMin).f;
        List<e> list = this.i;
        list.add(i2, list.remove(i));
        while (iMin <= iMax) {
            e eVar = this.i.get(iMin);
            eVar.e = iB;
            eVar.f = iC;
            iB += eVar.c.b();
            iC += eVar.c.c();
            iMin++;
        }
    }

    private void b(int i, Collection<e> collection) {
        Iterator<e> it = collection.iterator();
        while (it.hasNext()) {
            a(i, it.next());
            i++;
        }
    }

    private void b(e eVar, com.anythink.expressad.exoplayer.ae aeVar) {
        if (eVar == null) {
            throw new IllegalArgumentException();
        }
        b bVar = eVar.c;
        if (bVar.d() == aeVar) {
            return;
        }
        int iB = aeVar.b() - bVar.b();
        int iC = aeVar.c() - bVar.c();
        if (iB != 0 || iC != 0) {
            a(eVar.d + 1, 0, iB, iC);
        }
        eVar.c = bVar.a(aeVar);
        if (!eVar.g && !aeVar.a()) {
            aeVar.a(0, this.n, false);
            ae.b bVar2 = this.n;
            long j = bVar2.j + bVar2.h;
            for (int i = 0; i < eVar.i.size(); i++) {
                l lVar = eVar.i.get(i);
                lVar.d(j);
                lVar.f();
            }
            eVar.g = true;
        }
        a((d) null);
    }

    private void c() {
        this.h.clear();
        com.anythink.expressad.exoplayer.h hVar = this.o;
        if (hVar != null) {
            hVar.a((x.b) this).a(4).a((Object) null).i();
        }
    }

    private void c(int i) {
        e eVarRemove = this.i.remove(i);
        b bVar = eVarRemove.c;
        a(i, -1, -bVar.b(), -bVar.c());
        eVarRemove.h = true;
        if (eVarRemove.i.isEmpty()) {
            a(eVarRemove);
        }
    }

    private int d() {
        return this.h.size();
    }

    private int d(int i) {
        e eVar = this.j;
        eVar.f = i;
        int iBinarySearch = Collections.binarySearch(this.i, eVar);
        if (iBinarySearch < 0) {
            return (-iBinarySearch) - 2;
        }
        while (iBinarySearch < this.i.size() - 1) {
            int i2 = iBinarySearch + 1;
            if (this.i.get(i2).f != i) {
                break;
            }
            iBinarySearch = i2;
        }
        return iBinarySearch;
    }

    private void e() {
        this.p = false;
        List listEmptyList = this.l.isEmpty() ? Collections.emptyList() : new ArrayList(this.l);
        this.l.clear();
        a(new a(this.i, this.r, this.s, this.q, this.m), (Object) null);
        if (listEmptyList.isEmpty()) {
            return;
        }
        this.o.a((x.b) this).a(6).a(listEmptyList).i();
    }

    private void f() {
        for (int size = this.i.size() - 1; size >= 0; size--) {
            c(size);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.f
    public final /* bridge */ /* synthetic */ int a(e eVar, int i) {
        return i + eVar.e;
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final r a(s.a aVar, com.anythink.expressad.exoplayer.j.b bVar) {
        int i;
        int i2 = aVar.a;
        e eVar = this.j;
        eVar.f = i2;
        int iBinarySearch = Collections.binarySearch(this.i, eVar);
        if (iBinarySearch < 0) {
            i = (-iBinarySearch) - 2;
        } else {
            while (iBinarySearch < this.i.size() - 1) {
                int i3 = iBinarySearch + 1;
                if (this.i.get(i3).f != i2) {
                    break;
                }
                iBinarySearch = i3;
            }
            i = iBinarySearch;
        }
        e eVar2 = this.i.get(i);
        l lVar = new l(eVar2.a, aVar.a(aVar.a - eVar2.f), bVar);
        this.k.put(lVar, eVar2);
        eVar2.i.add(lVar);
        if (eVar2.g) {
            lVar.f();
        }
        return lVar;
    }

    @Override // com.anythink.expressad.exoplayer.h.f
    @Nullable
    public final /* synthetic */ s.a a(e eVar, s.a aVar) {
        e eVar2 = eVar;
        for (int i = 0; i < eVar2.i.size(); i++) {
            if (eVar2.i.get(i).b.d == aVar.d) {
                return aVar.a(aVar.a + eVar2.f);
            }
        }
        return null;
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.c
    public final void a() {
        super.a();
        this.i.clear();
        this.o = null;
        this.q = this.q.d();
        this.r = 0;
        this.s = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.anythink.expressad.exoplayer.x.b
    public final void a(int i, Object obj) {
        switch (i) {
            case 0:
                f fVar = (f) obj;
                this.q = this.q.a(fVar.a, 1);
                a(fVar.a, (e) fVar.b);
                a(fVar.c);
                return;
            case 1:
                f fVar2 = (f) obj;
                this.q = this.q.a(fVar2.a, ((Collection) fVar2.b).size());
                b(fVar2.a, (Collection<e>) fVar2.b);
                a(fVar2.c);
                return;
            case 2:
                f fVar3 = (f) obj;
                this.q = this.q.c(fVar3.a);
                c(fVar3.a);
                a(fVar3.c);
                return;
            case 3:
                f fVar4 = (f) obj;
                aa aaVarC = this.q.c(fVar4.a);
                this.q = aaVarC;
                this.q = aaVarC.a(((Integer) fVar4.b).intValue(), 1);
                int i2 = fVar4.a;
                int iIntValue = ((Integer) fVar4.b).intValue();
                int iMin = Math.min(i2, iIntValue);
                int iMax = Math.max(i2, iIntValue);
                int iB = this.i.get(iMin).e;
                int iC = this.i.get(iMin).f;
                List<e> list = this.i;
                list.add(iIntValue, list.remove(i2));
                while (iMin <= iMax) {
                    e eVar = this.i.get(iMin);
                    eVar.e = iB;
                    eVar.f = iC;
                    iB += eVar.c.b();
                    iC += eVar.c.c();
                    iMin++;
                }
                a(fVar4.c);
                return;
            case 4:
                for (int size = this.i.size() - 1; size >= 0; size--) {
                    c(size);
                }
                a((d) obj);
                return;
            case 5:
                e();
                return;
            case 6:
                List list2 = (List) obj;
                for (int i3 = 0; i3 < list2.size(); i3++) {
                    d dVar = (d) list2.get(i3);
                    dVar.a.post(dVar.b);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.s
    public final void a(r rVar) {
        e eVarRemove = this.k.remove(rVar);
        ((l) rVar).g();
        eVarRemove.i.remove(rVar);
        if (eVarRemove.i.isEmpty() && eVarRemove.h) {
            a(eVarRemove);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.f, com.anythink.expressad.exoplayer.h.c
    public final void a(com.anythink.expressad.exoplayer.h hVar, boolean z) {
        super.a(hVar, z);
        this.o = hVar;
        if (this.h.isEmpty()) {
            e();
            return;
        }
        this.q = this.q.a(0, this.h.size());
        b(0, this.h);
        a((d) null);
    }

    @Override // com.anythink.expressad.exoplayer.h.f
    public final /* synthetic */ void a(e eVar, s sVar, com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj) {
        e eVar2 = eVar;
        if (eVar2 == null) {
            throw new IllegalArgumentException();
        }
        b bVar = eVar2.c;
        if (bVar.d() != aeVar) {
            int iB = aeVar.b() - bVar.b();
            int iC = aeVar.c() - bVar.c();
            if (iB != 0 || iC != 0) {
                a(eVar2.d + 1, 0, iB, iC);
            }
            eVar2.c = bVar.a(aeVar);
            if (!eVar2.g && !aeVar.a()) {
                aeVar.a(0, this.n, false);
                ae.b bVar2 = this.n;
                long j = bVar2.j + bVar2.h;
                for (int i = 0; i < eVar2.i.size(); i++) {
                    l lVar = eVar2.i.get(i);
                    lVar.d(j);
                    lVar.f();
                }
                eVar2.g = true;
            }
            a((d) null);
        }
    }
}

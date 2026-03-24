package com.anythink.expressad.exoplayer.h;

import com.anythink.expressad.exoplayer.h.r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class u implements r, r.a {
    public final r[] a;
    private final h c;
    private r.a e;
    private af f;
    private r[] g;
    private z h;
    private final ArrayList<r> d = new ArrayList<>();
    private final IdentityHashMap<y, Integer> b = new IdentityHashMap<>();

    public u(h hVar, r... rVarArr) {
        this.c = hVar;
        this.a = rVarArr;
        this.h = hVar.a(new z[0]);
    }

    private void f() {
        this.e.a(this);
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long a(long j, com.anythink.expressad.exoplayer.ac acVar) {
        return this.g[0].a(j, acVar);
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long a(com.anythink.expressad.exoplayer.i.f[] fVarArr, boolean[] zArr, y[] yVarArr, boolean[] zArr2, long j) {
        y[] yVarArr2 = yVarArr;
        int[] iArr = new int[fVarArr.length];
        int[] iArr2 = new int[fVarArr.length];
        for (int i = 0; i < fVarArr.length; i++) {
            iArr[i] = yVarArr2[i] == null ? -1 : this.b.get(yVarArr2[i]).intValue();
            iArr2[i] = -1;
            if (fVarArr[i] != null) {
                ae aeVarF = fVarArr[i].f();
                int i2 = 0;
                while (true) {
                    r[] rVarArr = this.a;
                    if (i2 >= rVarArr.length) {
                        break;
                    }
                    if (rVarArr[i2].b().a(aeVarF) != -1) {
                        iArr2[i] = i2;
                        break;
                    }
                    i2++;
                }
            }
        }
        this.b.clear();
        int length = fVarArr.length;
        y[] yVarArr3 = new y[length];
        y[] yVarArr4 = new y[fVarArr.length];
        com.anythink.expressad.exoplayer.i.f[] fVarArr2 = new com.anythink.expressad.exoplayer.i.f[fVarArr.length];
        ArrayList arrayList = new ArrayList(this.a.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.a.length) {
            for (int i4 = 0; i4 < fVarArr.length; i4++) {
                com.anythink.expressad.exoplayer.i.f fVar = null;
                yVarArr4[i4] = iArr[i4] == i3 ? yVarArr2[i4] : null;
                if (iArr2[i4] == i3) {
                    fVar = fVarArr[i4];
                }
                fVarArr2[i4] = fVar;
            }
            int i5 = i3;
            com.anythink.expressad.exoplayer.i.f[] fVarArr3 = fVarArr2;
            ArrayList arrayList2 = arrayList;
            long jA = this.a[i3].a(fVarArr2, zArr, yVarArr4, zArr2, j2);
            if (i5 == 0) {
                j2 = jA;
            } else if (jA != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < fVarArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    com.anythink.expressad.exoplayer.k.a.b(yVarArr4[i6] != null);
                    yVarArr3[i6] = yVarArr4[i6];
                    this.b.put(yVarArr4[i6], Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    com.anythink.expressad.exoplayer.k.a.b(yVarArr4[i6] == null);
                }
            }
            if (z) {
                arrayList2.add(this.a[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            fVarArr2 = fVarArr3;
            yVarArr2 = yVarArr;
        }
        y[] yVarArr5 = yVarArr2;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(yVarArr3, 0, yVarArr5, 0, length);
        r[] rVarArr2 = new r[arrayList3.size()];
        this.g = rVarArr2;
        arrayList3.toArray(rVarArr2);
        this.h = this.c.a(this.g);
        return j2;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final void a() {
        for (r rVar : this.a) {
            rVar.a();
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final void a(long j, boolean z) {
        for (r rVar : this.g) {
            rVar.a(j, z);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final void a(r.a aVar, long j) {
        this.e = aVar;
        Collections.addAll(this.d, this.a);
        for (r rVar : this.a) {
            rVar.a(this, j);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.r.a
    public final void a(r rVar) {
        this.d.remove(rVar);
        if (this.d.isEmpty()) {
            int i = 0;
            for (r rVar2 : this.a) {
                i += rVar2.b().b;
            }
            ae[] aeVarArr = new ae[i];
            int i2 = 0;
            for (r rVar3 : this.a) {
                af afVarB = rVar3.b();
                int i3 = afVarB.b;
                int i4 = 0;
                while (i4 < i3) {
                    aeVarArr[i2] = afVarB.a(i4);
                    i4++;
                    i2++;
                }
            }
            this.f = new af(aeVarArr);
            this.e.a((r) this);
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.z.a
    public final /* bridge */ /* synthetic */ void a(z zVar) {
        this.e.a(this);
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final void a_(long j) {
        this.h.a_(j);
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long b(long j) {
        long jB = this.g[0].b(j);
        int i = 1;
        while (true) {
            r[] rVarArr = this.g;
            if (i >= rVarArr.length) {
                return jB;
            }
            if (rVarArr[i].b(jB) != jB) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final af b() {
        return this.f;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long c() {
        long jC = this.a[0].c();
        int i = 1;
        while (true) {
            r[] rVarArr = this.a;
            if (i >= rVarArr.length) {
                if (jC != com.anythink.expressad.exoplayer.b.b) {
                    for (r rVar : this.g) {
                        if (rVar != this.a[0] && rVar.b(jC) != jC) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                }
                return jC;
            }
            if (rVarArr[i].c() != com.anythink.expressad.exoplayer.b.b) {
                throw new IllegalStateException("Child reported discontinuity.");
            }
            i++;
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final boolean c(long j) {
        if (this.d.isEmpty()) {
            return this.h.c(j);
        }
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            this.d.get(i).c(j);
        }
        return false;
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final long d() {
        return this.h.d();
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final long e() {
        return this.h.e();
    }
}

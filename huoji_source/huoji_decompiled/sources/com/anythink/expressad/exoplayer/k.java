package com.anythink.expressad.exoplayer;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.ae;
import com.anythink.expressad.exoplayer.e;
import com.anythink.expressad.exoplayer.h.r;
import com.anythink.expressad.exoplayer.h.s;
import com.anythink.expressad.exoplayer.i.h;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.x;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class k implements Handler.Callback, e.a, r.a, s.b, h.a, x.a {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    private static final String d = "ExoPlayerImplInternal";
    private static final int e = 0;
    private static final int f = 1;
    private static final int g = 2;
    private static final int h = 3;
    private static final int i = 4;
    private static final int j = 5;
    private static final int k = 6;
    private static final int l = 7;
    private static final int m = 8;
    private static final int n = 9;
    private static final int o = 10;
    private static final int p = 11;
    private static final int q = 12;
    private static final int r = 13;
    private static final int s = 14;
    private static final int t = 15;
    private static final int u = 10;
    private static final int v = 10;
    private static final int w = 1000;
    private static final long x = 500;
    private final com.anythink.expressad.exoplayer.i.h A;
    private final com.anythink.expressad.exoplayer.i.i B;
    private final p C;
    private final com.anythink.expressad.exoplayer.k.k D;
    private final HandlerThread E;
    private final Handler F;
    private final h G;
    private final ae.b H;
    private final ae.a I;
    private final e L;
    private final ArrayList<b> N;
    private final com.anythink.expressad.exoplayer.k.c O;
    private u R;
    private com.anythink.expressad.exoplayer.h.s S;
    private y[] T;
    private boolean U;
    private boolean V;
    private boolean W;
    private int X;
    private boolean Y;
    private int Z;
    private d aa;
    private long ab;
    private int ac;
    private final y[] y;
    private final z[] z;
    private final s P = new s();
    private final long J = 0;
    private final boolean K = false;
    private ac Q = ac.e;
    private final c M = new c(0);

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.k$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ x a;

        public AnonymousClass1(x xVar) {
            this.a = xVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                k.f(this.a);
            } catch (g e) {
                Log.e(k.d, "Unexpected error delivering message on external thread.", e);
                throw new RuntimeException(e);
            }
        }
    }

    public static final class a {
        public final com.anythink.expressad.exoplayer.h.s a;
        public final ae b;
        public final Object c;

        public a(com.anythink.expressad.exoplayer.h.s sVar, ae aeVar, Object obj) {
            this.a = sVar;
            this.b = aeVar;
            this.c = obj;
        }
    }

    public static final class b implements Comparable<b> {
        public final x a;
        public int b;
        public long c;

        @Nullable
        public Object d;

        public b(x xVar) {
            this.a = xVar;
        }

        private int a(@NonNull b bVar) {
            Object obj = this.d;
            if ((obj == null) != (bVar.d == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.b - bVar.b;
            return i != 0 ? i : af.b(this.c, bVar.c);
        }

        public final void a(int i, long j, Object obj) {
            this.b = i;
            this.c = j;
            this.d = obj;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(@NonNull b bVar) {
            b bVar2 = bVar;
            Object obj = this.d;
            if ((obj == null) != (bVar2.d == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.b - bVar2.b;
            return i != 0 ? i : af.b(this.c, bVar2.c);
        }
    }

    public static final class c {
        private u a;
        private int b;
        private boolean c;
        private int d;

        private c() {
        }

        public /* synthetic */ c(byte b) {
            this();
        }

        public final void a(int i) {
            this.b += i;
        }

        public final boolean a(u uVar) {
            return uVar != this.a || this.b > 0 || this.c;
        }

        public final void b(int i) {
            if (this.c && this.d != 4) {
                com.anythink.expressad.exoplayer.k.a.a(i == 4);
            } else {
                this.c = true;
                this.d = i;
            }
        }

        public final void b(u uVar) {
            this.a = uVar;
            this.b = 0;
            this.c = false;
        }
    }

    public static final class d {
        public final ae a;
        public final int b;
        public final long c;

        public d(ae aeVar, int i, long j) {
            this.a = aeVar;
            this.b = i;
            this.c = j;
        }
    }

    public k(y[] yVarArr, com.anythink.expressad.exoplayer.i.h hVar, com.anythink.expressad.exoplayer.i.i iVar, p pVar, boolean z, int i2, boolean z3, Handler handler, h hVar2, com.anythink.expressad.exoplayer.k.c cVar) {
        this.y = yVarArr;
        this.A = hVar;
        this.B = iVar;
        this.C = pVar;
        this.V = z;
        this.X = i2;
        this.Y = z3;
        this.F = handler;
        this.G = hVar2;
        this.O = cVar;
        this.R = new u(ae.a, com.anythink.expressad.exoplayer.b.b, com.anythink.expressad.exoplayer.h.af.a, iVar);
        this.z = new z[yVarArr.length];
        for (int i3 = 0; i3 < yVarArr.length; i3++) {
            yVarArr[i3].a(i3);
            this.z[i3] = yVarArr[i3].b();
        }
        this.L = new e(this, cVar);
        this.N = new ArrayList<>();
        this.T = new y[0];
        this.H = new ae.b();
        this.I = new ae.a();
        hVar.a((h.a) this);
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.E = handlerThread;
        handlerThread.start();
        this.D = cVar.a(handlerThread.getLooper(), this);
    }

    private int a(int i2, ae aeVar, ae aeVar2) {
        int iC = aeVar.c();
        int iA = i2;
        int iA2 = -1;
        for (int i3 = 0; i3 < iC && iA2 == -1; i3++) {
            iA = aeVar.a(iA, this.I, this.H, this.X, this.Y);
            if (iA == -1) {
                break;
            }
            iA2 = aeVar2.a(aeVar.a(iA, this.I, true).b);
        }
        return iA2;
    }

    private long a(s.a aVar, long j2) {
        return a(aVar, j2, this.P.c() != this.P.d());
    }

    private long a(s.a aVar, long j2, boolean z) throws g {
        f();
        this.W = false;
        b(2);
        q qVarC = this.P.c();
        q qVarH = qVarC;
        while (true) {
            if (qVarH == null) {
                break;
            }
            if (a(aVar, j2, qVarH)) {
                this.P.a(qVarH);
                break;
            }
            qVarH = this.P.h();
        }
        if (qVarC != qVarH || z) {
            for (y yVar : this.T) {
                b(yVar);
            }
            this.T = new y[0];
            qVarC = null;
        }
        if (qVarH != null) {
            a(qVarC);
            if (qVarH.g) {
                long jB = qVarH.a.b(j2);
                qVarH.a.a(jB - this.J, this.K);
                j2 = jB;
            }
            a(j2);
            r();
        } else {
            this.P.b(true);
            a(j2);
        }
        this.D.b(2);
        return j2;
    }

    private Pair<Integer, Long> a(ae aeVar, int i2) {
        return aeVar.a(this.H, this.I, i2, com.anythink.expressad.exoplayer.b.b);
    }

    private Pair<Integer, Long> a(d dVar, boolean z) {
        int iA;
        ae aeVar = this.R.a;
        ae aeVar2 = dVar.a;
        if (aeVar.a()) {
            return null;
        }
        if (aeVar2.a()) {
            aeVar2 = aeVar;
        }
        try {
            Pair<Integer, Long> pairA = aeVar2.a(this.H, this.I, dVar.b, dVar.c);
            if (aeVar == aeVar2) {
                return pairA;
            }
            int iA2 = aeVar.a(aeVar2.a(((Integer) pairA.first).intValue(), this.I, true).b);
            if (iA2 != -1) {
                return Pair.create(Integer.valueOf(iA2), (Long) pairA.second);
            }
            if (!z || (iA = a(((Integer) pairA.first).intValue(), aeVar2, aeVar)) == -1) {
                return null;
            }
            return a(aeVar, aeVar.a(iA, this.I, false).c);
        } catch (IndexOutOfBoundsException unused) {
            throw new o(aeVar, dVar.b, dVar.c);
        }
    }

    private void a(float f2) {
        for (q qVarE = this.P.e(); qVarE != null; qVarE = qVarE.i) {
            com.anythink.expressad.exoplayer.i.i iVar = qVarE.k;
            if (iVar != null) {
                for (com.anythink.expressad.exoplayer.i.f fVar : iVar.c.a()) {
                    if (fVar != null) {
                        fVar.a(f2);
                    }
                }
            }
        }
    }

    private void a(int i2, boolean z, int i3) throws g {
        q qVarC = this.P.c();
        y yVar = this.y[i2];
        this.T[i3] = yVar;
        if (yVar.a_() == 0) {
            com.anythink.expressad.exoplayer.i.i iVar = qVarC.k;
            aa aaVar = iVar.b[i2];
            m[] mVarArrA = a(iVar.c.a(i2));
            boolean z3 = this.V && this.R.f == 3;
            yVar.a(aaVar, mVarArrA, qVarC.c[i2], this.ab, !z && z3, qVarC.e);
            this.L.a(yVar);
            if (z3) {
                yVar.b_();
            }
        }
    }

    private void a(long j2) {
        if (this.P.f()) {
            j2 += this.P.c().e;
        }
        this.ab = j2;
        this.L.a(j2);
        for (y yVar : this.T) {
            yVar.a(this.ab);
        }
    }

    private void a(long j2, long j3) {
        this.D.b();
        this.D.a(j2 + j3);
    }

    private void a(com.anythink.expressad.exoplayer.i.i iVar) {
        this.C.a(this.y, iVar.c);
    }

    private void a(a aVar) throws g {
        u uVarA;
        long jLongValue;
        s.a aVarA;
        long jA;
        u uVar;
        if (aVar.a != this.S) {
            return;
        }
        ae aeVar = this.R.a;
        ae aeVar2 = aVar.b;
        Object obj = aVar.c;
        this.P.a(aeVar2);
        this.R = this.R.a(aeVar2, obj);
        for (int size = this.N.size() - 1; size >= 0; size--) {
            if (!a(this.N.get(size))) {
                this.N.get(size).a.a(false);
                this.N.remove(size);
            }
        }
        Collections.sort(this.N);
        int i2 = this.Z;
        if (i2 > 0) {
            this.M.a(i2);
            this.Z = 0;
            d dVar = this.aa;
            if (dVar == null) {
                if (this.R.d == com.anythink.expressad.exoplayer.b.b) {
                    if (aeVar2.a()) {
                        o();
                        return;
                    }
                    Pair<Integer, Long> pairA = a(aeVar2, aeVar2.b(this.Y));
                    int iIntValue = ((Integer) pairA.first).intValue();
                    long jLongValue2 = ((Long) pairA.second).longValue();
                    s.a aVarA2 = this.P.a(iIntValue, jLongValue2);
                    this.R = this.R.a(aVarA2, aVarA2.a() ? 0L : jLongValue2, jLongValue2);
                    return;
                }
                return;
            }
            Pair<Integer, Long> pairA2 = a(dVar, true);
            this.aa = null;
            if (pairA2 == null) {
                o();
                return;
            }
            int iIntValue2 = ((Integer) pairA2.first).intValue();
            jLongValue = ((Long) pairA2.second).longValue();
            aVarA = this.P.a(iIntValue2, jLongValue);
            uVar = this.R;
            jA = aVarA.a() ? 0L : jLongValue;
        } else {
            u uVar2 = this.R;
            int i3 = uVar2.c.a;
            long j2 = uVar2.e;
            if (aeVar.a()) {
                if (aeVar2.a()) {
                    return;
                }
                s.a aVarA3 = this.P.a(i3, j2);
                this.R = this.R.a(aVarA3, aVarA3.a() ? 0L : j2, j2);
                return;
            }
            q qVarE = this.P.e();
            int iA = aeVar2.a(qVarE == null ? aeVar.a(i3, this.I, true).b : qVarE.b);
            if (iA != -1) {
                if (iA != i3) {
                    this.R = this.R.a(iA);
                }
                s.a aVar2 = this.R.c;
                if (aVar2.a()) {
                    s.a aVarA4 = this.P.a(iA, j2);
                    if (!aVarA4.equals(aVar2)) {
                        uVarA = this.R.a(aVarA4, a(aVarA4, aVarA4.a() ? 0L : j2), j2);
                        this.R = uVarA;
                    }
                }
                if (this.P.a(aVar2, this.ab)) {
                    return;
                }
                g(false);
                return;
            }
            int iA2 = a(i3, aeVar, aeVar2);
            if (iA2 == -1) {
                o();
                return;
            }
            Pair<Integer, Long> pairA3 = a(aeVar2, aeVar2.a(iA2, this.I, false).c);
            int iIntValue3 = ((Integer) pairA3.first).intValue();
            jLongValue = ((Long) pairA3.second).longValue();
            aVarA = this.P.a(iIntValue3, jLongValue);
            aeVar2.a(iIntValue3, this.I, true);
            if (qVarE != null) {
                Object obj2 = this.I.b;
                loop1: while (true) {
                    r rVarA = qVarE.h.a();
                    while (true) {
                        qVarE.h = rVarA;
                        qVarE = qVarE.i;
                        if (qVarE == null) {
                            break loop1;
                        } else if (qVarE.b.equals(obj2)) {
                            rVarA = this.P.a(qVarE.h, iIntValue3);
                        }
                    }
                }
            }
            jA = a(aVarA, aVarA.a() ? 0L : jLongValue);
            uVar = this.R;
        }
        uVarA = uVar.a(aVarA, jA, jLongValue);
        this.R = uVarA;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00c7 A[Catch: all -> 0x00db, TRY_LEAVE, TryCatch #0 {all -> 0x00db, blocks: (B:15:0x005d, B:17:0x0061, B:22:0x006a, B:23:0x0072, B:25:0x007c, B:29:0x0088, B:31:0x0092, B:33:0x00a2, B:39:0x00b9, B:43:0x00c3, B:44:0x00c7), top: B:55:0x005d }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(d dVar) {
        long jLongValue;
        boolean z;
        s.a aVar;
        long j2;
        long j3;
        long jA;
        boolean z3 = true;
        this.M.a(1);
        Pair<Integer, Long> pairA = a(dVar, true);
        try {
            if (pairA == null) {
                aVar = new s.a(j());
                jLongValue = -9223372036854775807L;
                j2 = -9223372036854775807L;
            } else {
                int iIntValue = ((Integer) pairA.first).intValue();
                long jLongValue2 = ((Long) pairA.second).longValue();
                s.a aVarA = this.P.a(iIntValue, jLongValue2);
                if (aVarA.a()) {
                    jLongValue = 0;
                    aVar = aVarA;
                    j2 = jLongValue2;
                } else {
                    jLongValue = ((Long) pairA.second).longValue();
                    z = dVar.c == com.anythink.expressad.exoplayer.b.b;
                    aVar = aVarA;
                    j2 = jLongValue2;
                    if (this.S != null || this.Z > 0) {
                        this.aa = dVar;
                    } else {
                        if (jLongValue != com.anythink.expressad.exoplayer.b.b) {
                            if (aVar.equals(this.R.c)) {
                                q qVarC = this.P.c();
                                jA = (qVarC == null || jLongValue == 0) ? jLongValue : qVarC.a.a(jLongValue, this.Q);
                                if (com.anythink.expressad.exoplayer.b.a(jA) == com.anythink.expressad.exoplayer.b.a(this.R.j)) {
                                    this.R = this.R.a(aVar, this.R.j, j2);
                                    if (z) {
                                        this.M.b(2);
                                        return;
                                    }
                                    return;
                                }
                            } else {
                                jA = jLongValue;
                            }
                            long jA2 = a(aVar, jA);
                            if (jLongValue == jA2) {
                                z3 = false;
                            }
                            z |= z3;
                            j3 = jA2;
                            this.R = this.R.a(aVar, j3, j2);
                            if (z) {
                                this.M.b(2);
                                return;
                            }
                            return;
                        }
                        b(4);
                        a(false, true, false);
                    }
                    j3 = jLongValue;
                    this.R = this.R.a(aVar, j3, j2);
                    if (z) {
                    }
                }
            }
            if (this.S != null) {
                this.aa = dVar;
                j3 = jLongValue;
            }
            this.R = this.R.a(aVar, j3, j2);
            if (z) {
            }
        } catch (Throwable th) {
            this.R = this.R.a(aVar, jLongValue, j2);
            if (z) {
                this.M.b(2);
            }
            throw th;
        }
        z = true;
    }

    private void a(@Nullable q qVar) throws g {
        q qVarC = this.P.c();
        if (qVarC == null || qVar == qVarC) {
            return;
        }
        boolean[] zArr = new boolean[this.y.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            y[] yVarArr = this.y;
            if (i2 >= yVarArr.length) {
                this.R = this.R.a(qVarC.j, qVarC.k);
                a(zArr, i3);
                return;
            }
            y yVar = yVarArr[i2];
            zArr[i2] = yVar.a_() != 0;
            if (qVarC.k.a(i2)) {
                i3++;
            }
            if (zArr[i2] && (!qVarC.k.a(i2) || (yVar.i() && yVar.f() == qVar.c[i2]))) {
                b(yVar);
            }
            i2++;
        }
    }

    private static void a(y yVar) {
        if (yVar.a_() == 2) {
            yVar.k();
        }
    }

    private void a(boolean z, boolean z3) {
        a(true, z, z);
        this.M.a(this.Z + (z3 ? 1 : 0));
        this.Z = 0;
        this.C.b();
        b(1);
    }

    private void a(boolean z, boolean z3, boolean z4) {
        com.anythink.expressad.exoplayer.h.s sVar;
        this.D.b();
        this.W = false;
        this.L.b();
        this.ab = 0L;
        for (y yVar : this.T) {
            try {
                b(yVar);
            } catch (g | RuntimeException e2) {
                Log.e(d, "Stop failed.", e2);
            }
        }
        this.T = new y[0];
        this.P.b(!z3);
        d(false);
        if (z3) {
            this.aa = null;
        }
        if (z4) {
            this.P.a(ae.a);
            Iterator<b> it = this.N.iterator();
            while (it.hasNext()) {
                it.next().a.a(false);
            }
            this.N.clear();
            this.ac = 0;
        }
        ae aeVar = z4 ? ae.a : this.R.a;
        Object obj = z4 ? null : this.R.b;
        s.a aVar = z3 ? new s.a(j()) : this.R.c;
        long j2 = com.anythink.expressad.exoplayer.b.b;
        long j3 = z3 ? -9223372036854775807L : this.R.j;
        if (!z3) {
            j2 = this.R.e;
        }
        long j4 = j2;
        u uVar = this.R;
        this.R = new u(aeVar, obj, aVar, j3, j4, uVar.f, false, z4 ? com.anythink.expressad.exoplayer.h.af.a : uVar.h, z4 ? this.B : uVar.i);
        if (!z || (sVar = this.S) == null) {
            return;
        }
        sVar.a(this);
        this.S = null;
    }

    private void a(boolean[] zArr, int i2) throws g {
        this.T = new y[i2];
        q qVarC = this.P.c();
        int i3 = 0;
        for (int i4 = 0; i4 < this.y.length; i4++) {
            if (qVarC.k.a(i4)) {
                a(i4, zArr[i4], i3);
                i3++;
            }
        }
    }

    private boolean a(s.a aVar, long j2, q qVar) {
        if (aVar.equals(qVar.h.a) && qVar.f) {
            this.R.a.a(qVar.h.a.a, this.I, false);
            int iB = this.I.b(j2);
            if (iB == -1 || this.I.a(iB) == qVar.h.c) {
                return true;
            }
        }
        return false;
    }

    private boolean a(b bVar) {
        Object obj = bVar.d;
        if (obj == null) {
            Pair<Integer, Long> pairA = a(new d(bVar.a.a(), bVar.a.g(), com.anythink.expressad.exoplayer.b.b(bVar.a.f())), false);
            if (pairA == null) {
                return false;
            }
            bVar.a(((Integer) pairA.first).intValue(), ((Long) pairA.second).longValue(), this.R.a.a(((Integer) pairA.first).intValue(), this.I, true).b);
        } else {
            int iA = this.R.a.a(obj);
            if (iA == -1) {
                return false;
            }
            bVar.b = iA;
        }
        return true;
    }

    @NonNull
    private static m[] a(com.anythink.expressad.exoplayer.i.f fVar) {
        int iG = fVar != null ? fVar.g() : 0;
        m[] mVarArr = new m[iG];
        for (int i2 = 0; i2 < iG; i2++) {
            mVarArr[i2] = fVar.a(i2);
        }
        return mVarArr;
    }

    private void b(int i2) {
        u uVar = this.R;
        if (uVar.f != i2) {
            this.R = uVar.b(i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0055, code lost:
    
        if (r6.ac < r6.N.size()) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        r1 = r6.N.get(r6.ac);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
    
        if (r1 == null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0067, code lost:
    
        if (r1.d == null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0069, code lost:
    
        r3 = r1.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006b, code lost:
    
        if (r3 < r0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
    
        if (r3 != r0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0073, code lost:
    
        if (r1.c > r7) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0075, code lost:
    
        r1 = r6.ac + 1;
        r6.ac = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0081, code lost:
    
        if (r1 >= r6.N.size()) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0084, code lost:
    
        if (r1 == null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0088, code lost:
    
        if (r1.d == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008c, code lost:
    
        if (r1.b != r0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008e, code lost:
    
        r3 = r1.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0092, code lost:
    
        if (r3 <= r7) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0096, code lost:
    
        if (r3 > r9) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0098, code lost:
    
        d(r1.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a3, code lost:
    
        if (r1.a.h() != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ab, code lost:
    
        if (r1.a.j() == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ae, code lost:
    
        r6.ac++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b5, code lost:
    
        r6.N.remove(r6.ac);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c4, code lost:
    
        if (r6.ac >= r6.N.size()) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c6, code lost:
    
        r1 = r6.N.get(r6.ac);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d1, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0034, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0063, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:?, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x004a -> B:13:0x002a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0081 -> B:26:0x0057). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b(long j2, long j3) {
        b bVar;
        if (this.N.isEmpty() || this.R.c.a()) {
            return;
        }
        u uVar = this.R;
        if (uVar.d == j2) {
            j2--;
        }
        int i2 = uVar.c.a;
        int i3 = this.ac;
        if (i3 > 0) {
            ArrayList<b> arrayList = this.N;
            bVar = arrayList.get(i3 - 1);
            while (bVar != null) {
                int i4 = bVar.b;
                if (i4 <= i2 && (i4 != i2 || bVar.c <= j2)) {
                    break;
                }
                i3 = this.ac - 1;
                this.ac = i3;
                if (i3 > 0) {
                    arrayList = this.N;
                    bVar = arrayList.get(i3 - 1);
                    while (bVar != null) {
                    }
                }
            }
        }
        bVar = null;
    }

    private void b(ac acVar) {
        this.Q = acVar;
    }

    private void b(com.anythink.expressad.exoplayer.h.r rVar) {
        this.D.a(10, rVar).sendToTarget();
    }

    private void b(com.anythink.expressad.exoplayer.h.s sVar, boolean z, boolean z3) {
        this.Z++;
        a(true, z, z3);
        this.C.a();
        this.S = sVar;
        b(2);
        sVar.a(this.G, true, this);
        this.D.b(2);
    }

    private void b(y yVar) {
        this.L.b(yVar);
        a(yVar);
        yVar.l();
    }

    private void c(int i2) throws g {
        this.X = i2;
        if (this.P.a(i2)) {
            return;
        }
        g(true);
    }

    private void c(com.anythink.expressad.exoplayer.h.r rVar) throws g {
        if (this.P.a(rVar)) {
            q qVarB = this.P.b();
            float f2 = this.L.e().b;
            qVarB.f = true;
            qVarB.j = qVarB.a.b();
            qVarB.a(f2);
            long jB = qVarB.b(qVarB.h.b);
            long j2 = qVarB.e;
            r rVar2 = qVarB.h;
            qVarB.e = j2 + (rVar2.b - jB);
            qVarB.h = new r(rVar2.a, jB, rVar2.c, rVar2.d, rVar2.e, rVar2.f, rVar2.g);
            a(qVarB.k);
            if (!this.P.f()) {
                a(this.P.h().h.b);
                a((q) null);
            }
            r();
        }
    }

    private void c(v vVar) {
        this.L.a(vVar);
    }

    private void c(x xVar) {
        if (xVar.f() == com.anythink.expressad.exoplayer.b.b) {
            d(xVar);
            return;
        }
        if (this.S == null || this.Z > 0) {
            this.N.add(new b(xVar));
            return;
        }
        b bVar = new b(xVar);
        if (!a(bVar)) {
            xVar.a(false);
        } else {
            this.N.add(bVar);
            Collections.sort(this.N);
        }
    }

    private boolean c(y yVar) {
        q qVar = this.P.d().i;
        return qVar != null && qVar.f && yVar.g();
    }

    private void d() {
        if (this.M.a(this.R)) {
            this.F.obtainMessage(0, this.M.b, this.M.c ? this.M.d : -1, this.R).sendToTarget();
            this.M.b(this.R);
        }
    }

    private void d(com.anythink.expressad.exoplayer.h.r rVar) {
        if (this.P.a(rVar)) {
            this.P.a(this.ab);
            r();
        }
    }

    private void d(x xVar) {
        if (xVar.e().getLooper() != this.D.a()) {
            this.D.a(15, xVar).sendToTarget();
            return;
        }
        f(xVar);
        int i2 = this.R.f;
        if (i2 == 3 || i2 == 2) {
            this.D.b(2);
        }
    }

    private void d(boolean z) {
        u uVar = this.R;
        if (uVar.g != z) {
            this.R = uVar.a(z);
        }
    }

    private void e() {
        this.W = false;
        this.L.a();
        for (y yVar : this.T) {
            yVar.b_();
        }
    }

    private void e(x xVar) {
        xVar.e().post(new AnonymousClass1(xVar));
    }

    private void e(boolean z) {
        this.W = false;
        this.V = z;
        if (!z) {
            f();
            g();
            return;
        }
        int i2 = this.R.f;
        if (i2 == 3) {
            e();
            this.D.b(2);
        } else if (i2 == 2) {
            this.D.b(2);
        }
    }

    private void f() {
        this.L.b();
        for (y yVar : this.T) {
            a(yVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(x xVar) {
        if (xVar.j()) {
            return;
        }
        try {
            xVar.b().a(xVar.c(), xVar.d());
        } finally {
            xVar.a(true);
        }
    }

    private void f(boolean z) throws g {
        this.Y = z;
        if (this.P.a(z)) {
            return;
        }
        g(true);
    }

    private void g() {
        if (this.P.f()) {
            q qVarC = this.P.c();
            long jC = qVarC.a.c();
            if (jC != com.anythink.expressad.exoplayer.b.b) {
                a(jC);
                if (jC != this.R.j) {
                    u uVar = this.R;
                    this.R = uVar.a(uVar.c, jC, uVar.e);
                    this.M.b(4);
                }
            } else {
                long jC2 = this.L.c();
                this.ab = jC2;
                long j2 = jC2 - qVarC.e;
                b(this.R.j, j2);
                this.R.j = j2;
            }
            this.R.k = this.T.length == 0 ? qVarC.h.e : qVarC.a(true);
        }
    }

    private void g(boolean z) throws g {
        s.a aVar = this.P.c().h.a;
        long jA = a(aVar, this.R.j, true);
        if (jA != this.R.j) {
            u uVar = this.R;
            this.R = uVar.a(aVar, jA, uVar.e);
            if (z) {
                this.M.b(4);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02f5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0197  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void h() throws g {
        boolean zM;
        int i2;
        long j2;
        boolean z;
        long jB = this.O.b();
        com.anythink.expressad.exoplayer.h.s sVar = this.S;
        if (sVar != null) {
            if (this.Z > 0) {
                sVar.b();
            } else {
                this.P.a(this.ab);
                if (this.P.a()) {
                    r rVarA = this.P.a(this.ab, this.R);
                    if (rVarA == null) {
                        this.S.b();
                    } else {
                        this.P.a(this.z, this.A, this.C.d(), this.S, this.R.a.a(rVarA.a.a, this.I, true).b, rVarA).a(this, rVarA.b);
                        d(true);
                    }
                }
                q qVarB = this.P.b();
                if (qVarB == null || qVarB.a()) {
                    d(false);
                } else if (!this.R.g) {
                    r();
                }
                if (this.P.f()) {
                    q qVarC = this.P.c();
                    q qVarD = this.P.d();
                    boolean z3 = false;
                    while (this.V && qVarC != qVarD && this.ab >= qVarC.i.e) {
                        if (z3) {
                            d();
                        }
                        int i3 = qVarC.h.f ? 0 : 3;
                        q qVarH = this.P.h();
                        a(qVarC);
                        u uVar = this.R;
                        r rVar = qVarH.h;
                        this.R = uVar.a(rVar.a, rVar.b, rVar.d);
                        this.M.b(i3);
                        g();
                        qVarC = qVarH;
                        z3 = true;
                    }
                    if (qVarD.h.g) {
                        int i4 = 0;
                        while (true) {
                            y[] yVarArr = this.y;
                            if (i4 >= yVarArr.length) {
                                break;
                            }
                            y yVar = yVarArr[i4];
                            com.anythink.expressad.exoplayer.h.y yVar2 = qVarD.c[i4];
                            if (yVar2 != null && yVar.f() == yVar2 && yVar.g()) {
                                yVar.h();
                            }
                            i4++;
                        }
                    } else {
                        q qVar = qVarD.i;
                        if (qVar != null && qVar.f) {
                            int i5 = 0;
                            while (true) {
                                y[] yVarArr2 = this.y;
                                if (i5 >= yVarArr2.length) {
                                    com.anythink.expressad.exoplayer.i.i iVar = qVarD.k;
                                    q qVarG = this.P.g();
                                    com.anythink.expressad.exoplayer.i.i iVar2 = qVarG.k;
                                    boolean z4 = qVarG.a.c() != com.anythink.expressad.exoplayer.b.b;
                                    int i6 = 0;
                                    while (true) {
                                        y[] yVarArr3 = this.y;
                                        if (i6 >= yVarArr3.length) {
                                            break;
                                        }
                                        y yVar3 = yVarArr3[i6];
                                        if (iVar.a(i6)) {
                                            if (z4) {
                                                yVar3.h();
                                            } else if (!yVar3.i()) {
                                                com.anythink.expressad.exoplayer.i.f fVarA = iVar2.c.a(i6);
                                                boolean zA = iVar2.a(i6);
                                                boolean z5 = this.z[i6].a() == 5;
                                                aa aaVar = iVar.b[i6];
                                                aa aaVar2 = iVar2.b[i6];
                                                if (zA && aaVar2.equals(aaVar) && !z5) {
                                                    yVar3.a(a(fVarA), qVarG.c[i6], qVarG.e);
                                                }
                                            }
                                        }
                                        i6++;
                                    }
                                } else {
                                    y yVar4 = yVarArr2[i5];
                                    com.anythink.expressad.exoplayer.h.y yVar5 = qVarD.c[i5];
                                    if (yVar4.f() != yVar5 || (yVar5 != null && !yVar4.g())) {
                                        break;
                                    } else {
                                        i5++;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!this.P.f()) {
            n();
            a(jB, 10L);
            return;
        }
        q qVarC2 = this.P.c();
        com.anythink.expressad.exoplayer.k.ad.a("doSomeWork");
        g();
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        qVarC2.a.a(this.R.j - this.J, this.K);
        boolean z6 = true;
        boolean z7 = true;
        for (y yVar6 : this.T) {
            yVar6.a(this.ab, jElapsedRealtime);
            z7 = z7 && yVar6.v();
            if (yVar6.u() || yVar6.v()) {
                z = true;
            } else {
                q qVar2 = this.P.d().i;
                if (!(qVar2 != null && qVar2.f && yVar6.g())) {
                    z = false;
                }
            }
            if (!z) {
                yVar6.j();
            }
            z6 = z6 && z;
        }
        if (!z6) {
            n();
        }
        long j3 = qVarC2.h.e;
        if (!z7 || ((j3 != com.anythink.expressad.exoplayer.b.b && j3 > this.R.j) || !qVarC2.h.g)) {
            u uVar2 = this.R;
            if (uVar2.f == 2) {
                if (this.T.length == 0) {
                    zM = m();
                } else if (z6) {
                    if (uVar2.g) {
                        q qVarB2 = this.P.b();
                        long jA = qVarB2.a(!qVarB2.h.g);
                        if (jA == Long.MIN_VALUE || this.C.a(jA - (this.ab - qVarB2.e), this.L.e().b, this.W)) {
                        }
                    }
                    zM = true;
                } else {
                    zM = false;
                }
                if (zM) {
                    b(3);
                    if (this.V) {
                        e();
                    }
                }
            } else if (this.R.f == 3 && (this.T.length != 0 ? !z6 : !m())) {
                this.W = this.V;
                b(2);
            }
            if (this.R.f == 2) {
                for (y yVar7 : this.T) {
                    yVar7.j();
                }
            }
            if ((!this.V && this.R.f == 3) || (i2 = this.R.f) == 2) {
                j2 = 10;
            } else {
                if (this.T.length != 0 || i2 == 4) {
                    this.D.b();
                    com.anythink.expressad.exoplayer.k.ad.a();
                }
                j2 = 1000;
            }
            a(jB, j2);
            com.anythink.expressad.exoplayer.k.ad.a();
        }
        b(4);
        f();
        if (this.R.f == 2) {
        }
        if (!this.V) {
            if (this.T.length != 0) {
            }
            this.D.b();
        } else {
            if (this.T.length != 0) {
            }
            this.D.b();
        }
        com.anythink.expressad.exoplayer.k.ad.a();
    }

    private boolean h(boolean z) {
        if (this.T.length == 0) {
            return m();
        }
        if (!z) {
            return false;
        }
        if (!this.R.g) {
            return true;
        }
        q qVarB = this.P.b();
        long jA = qVarB.a(!qVarB.h.g);
        return jA == Long.MIN_VALUE || this.C.a(jA - (this.ab - qVarB.e), this.L.e().b, this.W);
    }

    private void i() {
        a(true, true, true);
        this.C.c();
        b(1);
        if (Build.VERSION.SDK_INT >= 18) {
            this.E.quitSafely();
        } else {
            this.E.quit();
        }
        synchronized (this) {
            this.U = true;
            notifyAll();
        }
    }

    private int j() {
        ae aeVar = this.R.a;
        if (aeVar.a()) {
            return 0;
        }
        return aeVar.a(aeVar.b(this.Y), this.H, false).f;
    }

    private void k() {
        for (int size = this.N.size() - 1; size >= 0; size--) {
            if (!a(this.N.get(size))) {
                this.N.get(size).a.a(false);
                this.N.remove(size);
            }
        }
        Collections.sort(this.N);
    }

    private void l() throws g {
        if (this.P.f()) {
            float f2 = this.L.e().b;
            q qVarD = this.P.d();
            boolean z = true;
            for (q qVarC = this.P.c(); qVarC != null && qVarC.f; qVarC = qVarC.i) {
                if (qVarC.a(f2)) {
                    if (z) {
                        q qVarC2 = this.P.c();
                        boolean zA = this.P.a(qVarC2);
                        boolean[] zArr = new boolean[this.y.length];
                        long jA = qVarC2.a(this.R.j, zA, zArr);
                        a(qVarC2.k);
                        u uVar = this.R;
                        if (uVar.f != 4 && jA != uVar.j) {
                            u uVar2 = this.R;
                            this.R = uVar2.a(uVar2.c, jA, uVar2.e);
                            this.M.b(4);
                            a(jA);
                        }
                        boolean[] zArr2 = new boolean[this.y.length];
                        int i2 = 0;
                        int i3 = 0;
                        while (true) {
                            y[] yVarArr = this.y;
                            if (i2 >= yVarArr.length) {
                                break;
                            }
                            y yVar = yVarArr[i2];
                            zArr2[i2] = yVar.a_() != 0;
                            com.anythink.expressad.exoplayer.h.y yVar2 = qVarC2.c[i2];
                            if (yVar2 != null) {
                                i3++;
                            }
                            if (zArr2[i2]) {
                                if (yVar2 != yVar.f()) {
                                    b(yVar);
                                } else if (zArr[i2]) {
                                    yVar.a(this.ab);
                                }
                            }
                            i2++;
                        }
                        this.R = this.R.a(qVarC2.j, qVarC2.k);
                        a(zArr2, i3);
                    } else {
                        this.P.a(qVarC);
                        if (qVarC.f) {
                            qVarC.b(Math.max(qVarC.h.b, this.ab - qVarC.e));
                            a(qVarC.k);
                        }
                    }
                    if (this.R.f != 4) {
                        r();
                        g();
                        this.D.b(2);
                        return;
                    }
                    return;
                }
                if (qVarC == qVarD) {
                    z = false;
                }
            }
        }
    }

    private boolean m() {
        q qVarC = this.P.c();
        long j2 = qVarC.h.e;
        if (j2 == com.anythink.expressad.exoplayer.b.b || this.R.j < j2) {
            return true;
        }
        q qVar = qVarC.i;
        if (qVar != null) {
            return qVar.f || qVar.h.a.a();
        }
        return false;
    }

    private void n() {
        q qVarB = this.P.b();
        q qVarD = this.P.d();
        if (qVarB == null || qVarB.f) {
            return;
        }
        if (qVarD == null || qVarD.i == qVarB) {
            for (y yVar : this.T) {
                if (!yVar.g()) {
                    return;
                }
            }
            qVarB.a.a();
        }
    }

    private void o() {
        b(4);
        a(false, true, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:91:0x0188  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void p() throws g {
        com.anythink.expressad.exoplayer.h.s sVar = this.S;
        if (sVar == null) {
            return;
        }
        if (this.Z > 0) {
            sVar.b();
            return;
        }
        this.P.a(this.ab);
        if (this.P.a()) {
            r rVarA = this.P.a(this.ab, this.R);
            if (rVarA == null) {
                this.S.b();
            } else {
                this.P.a(this.z, this.A, this.C.d(), this.S, this.R.a.a(rVarA.a.a, this.I, true).b, rVarA).a(this, rVarA.b);
                d(true);
            }
        }
        q qVarB = this.P.b();
        int i2 = 0;
        if (qVarB == null || qVarB.a()) {
            d(false);
        } else if (!this.R.g) {
            r();
        }
        if (!this.P.f()) {
            return;
        }
        q qVarC = this.P.c();
        q qVarD = this.P.d();
        boolean z = false;
        while (this.V && qVarC != qVarD && this.ab >= qVarC.i.e) {
            if (z) {
                d();
            }
            int i3 = qVarC.h.f ? 0 : 3;
            q qVarH = this.P.h();
            a(qVarC);
            u uVar = this.R;
            r rVar = qVarH.h;
            this.R = uVar.a(rVar.a, rVar.b, rVar.d);
            this.M.b(i3);
            g();
            qVarC = qVarH;
            z = true;
        }
        if (qVarD.h.g) {
            while (true) {
                y[] yVarArr = this.y;
                if (i2 >= yVarArr.length) {
                    return;
                }
                y yVar = yVarArr[i2];
                com.anythink.expressad.exoplayer.h.y yVar2 = qVarD.c[i2];
                if (yVar2 != null && yVar.f() == yVar2 && yVar.g()) {
                    yVar.h();
                }
                i2++;
            }
        } else {
            q qVar = qVarD.i;
            if (qVar == null || !qVar.f) {
                return;
            }
            int i4 = 0;
            while (true) {
                y[] yVarArr2 = this.y;
                if (i4 < yVarArr2.length) {
                    y yVar3 = yVarArr2[i4];
                    com.anythink.expressad.exoplayer.h.y yVar4 = qVarD.c[i4];
                    if (yVar3.f() != yVar4) {
                        return;
                    }
                    if (yVar4 != null && !yVar3.g()) {
                        return;
                    } else {
                        i4++;
                    }
                } else {
                    com.anythink.expressad.exoplayer.i.i iVar = qVarD.k;
                    q qVarG = this.P.g();
                    com.anythink.expressad.exoplayer.i.i iVar2 = qVarG.k;
                    boolean z3 = qVarG.a.c() != com.anythink.expressad.exoplayer.b.b;
                    int i5 = 0;
                    while (true) {
                        y[] yVarArr3 = this.y;
                        if (i5 >= yVarArr3.length) {
                            return;
                        }
                        y yVar5 = yVarArr3[i5];
                        if (iVar.a(i5)) {
                            if (z3) {
                                yVar5.h();
                            } else if (!yVar5.i()) {
                                com.anythink.expressad.exoplayer.i.f fVarA = iVar2.c.a(i5);
                                boolean zA = iVar2.a(i5);
                                boolean z4 = this.z[i5].a() == 5;
                                aa aaVar = iVar.b[i5];
                                aa aaVar2 = iVar2.b[i5];
                                if (zA && aaVar2.equals(aaVar) && !z4) {
                                    yVar5.a(a(fVarA), qVarG.c[i5], qVarG.e);
                                }
                            }
                        }
                        i5++;
                    }
                }
            }
        }
    }

    private void q() {
        this.P.a(this.ab);
        if (this.P.a()) {
            r rVarA = this.P.a(this.ab, this.R);
            if (rVarA == null) {
                this.S.b();
                return;
            }
            this.P.a(this.z, this.A, this.C.d(), this.S, this.R.a.a(rVarA.a.a, this.I, true).b, rVarA).a(this, rVarA.b);
            d(true);
        }
    }

    private void r() {
        q qVarB = this.P.b();
        long jB = qVarB.b();
        if (jB == Long.MIN_VALUE) {
            d(false);
            return;
        }
        boolean zA = this.C.a(jB - (this.ab - qVarB.e), this.L.e().b);
        d(zA);
        if (zA) {
            qVarB.a(this.ab);
        }
    }

    public final synchronized void a() {
        if (!this.U && this.E.isAlive()) {
            this.D.b(7);
            long jA = 500;
            long jA2 = this.O.a() + 500;
            boolean z = false;
            while (!this.U && jA > 0) {
                try {
                    wait(jA);
                } catch (InterruptedException unused) {
                    z = true;
                }
                jA = jA2 - this.O.a();
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public final void a(int i2) {
        this.D.a(12, i2).sendToTarget();
    }

    public final void a(ac acVar) {
        this.D.a(5, acVar).sendToTarget();
    }

    public final void a(ae aeVar, int i2, long j2) {
        this.D.a(3, new d(aeVar, i2, j2)).sendToTarget();
    }

    @Override // com.anythink.expressad.exoplayer.h.r.a
    public final void a(com.anythink.expressad.exoplayer.h.r rVar) {
        this.D.a(9, rVar).sendToTarget();
    }

    @Override // com.anythink.expressad.exoplayer.h.s.b
    public final void a(com.anythink.expressad.exoplayer.h.s sVar, ae aeVar, Object obj) {
        this.D.a(8, new a(sVar, aeVar, obj)).sendToTarget();
    }

    public final void a(com.anythink.expressad.exoplayer.h.s sVar, boolean z, boolean z3) {
        this.D.a(z ? 1 : 0, z3 ? 1 : 0, sVar).sendToTarget();
    }

    @Override // com.anythink.expressad.exoplayer.h.z.a
    public final /* synthetic */ void a(com.anythink.expressad.exoplayer.h.z zVar) {
        this.D.a(10, (com.anythink.expressad.exoplayer.h.r) zVar).sendToTarget();
    }

    @Override // com.anythink.expressad.exoplayer.e.a
    public final void a(v vVar) {
        this.F.obtainMessage(1, vVar).sendToTarget();
        float f2 = vVar.b;
        for (q qVarE = this.P.e(); qVarE != null; qVarE = qVarE.i) {
            com.anythink.expressad.exoplayer.i.i iVar = qVarE.k;
            if (iVar != null) {
                for (com.anythink.expressad.exoplayer.i.f fVar : iVar.c.a()) {
                    if (fVar != null) {
                        fVar.a(f2);
                    }
                }
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.x.a
    public final synchronized void a(x xVar) {
        if (!this.U) {
            this.D.a(14, xVar).sendToTarget();
        } else {
            Log.w(d, "Ignoring messages sent after release.");
            xVar.a(false);
        }
    }

    public final void a(boolean z) {
        this.D.a(1, z ? 1 : 0).sendToTarget();
    }

    public final Looper b() {
        return this.E.getLooper();
    }

    public final void b(v vVar) {
        this.D.a(4, vVar).sendToTarget();
    }

    public final void b(boolean z) {
        this.D.a(13, z ? 1 : 0).sendToTarget();
    }

    @Override // com.anythink.expressad.exoplayer.i.h.a
    public final void c() {
        this.D.b(11);
    }

    public final void c(boolean z) {
        this.D.a(6, z ? 1 : 0).sendToTarget();
    }

    /* JADX WARN: Code restructure failed: missing block: B:412:0x07f1, code lost:
    
        if (r13 == false) goto L413;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:227:0x04de A[Catch: all -> 0x04f4, TRY_LEAVE, TryCatch #7 {all -> 0x04f4, blocks: (B:196:0x046b, B:198:0x046f, B:203:0x0479, B:204:0x0482, B:206:0x048c, B:210:0x0498, B:212:0x04a2, B:214:0x04b2, B:222:0x04cf, B:226:0x04da, B:227:0x04de), top: B:483:0x046b }] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04f0 A[Catch: RuntimeException -> 0x08a0, IOException -> 0x08a4, g -> 0x08a9, TryCatch #12 {RuntimeException -> 0x08a0, blocks: (B:8:0x0019, B:457:0x089c, B:9:0x002b, B:11:0x0037, B:12:0x003c, B:14:0x0040, B:17:0x0045, B:19:0x0050, B:20:0x005c, B:21:0x0061, B:22:0x006d, B:26:0x0074, B:28:0x007e, B:29:0x0083, B:32:0x0090, B:34:0x0098, B:36:0x00af, B:39:0x00b5, B:43:0x00be, B:45:0x00c3, B:47:0x00e7, B:49:0x00ed, B:50:0x0104, B:51:0x010b, B:53:0x0110, B:57:0x011b, B:59:0x0123, B:60:0x0125, B:62:0x0129, B:64:0x012f, B:65:0x0133, B:67:0x0137, B:68:0x013c, B:69:0x013f, B:73:0x016d, B:75:0x0173, B:76:0x017b, B:70:0x014f, B:72:0x0158, B:77:0x0180, B:79:0x018c, B:80:0x0193, B:81:0x0198, B:83:0x01a4, B:85:0x0201, B:86:0x0212, B:88:0x021c, B:90:0x023b, B:92:0x0249, B:93:0x025c, B:94:0x025f, B:96:0x0268, B:99:0x0270, B:101:0x0274, B:103:0x027d, B:104:0x0282, B:108:0x02a3, B:109:0x02a9, B:110:0x02ad, B:112:0x02b5, B:115:0x02bc, B:119:0x02e7, B:124:0x02f4, B:126:0x0302, B:128:0x0308, B:132:0x0319, B:133:0x0320, B:135:0x0328, B:137:0x0334, B:139:0x033b, B:142:0x0343, B:144:0x036e, B:151:0x0394, B:145:0x0379, B:147:0x037d, B:149:0x0385, B:150:0x038e, B:152:0x0397, B:156:0x039f, B:158:0x03af, B:159:0x03b7, B:161:0x03c1, B:163:0x03cd, B:167:0x03d5, B:168:0x03e3, B:136:0x0332, B:173:0x03f3, B:175:0x03f8, B:179:0x03ff, B:180:0x0405, B:181:0x040d, B:182:0x0418, B:184:0x0428, B:229:0x04e2, B:231:0x04f0, B:219:0x04c9, B:215:0x04b6, B:217:0x04c6, B:233:0x04f5, B:235:0x0506, B:236:0x050c, B:186:0x0437, B:189:0x0457, B:190:0x045f, B:241:0x0517, B:243:0x0521, B:245:0x0525, B:246:0x052a, B:248:0x0539, B:250:0x0545, B:251:0x054b, B:252:0x0583, B:254:0x058b, B:257:0x0592, B:259:0x0598, B:263:0x05a0, B:265:0x05a8, B:266:0x05b5, B:269:0x05bb, B:272:0x05c7, B:273:0x05ca, B:277:0x05d3, B:278:0x0605, B:281:0x060c, B:283:0x0611, B:285:0x0619, B:287:0x061f, B:289:0x0625, B:290:0x0628, B:291:0x062b, B:293:0x062f, B:297:0x0636, B:299:0x063b, B:302:0x0649, B:305:0x0651, B:306:0x0654, B:311:0x0671, B:313:0x0676, B:316:0x0680, B:318:0x0686, B:322:0x069e, B:324:0x06a8, B:327:0x06b0, B:328:0x06be, B:329:0x06c1, B:336:0x06cf, B:338:0x06d9, B:339:0x06e1, B:341:0x070d, B:343:0x0716, B:347:0x071f, B:349:0x0725, B:351:0x072b, B:353:0x0735, B:355:0x0739, B:364:0x074a, B:369:0x0754, B:371:0x075b, B:372:0x075e, B:376:0x076d, B:378:0x0775, B:380:0x077b, B:381:0x077f, B:414:0x07fc, B:416:0x0803, B:418:0x0809, B:419:0x0811, B:421:0x0815, B:425:0x0823, B:432:0x083c, B:423:0x081c, B:426:0x0829, B:430:0x0831, B:431:0x0837, B:382:0x0784, B:384:0x078b, B:386:0x0790, B:402:0x07d2, B:404:0x07da, B:388:0x0797, B:391:0x079d, B:395:0x07ac, B:397:0x07b6, B:405:0x07de, B:407:0x07e5, B:409:0x07ea, B:413:0x07f3, B:433:0x0840, B:437:0x0847, B:439:0x084e, B:440:0x0855, B:442:0x085c, B:446:0x0867, B:448:0x086b, B:452:0x0876, B:456:0x087d), top: B:484:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:328:0x06be A[Catch: RuntimeException -> 0x08a0, IOException -> 0x08a4, g -> 0x08a9, TryCatch #12 {RuntimeException -> 0x08a0, blocks: (B:8:0x0019, B:457:0x089c, B:9:0x002b, B:11:0x0037, B:12:0x003c, B:14:0x0040, B:17:0x0045, B:19:0x0050, B:20:0x005c, B:21:0x0061, B:22:0x006d, B:26:0x0074, B:28:0x007e, B:29:0x0083, B:32:0x0090, B:34:0x0098, B:36:0x00af, B:39:0x00b5, B:43:0x00be, B:45:0x00c3, B:47:0x00e7, B:49:0x00ed, B:50:0x0104, B:51:0x010b, B:53:0x0110, B:57:0x011b, B:59:0x0123, B:60:0x0125, B:62:0x0129, B:64:0x012f, B:65:0x0133, B:67:0x0137, B:68:0x013c, B:69:0x013f, B:73:0x016d, B:75:0x0173, B:76:0x017b, B:70:0x014f, B:72:0x0158, B:77:0x0180, B:79:0x018c, B:80:0x0193, B:81:0x0198, B:83:0x01a4, B:85:0x0201, B:86:0x0212, B:88:0x021c, B:90:0x023b, B:92:0x0249, B:93:0x025c, B:94:0x025f, B:96:0x0268, B:99:0x0270, B:101:0x0274, B:103:0x027d, B:104:0x0282, B:108:0x02a3, B:109:0x02a9, B:110:0x02ad, B:112:0x02b5, B:115:0x02bc, B:119:0x02e7, B:124:0x02f4, B:126:0x0302, B:128:0x0308, B:132:0x0319, B:133:0x0320, B:135:0x0328, B:137:0x0334, B:139:0x033b, B:142:0x0343, B:144:0x036e, B:151:0x0394, B:145:0x0379, B:147:0x037d, B:149:0x0385, B:150:0x038e, B:152:0x0397, B:156:0x039f, B:158:0x03af, B:159:0x03b7, B:161:0x03c1, B:163:0x03cd, B:167:0x03d5, B:168:0x03e3, B:136:0x0332, B:173:0x03f3, B:175:0x03f8, B:179:0x03ff, B:180:0x0405, B:181:0x040d, B:182:0x0418, B:184:0x0428, B:229:0x04e2, B:231:0x04f0, B:219:0x04c9, B:215:0x04b6, B:217:0x04c6, B:233:0x04f5, B:235:0x0506, B:236:0x050c, B:186:0x0437, B:189:0x0457, B:190:0x045f, B:241:0x0517, B:243:0x0521, B:245:0x0525, B:246:0x052a, B:248:0x0539, B:250:0x0545, B:251:0x054b, B:252:0x0583, B:254:0x058b, B:257:0x0592, B:259:0x0598, B:263:0x05a0, B:265:0x05a8, B:266:0x05b5, B:269:0x05bb, B:272:0x05c7, B:273:0x05ca, B:277:0x05d3, B:278:0x0605, B:281:0x060c, B:283:0x0611, B:285:0x0619, B:287:0x061f, B:289:0x0625, B:290:0x0628, B:291:0x062b, B:293:0x062f, B:297:0x0636, B:299:0x063b, B:302:0x0649, B:305:0x0651, B:306:0x0654, B:311:0x0671, B:313:0x0676, B:316:0x0680, B:318:0x0686, B:322:0x069e, B:324:0x06a8, B:327:0x06b0, B:328:0x06be, B:329:0x06c1, B:336:0x06cf, B:338:0x06d9, B:339:0x06e1, B:341:0x070d, B:343:0x0716, B:347:0x071f, B:349:0x0725, B:351:0x072b, B:353:0x0735, B:355:0x0739, B:364:0x074a, B:369:0x0754, B:371:0x075b, B:372:0x075e, B:376:0x076d, B:378:0x0775, B:380:0x077b, B:381:0x077f, B:414:0x07fc, B:416:0x0803, B:418:0x0809, B:419:0x0811, B:421:0x0815, B:425:0x0823, B:432:0x083c, B:423:0x081c, B:426:0x0829, B:430:0x0831, B:431:0x0837, B:382:0x0784, B:384:0x078b, B:386:0x0790, B:402:0x07d2, B:404:0x07da, B:388:0x0797, B:391:0x079d, B:395:0x07ac, B:397:0x07b6, B:405:0x07de, B:407:0x07e5, B:409:0x07ea, B:413:0x07f3, B:433:0x0840, B:437:0x0847, B:439:0x084e, B:440:0x0855, B:442:0x085c, B:446:0x0867, B:448:0x086b, B:452:0x0876, B:456:0x087d), top: B:484:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:400:0x07cf  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x07de A[Catch: RuntimeException -> 0x08a0, IOException -> 0x08a4, g -> 0x08a9, TryCatch #12 {RuntimeException -> 0x08a0, blocks: (B:8:0x0019, B:457:0x089c, B:9:0x002b, B:11:0x0037, B:12:0x003c, B:14:0x0040, B:17:0x0045, B:19:0x0050, B:20:0x005c, B:21:0x0061, B:22:0x006d, B:26:0x0074, B:28:0x007e, B:29:0x0083, B:32:0x0090, B:34:0x0098, B:36:0x00af, B:39:0x00b5, B:43:0x00be, B:45:0x00c3, B:47:0x00e7, B:49:0x00ed, B:50:0x0104, B:51:0x010b, B:53:0x0110, B:57:0x011b, B:59:0x0123, B:60:0x0125, B:62:0x0129, B:64:0x012f, B:65:0x0133, B:67:0x0137, B:68:0x013c, B:69:0x013f, B:73:0x016d, B:75:0x0173, B:76:0x017b, B:70:0x014f, B:72:0x0158, B:77:0x0180, B:79:0x018c, B:80:0x0193, B:81:0x0198, B:83:0x01a4, B:85:0x0201, B:86:0x0212, B:88:0x021c, B:90:0x023b, B:92:0x0249, B:93:0x025c, B:94:0x025f, B:96:0x0268, B:99:0x0270, B:101:0x0274, B:103:0x027d, B:104:0x0282, B:108:0x02a3, B:109:0x02a9, B:110:0x02ad, B:112:0x02b5, B:115:0x02bc, B:119:0x02e7, B:124:0x02f4, B:126:0x0302, B:128:0x0308, B:132:0x0319, B:133:0x0320, B:135:0x0328, B:137:0x0334, B:139:0x033b, B:142:0x0343, B:144:0x036e, B:151:0x0394, B:145:0x0379, B:147:0x037d, B:149:0x0385, B:150:0x038e, B:152:0x0397, B:156:0x039f, B:158:0x03af, B:159:0x03b7, B:161:0x03c1, B:163:0x03cd, B:167:0x03d5, B:168:0x03e3, B:136:0x0332, B:173:0x03f3, B:175:0x03f8, B:179:0x03ff, B:180:0x0405, B:181:0x040d, B:182:0x0418, B:184:0x0428, B:229:0x04e2, B:231:0x04f0, B:219:0x04c9, B:215:0x04b6, B:217:0x04c6, B:233:0x04f5, B:235:0x0506, B:236:0x050c, B:186:0x0437, B:189:0x0457, B:190:0x045f, B:241:0x0517, B:243:0x0521, B:245:0x0525, B:246:0x052a, B:248:0x0539, B:250:0x0545, B:251:0x054b, B:252:0x0583, B:254:0x058b, B:257:0x0592, B:259:0x0598, B:263:0x05a0, B:265:0x05a8, B:266:0x05b5, B:269:0x05bb, B:272:0x05c7, B:273:0x05ca, B:277:0x05d3, B:278:0x0605, B:281:0x060c, B:283:0x0611, B:285:0x0619, B:287:0x061f, B:289:0x0625, B:290:0x0628, B:291:0x062b, B:293:0x062f, B:297:0x0636, B:299:0x063b, B:302:0x0649, B:305:0x0651, B:306:0x0654, B:311:0x0671, B:313:0x0676, B:316:0x0680, B:318:0x0686, B:322:0x069e, B:324:0x06a8, B:327:0x06b0, B:328:0x06be, B:329:0x06c1, B:336:0x06cf, B:338:0x06d9, B:339:0x06e1, B:341:0x070d, B:343:0x0716, B:347:0x071f, B:349:0x0725, B:351:0x072b, B:353:0x0735, B:355:0x0739, B:364:0x074a, B:369:0x0754, B:371:0x075b, B:372:0x075e, B:376:0x076d, B:378:0x0775, B:380:0x077b, B:381:0x077f, B:414:0x07fc, B:416:0x0803, B:418:0x0809, B:419:0x0811, B:421:0x0815, B:425:0x0823, B:432:0x083c, B:423:0x081c, B:426:0x0829, B:430:0x0831, B:431:0x0837, B:382:0x0784, B:384:0x078b, B:386:0x0790, B:402:0x07d2, B:404:0x07da, B:388:0x0797, B:391:0x079d, B:395:0x07ac, B:397:0x07b6, B:405:0x07de, B:407:0x07e5, B:409:0x07ea, B:413:0x07f3, B:433:0x0840, B:437:0x0847, B:439:0x084e, B:440:0x0855, B:442:0x085c, B:446:0x0867, B:448:0x086b, B:452:0x0876, B:456:0x087d), top: B:484:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0803 A[Catch: RuntimeException -> 0x08a0, IOException -> 0x08a4, g -> 0x08a9, TryCatch #12 {RuntimeException -> 0x08a0, blocks: (B:8:0x0019, B:457:0x089c, B:9:0x002b, B:11:0x0037, B:12:0x003c, B:14:0x0040, B:17:0x0045, B:19:0x0050, B:20:0x005c, B:21:0x0061, B:22:0x006d, B:26:0x0074, B:28:0x007e, B:29:0x0083, B:32:0x0090, B:34:0x0098, B:36:0x00af, B:39:0x00b5, B:43:0x00be, B:45:0x00c3, B:47:0x00e7, B:49:0x00ed, B:50:0x0104, B:51:0x010b, B:53:0x0110, B:57:0x011b, B:59:0x0123, B:60:0x0125, B:62:0x0129, B:64:0x012f, B:65:0x0133, B:67:0x0137, B:68:0x013c, B:69:0x013f, B:73:0x016d, B:75:0x0173, B:76:0x017b, B:70:0x014f, B:72:0x0158, B:77:0x0180, B:79:0x018c, B:80:0x0193, B:81:0x0198, B:83:0x01a4, B:85:0x0201, B:86:0x0212, B:88:0x021c, B:90:0x023b, B:92:0x0249, B:93:0x025c, B:94:0x025f, B:96:0x0268, B:99:0x0270, B:101:0x0274, B:103:0x027d, B:104:0x0282, B:108:0x02a3, B:109:0x02a9, B:110:0x02ad, B:112:0x02b5, B:115:0x02bc, B:119:0x02e7, B:124:0x02f4, B:126:0x0302, B:128:0x0308, B:132:0x0319, B:133:0x0320, B:135:0x0328, B:137:0x0334, B:139:0x033b, B:142:0x0343, B:144:0x036e, B:151:0x0394, B:145:0x0379, B:147:0x037d, B:149:0x0385, B:150:0x038e, B:152:0x0397, B:156:0x039f, B:158:0x03af, B:159:0x03b7, B:161:0x03c1, B:163:0x03cd, B:167:0x03d5, B:168:0x03e3, B:136:0x0332, B:173:0x03f3, B:175:0x03f8, B:179:0x03ff, B:180:0x0405, B:181:0x040d, B:182:0x0418, B:184:0x0428, B:229:0x04e2, B:231:0x04f0, B:219:0x04c9, B:215:0x04b6, B:217:0x04c6, B:233:0x04f5, B:235:0x0506, B:236:0x050c, B:186:0x0437, B:189:0x0457, B:190:0x045f, B:241:0x0517, B:243:0x0521, B:245:0x0525, B:246:0x052a, B:248:0x0539, B:250:0x0545, B:251:0x054b, B:252:0x0583, B:254:0x058b, B:257:0x0592, B:259:0x0598, B:263:0x05a0, B:265:0x05a8, B:266:0x05b5, B:269:0x05bb, B:272:0x05c7, B:273:0x05ca, B:277:0x05d3, B:278:0x0605, B:281:0x060c, B:283:0x0611, B:285:0x0619, B:287:0x061f, B:289:0x0625, B:290:0x0628, B:291:0x062b, B:293:0x062f, B:297:0x0636, B:299:0x063b, B:302:0x0649, B:305:0x0651, B:306:0x0654, B:311:0x0671, B:313:0x0676, B:316:0x0680, B:318:0x0686, B:322:0x069e, B:324:0x06a8, B:327:0x06b0, B:328:0x06be, B:329:0x06c1, B:336:0x06cf, B:338:0x06d9, B:339:0x06e1, B:341:0x070d, B:343:0x0716, B:347:0x071f, B:349:0x0725, B:351:0x072b, B:353:0x0735, B:355:0x0739, B:364:0x074a, B:369:0x0754, B:371:0x075b, B:372:0x075e, B:376:0x076d, B:378:0x0775, B:380:0x077b, B:381:0x077f, B:414:0x07fc, B:416:0x0803, B:418:0x0809, B:419:0x0811, B:421:0x0815, B:425:0x0823, B:432:0x083c, B:423:0x081c, B:426:0x0829, B:430:0x0831, B:431:0x0837, B:382:0x0784, B:384:0x078b, B:386:0x0790, B:402:0x07d2, B:404:0x07da, B:388:0x0797, B:391:0x079d, B:395:0x07ac, B:397:0x07b6, B:405:0x07de, B:407:0x07e5, B:409:0x07ea, B:413:0x07f3, B:433:0x0840, B:437:0x0847, B:439:0x084e, B:440:0x0855, B:442:0x085c, B:446:0x0867, B:448:0x086b, B:452:0x0876, B:456:0x087d), top: B:484:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0815 A[Catch: RuntimeException -> 0x08a0, IOException -> 0x08a4, g -> 0x08a9, TryCatch #12 {RuntimeException -> 0x08a0, blocks: (B:8:0x0019, B:457:0x089c, B:9:0x002b, B:11:0x0037, B:12:0x003c, B:14:0x0040, B:17:0x0045, B:19:0x0050, B:20:0x005c, B:21:0x0061, B:22:0x006d, B:26:0x0074, B:28:0x007e, B:29:0x0083, B:32:0x0090, B:34:0x0098, B:36:0x00af, B:39:0x00b5, B:43:0x00be, B:45:0x00c3, B:47:0x00e7, B:49:0x00ed, B:50:0x0104, B:51:0x010b, B:53:0x0110, B:57:0x011b, B:59:0x0123, B:60:0x0125, B:62:0x0129, B:64:0x012f, B:65:0x0133, B:67:0x0137, B:68:0x013c, B:69:0x013f, B:73:0x016d, B:75:0x0173, B:76:0x017b, B:70:0x014f, B:72:0x0158, B:77:0x0180, B:79:0x018c, B:80:0x0193, B:81:0x0198, B:83:0x01a4, B:85:0x0201, B:86:0x0212, B:88:0x021c, B:90:0x023b, B:92:0x0249, B:93:0x025c, B:94:0x025f, B:96:0x0268, B:99:0x0270, B:101:0x0274, B:103:0x027d, B:104:0x0282, B:108:0x02a3, B:109:0x02a9, B:110:0x02ad, B:112:0x02b5, B:115:0x02bc, B:119:0x02e7, B:124:0x02f4, B:126:0x0302, B:128:0x0308, B:132:0x0319, B:133:0x0320, B:135:0x0328, B:137:0x0334, B:139:0x033b, B:142:0x0343, B:144:0x036e, B:151:0x0394, B:145:0x0379, B:147:0x037d, B:149:0x0385, B:150:0x038e, B:152:0x0397, B:156:0x039f, B:158:0x03af, B:159:0x03b7, B:161:0x03c1, B:163:0x03cd, B:167:0x03d5, B:168:0x03e3, B:136:0x0332, B:173:0x03f3, B:175:0x03f8, B:179:0x03ff, B:180:0x0405, B:181:0x040d, B:182:0x0418, B:184:0x0428, B:229:0x04e2, B:231:0x04f0, B:219:0x04c9, B:215:0x04b6, B:217:0x04c6, B:233:0x04f5, B:235:0x0506, B:236:0x050c, B:186:0x0437, B:189:0x0457, B:190:0x045f, B:241:0x0517, B:243:0x0521, B:245:0x0525, B:246:0x052a, B:248:0x0539, B:250:0x0545, B:251:0x054b, B:252:0x0583, B:254:0x058b, B:257:0x0592, B:259:0x0598, B:263:0x05a0, B:265:0x05a8, B:266:0x05b5, B:269:0x05bb, B:272:0x05c7, B:273:0x05ca, B:277:0x05d3, B:278:0x0605, B:281:0x060c, B:283:0x0611, B:285:0x0619, B:287:0x061f, B:289:0x0625, B:290:0x0628, B:291:0x062b, B:293:0x062f, B:297:0x0636, B:299:0x063b, B:302:0x0649, B:305:0x0651, B:306:0x0654, B:311:0x0671, B:313:0x0676, B:316:0x0680, B:318:0x0686, B:322:0x069e, B:324:0x06a8, B:327:0x06b0, B:328:0x06be, B:329:0x06c1, B:336:0x06cf, B:338:0x06d9, B:339:0x06e1, B:341:0x070d, B:343:0x0716, B:347:0x071f, B:349:0x0725, B:351:0x072b, B:353:0x0735, B:355:0x0739, B:364:0x074a, B:369:0x0754, B:371:0x075b, B:372:0x075e, B:376:0x076d, B:378:0x0775, B:380:0x077b, B:381:0x077f, B:414:0x07fc, B:416:0x0803, B:418:0x0809, B:419:0x0811, B:421:0x0815, B:425:0x0823, B:432:0x083c, B:423:0x081c, B:426:0x0829, B:430:0x0831, B:431:0x0837, B:382:0x0784, B:384:0x078b, B:386:0x0790, B:402:0x07d2, B:404:0x07da, B:388:0x0797, B:391:0x079d, B:395:0x07ac, B:397:0x07b6, B:405:0x07de, B:407:0x07e5, B:409:0x07ea, B:413:0x07f3, B:433:0x0840, B:437:0x0847, B:439:0x084e, B:440:0x0855, B:442:0x085c, B:446:0x0867, B:448:0x086b, B:452:0x0876, B:456:0x087d), top: B:484:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x081c A[Catch: RuntimeException -> 0x08a0, IOException -> 0x08a4, g -> 0x08a9, TryCatch #12 {RuntimeException -> 0x08a0, blocks: (B:8:0x0019, B:457:0x089c, B:9:0x002b, B:11:0x0037, B:12:0x003c, B:14:0x0040, B:17:0x0045, B:19:0x0050, B:20:0x005c, B:21:0x0061, B:22:0x006d, B:26:0x0074, B:28:0x007e, B:29:0x0083, B:32:0x0090, B:34:0x0098, B:36:0x00af, B:39:0x00b5, B:43:0x00be, B:45:0x00c3, B:47:0x00e7, B:49:0x00ed, B:50:0x0104, B:51:0x010b, B:53:0x0110, B:57:0x011b, B:59:0x0123, B:60:0x0125, B:62:0x0129, B:64:0x012f, B:65:0x0133, B:67:0x0137, B:68:0x013c, B:69:0x013f, B:73:0x016d, B:75:0x0173, B:76:0x017b, B:70:0x014f, B:72:0x0158, B:77:0x0180, B:79:0x018c, B:80:0x0193, B:81:0x0198, B:83:0x01a4, B:85:0x0201, B:86:0x0212, B:88:0x021c, B:90:0x023b, B:92:0x0249, B:93:0x025c, B:94:0x025f, B:96:0x0268, B:99:0x0270, B:101:0x0274, B:103:0x027d, B:104:0x0282, B:108:0x02a3, B:109:0x02a9, B:110:0x02ad, B:112:0x02b5, B:115:0x02bc, B:119:0x02e7, B:124:0x02f4, B:126:0x0302, B:128:0x0308, B:132:0x0319, B:133:0x0320, B:135:0x0328, B:137:0x0334, B:139:0x033b, B:142:0x0343, B:144:0x036e, B:151:0x0394, B:145:0x0379, B:147:0x037d, B:149:0x0385, B:150:0x038e, B:152:0x0397, B:156:0x039f, B:158:0x03af, B:159:0x03b7, B:161:0x03c1, B:163:0x03cd, B:167:0x03d5, B:168:0x03e3, B:136:0x0332, B:173:0x03f3, B:175:0x03f8, B:179:0x03ff, B:180:0x0405, B:181:0x040d, B:182:0x0418, B:184:0x0428, B:229:0x04e2, B:231:0x04f0, B:219:0x04c9, B:215:0x04b6, B:217:0x04c6, B:233:0x04f5, B:235:0x0506, B:236:0x050c, B:186:0x0437, B:189:0x0457, B:190:0x045f, B:241:0x0517, B:243:0x0521, B:245:0x0525, B:246:0x052a, B:248:0x0539, B:250:0x0545, B:251:0x054b, B:252:0x0583, B:254:0x058b, B:257:0x0592, B:259:0x0598, B:263:0x05a0, B:265:0x05a8, B:266:0x05b5, B:269:0x05bb, B:272:0x05c7, B:273:0x05ca, B:277:0x05d3, B:278:0x0605, B:281:0x060c, B:283:0x0611, B:285:0x0619, B:287:0x061f, B:289:0x0625, B:290:0x0628, B:291:0x062b, B:293:0x062f, B:297:0x0636, B:299:0x063b, B:302:0x0649, B:305:0x0651, B:306:0x0654, B:311:0x0671, B:313:0x0676, B:316:0x0680, B:318:0x0686, B:322:0x069e, B:324:0x06a8, B:327:0x06b0, B:328:0x06be, B:329:0x06c1, B:336:0x06cf, B:338:0x06d9, B:339:0x06e1, B:341:0x070d, B:343:0x0716, B:347:0x071f, B:349:0x0725, B:351:0x072b, B:353:0x0735, B:355:0x0739, B:364:0x074a, B:369:0x0754, B:371:0x075b, B:372:0x075e, B:376:0x076d, B:378:0x0775, B:380:0x077b, B:381:0x077f, B:414:0x07fc, B:416:0x0803, B:418:0x0809, B:419:0x0811, B:421:0x0815, B:425:0x0823, B:432:0x083c, B:423:0x081c, B:426:0x0829, B:430:0x0831, B:431:0x0837, B:382:0x0784, B:384:0x078b, B:386:0x0790, B:402:0x07d2, B:404:0x07da, B:388:0x0797, B:391:0x079d, B:395:0x07ac, B:397:0x07b6, B:405:0x07de, B:407:0x07e5, B:409:0x07ea, B:413:0x07f3, B:433:0x0840, B:437:0x0847, B:439:0x084e, B:440:0x0855, B:442:0x085c, B:446:0x0867, B:448:0x086b, B:452:0x0876, B:456:0x087d), top: B:484:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:428:0x082e  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0837 A[Catch: RuntimeException -> 0x08a0, IOException -> 0x08a4, g -> 0x08a9, TryCatch #12 {RuntimeException -> 0x08a0, blocks: (B:8:0x0019, B:457:0x089c, B:9:0x002b, B:11:0x0037, B:12:0x003c, B:14:0x0040, B:17:0x0045, B:19:0x0050, B:20:0x005c, B:21:0x0061, B:22:0x006d, B:26:0x0074, B:28:0x007e, B:29:0x0083, B:32:0x0090, B:34:0x0098, B:36:0x00af, B:39:0x00b5, B:43:0x00be, B:45:0x00c3, B:47:0x00e7, B:49:0x00ed, B:50:0x0104, B:51:0x010b, B:53:0x0110, B:57:0x011b, B:59:0x0123, B:60:0x0125, B:62:0x0129, B:64:0x012f, B:65:0x0133, B:67:0x0137, B:68:0x013c, B:69:0x013f, B:73:0x016d, B:75:0x0173, B:76:0x017b, B:70:0x014f, B:72:0x0158, B:77:0x0180, B:79:0x018c, B:80:0x0193, B:81:0x0198, B:83:0x01a4, B:85:0x0201, B:86:0x0212, B:88:0x021c, B:90:0x023b, B:92:0x0249, B:93:0x025c, B:94:0x025f, B:96:0x0268, B:99:0x0270, B:101:0x0274, B:103:0x027d, B:104:0x0282, B:108:0x02a3, B:109:0x02a9, B:110:0x02ad, B:112:0x02b5, B:115:0x02bc, B:119:0x02e7, B:124:0x02f4, B:126:0x0302, B:128:0x0308, B:132:0x0319, B:133:0x0320, B:135:0x0328, B:137:0x0334, B:139:0x033b, B:142:0x0343, B:144:0x036e, B:151:0x0394, B:145:0x0379, B:147:0x037d, B:149:0x0385, B:150:0x038e, B:152:0x0397, B:156:0x039f, B:158:0x03af, B:159:0x03b7, B:161:0x03c1, B:163:0x03cd, B:167:0x03d5, B:168:0x03e3, B:136:0x0332, B:173:0x03f3, B:175:0x03f8, B:179:0x03ff, B:180:0x0405, B:181:0x040d, B:182:0x0418, B:184:0x0428, B:229:0x04e2, B:231:0x04f0, B:219:0x04c9, B:215:0x04b6, B:217:0x04c6, B:233:0x04f5, B:235:0x0506, B:236:0x050c, B:186:0x0437, B:189:0x0457, B:190:0x045f, B:241:0x0517, B:243:0x0521, B:245:0x0525, B:246:0x052a, B:248:0x0539, B:250:0x0545, B:251:0x054b, B:252:0x0583, B:254:0x058b, B:257:0x0592, B:259:0x0598, B:263:0x05a0, B:265:0x05a8, B:266:0x05b5, B:269:0x05bb, B:272:0x05c7, B:273:0x05ca, B:277:0x05d3, B:278:0x0605, B:281:0x060c, B:283:0x0611, B:285:0x0619, B:287:0x061f, B:289:0x0625, B:290:0x0628, B:291:0x062b, B:293:0x062f, B:297:0x0636, B:299:0x063b, B:302:0x0649, B:305:0x0651, B:306:0x0654, B:311:0x0671, B:313:0x0676, B:316:0x0680, B:318:0x0686, B:322:0x069e, B:324:0x06a8, B:327:0x06b0, B:328:0x06be, B:329:0x06c1, B:336:0x06cf, B:338:0x06d9, B:339:0x06e1, B:341:0x070d, B:343:0x0716, B:347:0x071f, B:349:0x0725, B:351:0x072b, B:353:0x0735, B:355:0x0739, B:364:0x074a, B:369:0x0754, B:371:0x075b, B:372:0x075e, B:376:0x076d, B:378:0x0775, B:380:0x077b, B:381:0x077f, B:414:0x07fc, B:416:0x0803, B:418:0x0809, B:419:0x0811, B:421:0x0815, B:425:0x0823, B:432:0x083c, B:423:0x081c, B:426:0x0829, B:430:0x0831, B:431:0x0837, B:382:0x0784, B:384:0x078b, B:386:0x0790, B:402:0x07d2, B:404:0x07da, B:388:0x0797, B:391:0x079d, B:395:0x07ac, B:397:0x07b6, B:405:0x07de, B:407:0x07e5, B:409:0x07ea, B:413:0x07f3, B:433:0x0840, B:437:0x0847, B:439:0x084e, B:440:0x0855, B:442:0x085c, B:446:0x0867, B:448:0x086b, B:452:0x0876, B:456:0x087d), top: B:484:0x0014 }] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v154, types: [int] */
    /* JADX WARN: Type inference failed for: r2v155 */
    /* JADX WARN: Type inference failed for: r2v156 */
    /* JADX WARN: Type inference failed for: r2v164 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v178 */
    /* JADX WARN: Type inference failed for: r2v179 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v247 */
    /* JADX WARN: Type inference failed for: r2v248 */
    /* JADX WARN: Type inference failed for: r2v249 */
    /* JADX WARN: Type inference failed for: r2v250 */
    /* JADX WARN: Type inference failed for: r2v251 */
    /* JADX WARN: Type inference failed for: r2v252 */
    /* JADX WARN: Type inference failed for: r2v258 */
    /* JADX WARN: Type inference failed for: r2v259 */
    /* JADX WARN: Type inference failed for: r2v260 */
    /* JADX WARN: Type inference failed for: r2v261 */
    /* JADX WARN: Type inference failed for: r2v262 */
    /* JADX WARN: Type inference failed for: r2v263 */
    /* JADX WARN: Type inference failed for: r2v265 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r31v0, types: [com.anythink.expressad.exoplayer.h.r$a, com.anythink.expressad.exoplayer.h.s$b, com.anythink.expressad.exoplayer.k] */
    /* JADX WARN: Type inference failed for: r5v51, types: [com.anythink.expressad.exoplayer.k$c] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean handleMessage(Message message) {
        Message message2;
        ?? r2;
        ?? r22;
        RuntimeException runtimeException;
        ?? r23;
        Handler handler;
        g gVarA;
        Message messageObtainMessage;
        IOException iOException;
        ?? r24;
        g gVar;
        ?? r25;
        boolean z;
        boolean z3;
        com.anythink.expressad.exoplayer.k.k kVar;
        boolean zM;
        int i2;
        boolean z4;
        int i3;
        s.a aVarA;
        boolean z5;
        long j2;
        long j3;
        int i4;
        c cVar;
        long j4;
        long jA;
        u uVarA;
        ?? r26;
        Message message3 = message;
        int i5 = 2;
        try {
            long j5 = 0;
            try {
                try {
                    try {
                        try {
                            switch (message3.what) {
                                case 0:
                                    com.anythink.expressad.exoplayer.h.s sVar = (com.anythink.expressad.exoplayer.h.s) message3.obj;
                                    boolean z6 = message3.arg1 != 0;
                                    boolean z7 = message3.arg2 != 0;
                                    this.Z++;
                                    a(true, z6, z7);
                                    this.C.a();
                                    this.S = sVar;
                                    b(2);
                                    sVar.a(this.G, true, this);
                                    this.D.b(2);
                                    d();
                                    return true;
                                case 1:
                                    boolean z8 = message3.arg1 != 0;
                                    this.W = false;
                                    this.V = z8;
                                    if (z8) {
                                        int i6 = this.R.f;
                                        if (i6 == 3) {
                                            e();
                                            kVar = this.D;
                                            i5 = 2;
                                        } else {
                                            i5 = 2;
                                            if (i6 == 2) {
                                                kVar = this.D;
                                            }
                                        }
                                        kVar.b(i5);
                                    } else {
                                        f();
                                        g();
                                    }
                                    d();
                                    return true;
                                case 2:
                                    long jB = this.O.b();
                                    com.anythink.expressad.exoplayer.h.s sVar2 = this.S;
                                    if (sVar2 != null) {
                                        if (this.Z > 0) {
                                            sVar2.b();
                                        } else {
                                            this.P.a(this.ab);
                                            if (this.P.a()) {
                                                r rVarA = this.P.a(this.ab, this.R);
                                                if (rVarA == null) {
                                                    this.S.b();
                                                } else {
                                                    this.P.a(this.z, this.A, this.C.d(), this.S, this.R.a.a(rVarA.a.a, this.I, true).b, rVarA).a((r.a) this, rVarA.b);
                                                    d(true);
                                                }
                                            }
                                            q qVarB = this.P.b();
                                            if (qVarB == null || qVarB.a()) {
                                                z = false;
                                                z3 = false;
                                                try {
                                                    d(false);
                                                } catch (g e2) {
                                                    gVar = e2;
                                                    i5 = 2;
                                                    r25 = z3;
                                                    Log.e(d, "Playback error.", gVar);
                                                    a(r25, r25);
                                                    messageObtainMessage = this.F.obtainMessage(i5, gVar);
                                                    messageObtainMessage.sendToTarget();
                                                    d();
                                                    return true;
                                                } catch (IOException e3) {
                                                    iOException = e3;
                                                    i5 = 2;
                                                    r24 = z;
                                                    Log.e(d, "Source error.", iOException);
                                                    a(r24, r24);
                                                    handler = this.F;
                                                    gVarA = g.a(iOException);
                                                    messageObtainMessage = handler.obtainMessage(i5, gVarA);
                                                    messageObtainMessage.sendToTarget();
                                                    d();
                                                    return true;
                                                }
                                            } else if (!this.R.g) {
                                                r();
                                            }
                                            if (this.P.f()) {
                                                q qVarC = this.P.c();
                                                q qVarD = this.P.d();
                                                boolean z9 = false;
                                                while (this.V && qVarC != qVarD && this.ab >= qVarC.i.e) {
                                                    if (z9) {
                                                        d();
                                                    }
                                                    int i7 = qVarC.h.f ? 0 : 3;
                                                    q qVarH = this.P.h();
                                                    a(qVarC);
                                                    u uVar = this.R;
                                                    r rVar = qVarH.h;
                                                    this.R = uVar.a(rVar.a, rVar.b, rVar.d);
                                                    this.M.b(i7);
                                                    g();
                                                    qVarC = qVarH;
                                                    z9 = true;
                                                }
                                                if (qVarD.h.g) {
                                                    int i8 = 0;
                                                    while (true) {
                                                        y[] yVarArr = this.y;
                                                        if (i8 < yVarArr.length) {
                                                            y yVar = yVarArr[i8];
                                                            com.anythink.expressad.exoplayer.h.y yVar2 = qVarD.c[i8];
                                                            if (yVar2 != null && yVar.f() == yVar2 && yVar.g()) {
                                                                yVar.h();
                                                            }
                                                            i8++;
                                                        }
                                                    }
                                                } else {
                                                    q qVar = qVarD.i;
                                                    if (qVar != null && qVar.f) {
                                                        while (true) {
                                                            y[] yVarArr2 = this.y;
                                                            if (i3 < yVarArr2.length) {
                                                                y yVar3 = yVarArr2[i3];
                                                                com.anythink.expressad.exoplayer.h.y yVar4 = qVarD.c[i3];
                                                                i3 = (yVar3.f() == yVar4 && (yVar4 == null || yVar3.g())) ? i3 + 1 : 0;
                                                            } else {
                                                                com.anythink.expressad.exoplayer.i.i iVar = qVarD.k;
                                                                q qVarG = this.P.g();
                                                                com.anythink.expressad.exoplayer.i.i iVar2 = qVarG.k;
                                                                boolean z10 = qVarG.a.c() != com.anythink.expressad.exoplayer.b.b;
                                                                int i9 = 0;
                                                                while (true) {
                                                                    y[] yVarArr3 = this.y;
                                                                    if (i9 < yVarArr3.length) {
                                                                        y yVar5 = yVarArr3[i9];
                                                                        if (iVar.a(i9)) {
                                                                            if (z10) {
                                                                                yVar5.h();
                                                                            } else if (!yVar5.i()) {
                                                                                com.anythink.expressad.exoplayer.i.f fVarA = iVar2.c.a(i9);
                                                                                boolean zA = iVar2.a(i9);
                                                                                boolean z11 = this.z[i9].a() == 5;
                                                                                aa aaVar = iVar.b[i9];
                                                                                aa aaVar2 = iVar2.b[i9];
                                                                                if (zA && aaVar2.equals(aaVar) && !z11) {
                                                                                    yVar5.a(a(fVarA), qVarG.c[i9], qVarG.e);
                                                                                }
                                                                            }
                                                                        }
                                                                        i9++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        break;
                                    }
                                    if (this.P.f()) {
                                        q qVarC2 = this.P.c();
                                        com.anythink.expressad.exoplayer.k.ad.a("doSomeWork");
                                        g();
                                        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
                                        qVarC2.a.a(this.R.j - this.J, this.K);
                                        boolean z12 = true;
                                        boolean z13 = true;
                                        for (y yVar6 : this.T) {
                                            yVar6.a(this.ab, jElapsedRealtime);
                                            z13 = z13 && yVar6.v();
                                            if (!yVar6.u() && !yVar6.v()) {
                                                q qVar2 = this.P.d().i;
                                                z4 = qVar2 != null && qVar2.f && yVar6.g();
                                            }
                                            if (!z4) {
                                                yVar6.j();
                                            }
                                            z12 = z12 && z4;
                                        }
                                        if (!z12) {
                                            n();
                                        }
                                        long j6 = qVarC2.h.e;
                                        if (!z13 || ((j6 != com.anythink.expressad.exoplayer.b.b && j6 > this.R.j) || !qVarC2.h.g)) {
                                            u uVar2 = this.R;
                                            if (uVar2.f != 2) {
                                                if (this.R.f == 3) {
                                                    if (this.T.length == 0) {
                                                        if (m()) {
                                                        }
                                                        this.W = this.V;
                                                        b(2);
                                                    }
                                                }
                                                if (this.R.f == 2) {
                                                    for (y yVar7 : this.T) {
                                                        yVar7.j();
                                                    }
                                                }
                                                if ((this.V && this.R.f == 3) || (i2 = this.R.f) == 2) {
                                                    a(jB, 10L);
                                                } else if (this.T.length == 0 || i2 == 4) {
                                                    this.D.b();
                                                } else {
                                                    a(jB, 1000L);
                                                }
                                                com.anythink.expressad.exoplayer.k.ad.a();
                                            } else {
                                                if (this.T.length == 0) {
                                                    zM = m();
                                                } else if (z12) {
                                                    if (uVar2.g) {
                                                        q qVarB2 = this.P.b();
                                                        long jA2 = qVarB2.a(!qVarB2.h.g);
                                                        if (jA2 == Long.MIN_VALUE || this.C.a(jA2 - (this.ab - qVarB2.e), this.L.e().b, this.W)) {
                                                        }
                                                    }
                                                    zM = true;
                                                } else {
                                                    zM = false;
                                                }
                                                if (zM) {
                                                    b(3);
                                                    if (this.V) {
                                                        e();
                                                    }
                                                }
                                                if (this.R.f == 2) {
                                                }
                                                if (this.V) {
                                                    if (this.T.length == 0) {
                                                        this.D.b();
                                                        com.anythink.expressad.exoplayer.k.ad.a();
                                                    }
                                                } else if (this.T.length == 0) {
                                                }
                                            }
                                        } else {
                                            b(4);
                                        }
                                        f();
                                        if (this.R.f == 2) {
                                        }
                                        if (this.V) {
                                        }
                                    } else {
                                        n();
                                        a(jB, 10L);
                                    }
                                    d();
                                    return true;
                                case 3:
                                    d dVar = (d) message3.obj;
                                    this.M.a(1);
                                    Pair<Integer, Long> pairA = a(dVar, true);
                                    try {
                                        if (pairA == null) {
                                            aVarA = new s.a(j());
                                            j3 = -9223372036854775807L;
                                            j2 = -9223372036854775807L;
                                        } else {
                                            int iIntValue = ((Integer) pairA.first).intValue();
                                            long jLongValue = ((Long) pairA.second).longValue();
                                            aVarA = this.P.a(iIntValue, jLongValue);
                                            if (!aVarA.a()) {
                                                long jLongValue2 = ((Long) pairA.second).longValue();
                                                z5 = dVar.c == com.anythink.expressad.exoplayer.b.b;
                                                j2 = jLongValue;
                                                j3 = jLongValue2;
                                                if (this.S != null || this.Z > 0) {
                                                    this.aa = dVar;
                                                } else {
                                                    if (j3 != com.anythink.expressad.exoplayer.b.b) {
                                                        if (aVarA.equals(this.R.c)) {
                                                            q qVarC3 = this.P.c();
                                                            jA = (qVarC3 == null || j3 == 0) ? j3 : qVarC3.a.a(j3, this.Q);
                                                            if (com.anythink.expressad.exoplayer.b.a(jA) == com.anythink.expressad.exoplayer.b.a(this.R.j)) {
                                                                this.R = this.R.a(aVarA, this.R.j, j2);
                                                                if (z5) {
                                                                    cVar = this.M;
                                                                    i4 = 2;
                                                                    cVar.b(i4);
                                                                }
                                                                d();
                                                                return true;
                                                            }
                                                        } else {
                                                            jA = j3;
                                                        }
                                                        long jA3 = a(aVarA, jA);
                                                        z5 |= j3 != jA3;
                                                        j4 = jA3;
                                                        this.R = this.R.a(aVarA, j4, j2);
                                                        if (z5) {
                                                            cVar = this.M;
                                                            i4 = 2;
                                                            cVar.b(i4);
                                                        }
                                                        d();
                                                        return true;
                                                    }
                                                    b(4);
                                                    a(false, true, false);
                                                }
                                                j4 = j3;
                                                this.R = this.R.a(aVarA, j4, j2);
                                                if (z5) {
                                                }
                                                d();
                                                return true;
                                            }
                                            j2 = jLongValue;
                                            j3 = 0;
                                        }
                                        if (this.S != null) {
                                            this.aa = dVar;
                                            j4 = j3;
                                            this.R = this.R.a(aVarA, j4, j2);
                                            if (z5) {
                                            }
                                        }
                                        d();
                                        return true;
                                    } finally {
                                    }
                                    z5 = true;
                                    break;
                                case 4:
                                    this.L.a((v) message3.obj);
                                    d();
                                    return true;
                                case 5:
                                    this.Q = (ac) message3.obj;
                                    d();
                                    return true;
                                case 6:
                                    a(message3.arg1 != 0, true);
                                    d();
                                    return true;
                                case 7:
                                    i();
                                    return true;
                                case 8:
                                    a aVar = (a) message3.obj;
                                    if (aVar.a == this.S) {
                                        ae aeVar = this.R.a;
                                        ae aeVar2 = aVar.b;
                                        Object obj = aVar.c;
                                        this.P.a(aeVar2);
                                        this.R = this.R.a(aeVar2, obj);
                                        for (int size = this.N.size() - 1; size >= 0; size--) {
                                            if (!a(this.N.get(size))) {
                                                this.N.get(size).a.a(false);
                                                this.N.remove(size);
                                            }
                                        }
                                        Collections.sort(this.N);
                                        ?? r27 = this.Z;
                                        try {
                                            if (r27 > 0) {
                                                this.M.a(r27);
                                                this.Z = 0;
                                                d dVar2 = this.aa;
                                                if (dVar2 != null) {
                                                    Pair<Integer, Long> pairA2 = a(dVar2, true);
                                                    this.aa = null;
                                                    r26 = pairA2;
                                                    if (pairA2 != null) {
                                                        int iIntValue2 = ((Integer) pairA2.first).intValue();
                                                        long jLongValue3 = ((Long) pairA2.second).longValue();
                                                        s.a aVarA2 = this.P.a(iIntValue2, jLongValue3);
                                                        uVarA = this.R.a(aVarA2, aVarA2.a() ? 0L : jLongValue3, jLongValue3);
                                                        this.R = uVarA;
                                                        r27 = uVarA;
                                                    }
                                                    o();
                                                    r27 = r26;
                                                } else {
                                                    int i10 = (this.R.d > com.anythink.expressad.exoplayer.b.b ? 1 : (this.R.d == com.anythink.expressad.exoplayer.b.b ? 0 : -1));
                                                    r27 = i10;
                                                    if (i10 == 0) {
                                                        boolean zA2 = aeVar2.a();
                                                        if (zA2) {
                                                            r26 = zA2;
                                                            o();
                                                            r27 = r26;
                                                        } else {
                                                            Pair<Integer, Long> pairA3 = a(aeVar2, aeVar2.b(this.Y));
                                                            int iIntValue3 = ((Integer) pairA3.first).intValue();
                                                            long jLongValue4 = ((Long) pairA3.second).longValue();
                                                            s.a aVarA3 = this.P.a(iIntValue3, jLongValue4);
                                                            uVarA = this.R.a(aVarA3, aVarA3.a() ? 0L : jLongValue4, jLongValue4);
                                                            this.R = uVarA;
                                                            r27 = uVarA;
                                                        }
                                                    }
                                                }
                                            } else {
                                                u uVar3 = this.R;
                                                int i11 = uVar3.c.a;
                                                long j7 = uVar3.e;
                                                if (!aeVar.a()) {
                                                    q qVarE = this.P.e();
                                                    int iA = aeVar2.a(qVarE == null ? aeVar.a(i11, this.I, true).b : qVarE.b);
                                                    if (iA == -1) {
                                                        int iA2 = a(i11, aeVar, aeVar2);
                                                        if (iA2 == -1) {
                                                            r26 = qVarE;
                                                            o();
                                                            r27 = r26;
                                                        } else {
                                                            Pair<Integer, Long> pairA4 = a(aeVar2, aeVar2.a(iA2, this.I, false).c);
                                                            int iIntValue4 = ((Integer) pairA4.first).intValue();
                                                            long jLongValue5 = ((Long) pairA4.second).longValue();
                                                            s.a aVarA4 = this.P.a(iIntValue4, jLongValue5);
                                                            aeVar2.a(iIntValue4, this.I, true);
                                                            if (qVarE != null) {
                                                                Object obj2 = this.I.b;
                                                                r rVarA2 = qVarE.h.a();
                                                                while (true) {
                                                                    qVarE.h = rVarA2;
                                                                    qVarE = qVarE.i;
                                                                    if (qVarE != null) {
                                                                        rVarA2 = qVarE.b.equals(obj2) ? this.P.a(qVarE.h, iIntValue4) : qVarE.h.a();
                                                                    }
                                                                }
                                                            }
                                                            if (!aVarA4.a()) {
                                                                j5 = jLongValue5;
                                                            }
                                                            uVarA = this.R.a(aVarA4, a(aVarA4, j5), jLongValue5);
                                                        }
                                                    } else {
                                                        if (iA != i11) {
                                                            this.R = this.R.a(iA);
                                                        }
                                                        s.a aVar2 = this.R.c;
                                                        if (aVar2.a()) {
                                                            s.a aVarA5 = this.P.a(iA, j7);
                                                            if (!aVarA5.equals(aVar2)) {
                                                                if (!aVarA5.a()) {
                                                                    j5 = j7;
                                                                }
                                                                uVarA = this.R.a(aVarA5, a(aVarA5, j5), j7);
                                                            }
                                                        }
                                                        if (!this.P.a(aVar2, this.ab)) {
                                                            r27 = 0;
                                                            g(false);
                                                        }
                                                    }
                                                    this.R = uVarA;
                                                    r27 = uVarA;
                                                } else if (!aeVar2.a()) {
                                                    s.a aVarA6 = this.P.a(i11, j7);
                                                    uVarA = this.R.a(aVarA6, aVarA6.a() ? 0L : j7, j7);
                                                    this.R = uVarA;
                                                    r27 = uVarA;
                                                }
                                            }
                                        } catch (g e4) {
                                            e = e4;
                                            r22 = r27;
                                            gVar = e;
                                            r25 = r22;
                                            Log.e(d, "Playback error.", gVar);
                                            a(r25, r25);
                                            messageObtainMessage = this.F.obtainMessage(i5, gVar);
                                            messageObtainMessage.sendToTarget();
                                            d();
                                            return true;
                                        } catch (IOException e5) {
                                            e = e5;
                                            r2 = r27;
                                            iOException = e;
                                            r24 = r2;
                                            Log.e(d, "Source error.", iOException);
                                            a(r24, r24);
                                            handler = this.F;
                                            gVarA = g.a(iOException);
                                            messageObtainMessage = handler.obtainMessage(i5, gVarA);
                                            messageObtainMessage.sendToTarget();
                                            d();
                                            return true;
                                        }
                                        break;
                                    }
                                    d();
                                    return true;
                                case 9:
                                    if (this.P.a((com.anythink.expressad.exoplayer.h.r) message3.obj)) {
                                        q qVarB3 = this.P.b();
                                        float f2 = this.L.e().b;
                                        qVarB3.f = true;
                                        qVarB3.j = qVarB3.a.b();
                                        qVarB3.a(f2);
                                        long jB2 = qVarB3.b(qVarB3.h.b);
                                        long j8 = qVarB3.e;
                                        r rVar2 = qVarB3.h;
                                        qVarB3.e = j8 + (rVar2.b - jB2);
                                        qVarB3.h = new r(rVar2.a, jB2, rVar2.c, rVar2.d, rVar2.e, rVar2.f, rVar2.g);
                                        a(qVarB3.k);
                                        if (!this.P.f()) {
                                            a(this.P.h().h.b);
                                            a(null);
                                        }
                                        r();
                                    }
                                    d();
                                    return true;
                                case 10:
                                    if (this.P.a((com.anythink.expressad.exoplayer.h.r) message3.obj)) {
                                        this.P.a(this.ab);
                                        r();
                                    }
                                    d();
                                    return true;
                                case 11:
                                    if (this.P.f()) {
                                        float f3 = this.L.e().b;
                                        q qVarC4 = this.P.c();
                                        q qVarD2 = this.P.d();
                                        boolean z14 = true;
                                        while (true) {
                                            if (qVarC4 != null && qVarC4.f) {
                                                if (qVarC4.a(f3)) {
                                                    if (z14) {
                                                        q qVarC5 = this.P.c();
                                                        boolean zA3 = this.P.a(qVarC5);
                                                        boolean[] zArr = new boolean[this.y.length];
                                                        long jA4 = qVarC5.a(this.R.j, zA3, zArr);
                                                        a(qVarC5.k);
                                                        u uVar4 = this.R;
                                                        if (uVar4.f != 4 && jA4 != uVar4.j) {
                                                            u uVar5 = this.R;
                                                            this.R = uVar5.a(uVar5.c, jA4, uVar5.e);
                                                            this.M.b(4);
                                                            a(jA4);
                                                        }
                                                        boolean[] zArr2 = new boolean[this.y.length];
                                                        int i12 = 0;
                                                        int i13 = 0;
                                                        while (true) {
                                                            y[] yVarArr4 = this.y;
                                                            if (i12 < yVarArr4.length) {
                                                                y yVar8 = yVarArr4[i12];
                                                                zArr2[i12] = yVar8.a_() != 0;
                                                                com.anythink.expressad.exoplayer.h.y yVar9 = qVarC5.c[i12];
                                                                if (yVar9 != null) {
                                                                    i13++;
                                                                }
                                                                if (zArr2[i12]) {
                                                                    if (yVar9 != yVar8.f()) {
                                                                        b(yVar8);
                                                                    } else if (zArr[i12]) {
                                                                        yVar8.a(this.ab);
                                                                    }
                                                                }
                                                                i12++;
                                                            } else {
                                                                this.R = this.R.a(qVarC5.j, qVarC5.k);
                                                                a(zArr2, i13);
                                                            }
                                                        }
                                                    } else {
                                                        this.P.a(qVarC4);
                                                        if (qVarC4.f) {
                                                            qVarC4.b(Math.max(qVarC4.h.b, this.ab - qVarC4.e));
                                                            a(qVarC4.k);
                                                        }
                                                    }
                                                    if (this.R.f != 4) {
                                                        r();
                                                        g();
                                                        kVar = this.D;
                                                    }
                                                } else {
                                                    if (qVarC4 == qVarD2) {
                                                        z14 = false;
                                                    }
                                                    qVarC4 = qVarC4.i;
                                                }
                                            }
                                        }
                                        kVar.b(i5);
                                    }
                                    d();
                                    return true;
                                case 12:
                                    int i14 = message3.arg1;
                                    this.X = i14;
                                    if (!this.P.a(i14)) {
                                        g(true);
                                    }
                                    d();
                                    return true;
                                case 13:
                                    boolean z15 = message3.arg1 != 0;
                                    this.Y = z15;
                                    if (!this.P.a(z15)) {
                                        g(true);
                                    }
                                    d();
                                    return true;
                                case 14:
                                    x xVar = (x) message3.obj;
                                    if (xVar.f() == com.anythink.expressad.exoplayer.b.b) {
                                        d(xVar);
                                    } else if (this.S == null || this.Z > 0) {
                                        this.N.add(new b(xVar));
                                    } else {
                                        b bVar = new b(xVar);
                                        if (a(bVar)) {
                                            this.N.add(bVar);
                                            Collections.sort(this.N);
                                        } else {
                                            xVar.a(false);
                                        }
                                    }
                                    d();
                                    return true;
                                case 15:
                                    x xVar2 = (x) message3.obj;
                                    xVar2.e().post(new AnonymousClass1(xVar2));
                                    d();
                                    return true;
                                default:
                                    return false;
                            }
                        } catch (RuntimeException e6) {
                            e = e6;
                            message2 = message3;
                            runtimeException = e;
                            r23 = message2;
                            Log.e(d, "Internal runtime error.", runtimeException);
                            a(r23, r23);
                            handler = this.F;
                            gVarA = g.a(runtimeException);
                            i5 = 2;
                            messageObtainMessage = handler.obtainMessage(i5, gVarA);
                            messageObtainMessage.sendToTarget();
                            d();
                            return true;
                        }
                    } catch (RuntimeException e7) {
                        runtimeException = e7;
                        r23 = 0;
                        Log.e(d, "Internal runtime error.", runtimeException);
                        a(r23, r23);
                        handler = this.F;
                        gVarA = g.a(runtimeException);
                        i5 = 2;
                        messageObtainMessage = handler.obtainMessage(i5, gVarA);
                        messageObtainMessage.sendToTarget();
                        d();
                        return true;
                    }
                } catch (g e8) {
                    gVar = e8;
                    r25 = 0;
                    Log.e(d, "Playback error.", gVar);
                    a(r25, r25);
                    messageObtainMessage = this.F.obtainMessage(i5, gVar);
                    messageObtainMessage.sendToTarget();
                    d();
                    return true;
                } catch (IOException e9) {
                    iOException = e9;
                    r24 = 0;
                    Log.e(d, "Source error.", iOException);
                    a(r24, r24);
                    handler = this.F;
                    gVarA = g.a(iOException);
                    messageObtainMessage = handler.obtainMessage(i5, gVarA);
                    messageObtainMessage.sendToTarget();
                    d();
                    return true;
                }
            } catch (g e10) {
                gVar = e10;
                z3 = false;
            } catch (IOException e11) {
                iOException = e11;
                z = false;
            }
        } catch (g e12) {
            e = e12;
            r22 = 0;
        } catch (IOException e13) {
            e = e13;
            r2 = 0;
        } catch (RuntimeException e14) {
            e = e14;
            message2 = null;
        }
    }
}

package com.anythink.expressad.exoplayer.k;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class y {
    private static final Comparator<a> a = new Comparator<a>() { // from class: com.anythink.expressad.exoplayer.k.y.1
        private static int a(a aVar, a aVar2) {
            return aVar.a - aVar2.a;
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(a aVar, a aVar2) {
            return aVar.a - aVar2.a;
        }
    };
    private static final Comparator<a> b = new Comparator<a>() { // from class: com.anythink.expressad.exoplayer.k.y.2
        private static int a(a aVar, a aVar2) {
            float f2 = aVar.c;
            float f3 = aVar2.c;
            if (f2 < f3) {
                return -1;
            }
            return f3 < f2 ? 1 : 0;
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(a aVar, a aVar2) {
            float f2 = aVar.c;
            float f3 = aVar2.c;
            if (f2 < f3) {
                return -1;
            }
            return f3 < f2 ? 1 : 0;
        }
    };
    private static final int c = -1;
    private static final int d = 0;
    private static final int e = 1;
    private static final int f = 5;
    private final int g;
    private int k;
    private int l;
    private int m;
    private final a[] i = new a[5];
    private final ArrayList<a> h = new ArrayList<>();
    private int j = -1;

    public static class a {
        public int a;
        public int b;
        public float c;

        private a() {
        }

        public /* synthetic */ a(byte b) {
            this();
        }
    }

    public y(int i) {
        this.g = i;
    }

    private void b() {
        if (this.j != 1) {
            Collections.sort(this.h, a);
            this.j = 1;
        }
    }

    private void c() {
        if (this.j != 0) {
            Collections.sort(this.h, b);
            this.j = 0;
        }
    }

    public final float a() {
        if (this.j != 0) {
            Collections.sort(this.h, b);
            this.j = 0;
        }
        float f2 = this.l * 0.5f;
        int i = 0;
        for (int i2 = 0; i2 < this.h.size(); i2++) {
            a aVar = this.h.get(i2);
            i += aVar.b;
            if (i >= f2) {
                return aVar.c;
            }
        }
        if (this.h.isEmpty()) {
            return Float.NaN;
        }
        return this.h.get(r0.size() - 1).c;
    }

    public final void a(int i, float f2) {
        a aVar;
        int i2;
        a aVar2;
        int i3;
        if (this.j != 1) {
            Collections.sort(this.h, a);
            this.j = 1;
        }
        int i4 = this.m;
        byte b2 = 0;
        if (i4 > 0) {
            a[] aVarArr = this.i;
            int i5 = i4 - 1;
            this.m = i5;
            aVar = aVarArr[i5];
        } else {
            aVar = new a(b2);
        }
        int i6 = this.k;
        this.k = i6 + 1;
        aVar.a = i6;
        aVar.b = i;
        aVar.c = f2;
        this.h.add(aVar);
        int i7 = this.l + i;
        while (true) {
            this.l = i7;
            while (true) {
                int i8 = this.l;
                int i9 = this.g;
                if (i8 <= i9) {
                    return;
                }
                i2 = i8 - i9;
                aVar2 = this.h.get(0);
                i3 = aVar2.b;
                if (i3 <= i2) {
                    this.l -= i3;
                    this.h.remove(0);
                    int i10 = this.m;
                    if (i10 < 5) {
                        a[] aVarArr2 = this.i;
                        this.m = i10 + 1;
                        aVarArr2[i10] = aVar2;
                    }
                }
            }
            aVar2.b = i3 - i2;
            i7 = this.l - i2;
        }
    }
}

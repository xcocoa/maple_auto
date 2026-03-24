package com.anythink.expressad.exoplayer.i;

import android.content.Context;
import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.aa;
import com.anythink.expressad.exoplayer.h.ae;
import com.anythink.expressad.exoplayer.h.af;
import com.anythink.expressad.exoplayer.i.a;
import com.anythink.expressad.exoplayer.i.e;
import com.anythink.expressad.exoplayer.i.f;
import com.anythink.expressad.exoplayer.m;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class c extends com.anythink.expressad.exoplayer.i.e {
    private static final float a = 0.98f;
    private static final int[] b = new int[0];
    private static final int c = 1000;

    @Nullable
    private final f.a d;
    private final AtomicReference<C0124c> e;

    public static final class a {
        public final int a;
        public final int b;

        @Nullable
        public final String c;

        public a(int i, int i2, @Nullable String str) {
            this.a = i;
            this.b = i2;
            this.c = str;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && a.class == obj.getClass()) {
                a aVar = (a) obj;
                if (this.a == aVar.a && this.b == aVar.b && TextUtils.equals(this.c, aVar.c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = ((this.a * 31) + this.b) * 31;
            String str = this.c;
            return i + (str != null ? str.hashCode() : 0);
        }
    }

    public static final class b implements Comparable<b> {
        private final C0124c a;
        private final int b;
        private final int c;
        private final int d;
        private final int e;
        private final int f;
        private final int g;

        public b(m mVar, C0124c c0124c, int i) {
            this.a = c0124c;
            this.b = c.a(i, false) ? 1 : 0;
            this.c = c.a(mVar, c0124c.b) ? 1 : 0;
            this.d = (mVar.z & 1) != 0 ? 1 : 0;
            this.e = mVar.u;
            this.f = mVar.v;
            this.g = mVar.d;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final int compareTo(b bVar) {
            int i = this.b;
            int i2 = bVar.b;
            if (i != i2) {
                return c.a(i, i2);
            }
            int i3 = this.c;
            int i4 = bVar.c;
            if (i3 != i4) {
                return c.a(i3, i4);
            }
            int i5 = this.d;
            int i6 = bVar.d;
            if (i5 != i6) {
                return c.a(i5, i6);
            }
            if (this.a.m) {
                return c.a(bVar.g, this.g);
            }
            int i7 = i != 1 ? -1 : 1;
            int i8 = this.e;
            int i9 = bVar.e;
            return i7 * ((i8 == i9 && (i8 = this.f) == (i9 = bVar.f)) ? c.a(this.g, bVar.g) : c.a(i8, i9));
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && b.class == obj.getClass()) {
                b bVar = (b) obj;
                if (this.b == bVar.b && this.c == bVar.c && this.d == bVar.d && this.e == bVar.e && this.f == bVar.f && this.g == bVar.g) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (((((((((this.b * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.f) * 31) + this.g;
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.i.c$c, reason: collision with other inner class name */
    public static final class C0124c implements Parcelable {

        @Nullable
        public final String b;

        @Nullable
        public final String c;
        public final boolean d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final boolean i;
        public final int j;
        public final int k;
        public final boolean l;
        public final boolean m;
        public final boolean n;
        public final boolean o;
        public final boolean p;
        public final int q;
        private final SparseArray<Map<af, e>> r;
        private final SparseBooleanArray s;
        public static final C0124c a = new C0124c();
        public static final Parcelable.Creator<C0124c> CREATOR = new Parcelable.Creator<C0124c>() { // from class: com.anythink.expressad.exoplayer.i.c.c.1
            private static C0124c a(Parcel parcel) {
                return new C0124c(parcel);
            }

            private static C0124c[] a(int i) {
                return new C0124c[i];
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ C0124c createFromParcel(Parcel parcel) {
                return new C0124c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ C0124c[] newArray(int i) {
                return new C0124c[i];
            }
        };

        private C0124c() {
            this(new SparseArray(), new SparseBooleanArray(), null, null, false, 0, false, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true, 0);
        }

        public C0124c(Parcel parcel) {
            this.r = a(parcel);
            this.s = parcel.readSparseBooleanArray();
            this.b = parcel.readString();
            this.c = parcel.readString();
            this.d = com.anythink.expressad.exoplayer.k.af.a(parcel);
            this.e = parcel.readInt();
            this.m = com.anythink.expressad.exoplayer.k.af.a(parcel);
            this.n = com.anythink.expressad.exoplayer.k.af.a(parcel);
            this.o = com.anythink.expressad.exoplayer.k.af.a(parcel);
            this.f = parcel.readInt();
            this.g = parcel.readInt();
            this.h = parcel.readInt();
            this.i = com.anythink.expressad.exoplayer.k.af.a(parcel);
            this.p = com.anythink.expressad.exoplayer.k.af.a(parcel);
            this.j = parcel.readInt();
            this.k = parcel.readInt();
            this.l = com.anythink.expressad.exoplayer.k.af.a(parcel);
            this.q = parcel.readInt();
        }

        public C0124c(SparseArray<Map<af, e>> sparseArray, SparseBooleanArray sparseBooleanArray, @Nullable String str, @Nullable String str2, boolean z, int i, boolean z3, boolean z4, boolean z5, int i2, int i3, int i4, boolean z6, boolean z7, int i5, int i6, boolean z8, int i7) {
            this.r = sparseArray;
            this.s = sparseBooleanArray;
            this.b = com.anythink.expressad.exoplayer.k.af.b(str);
            this.c = com.anythink.expressad.exoplayer.k.af.b(str2);
            this.d = z;
            this.e = i;
            this.m = z3;
            this.n = z4;
            this.o = z5;
            this.f = i2;
            this.g = i3;
            this.h = i4;
            this.i = z6;
            this.p = z7;
            this.j = i5;
            this.k = i6;
            this.l = z8;
            this.q = i7;
        }

        private static SparseArray<Map<af, e>> a(Parcel parcel) {
            int i = parcel.readInt();
            SparseArray<Map<af, e>> sparseArray = new SparseArray<>(i);
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = parcel.readInt();
                int i4 = parcel.readInt();
                HashMap map = new HashMap(i4);
                for (int i5 = 0; i5 < i4; i5++) {
                    map.put((af) parcel.readParcelable(af.class.getClassLoader()), (e) parcel.readParcelable(e.class.getClassLoader()));
                }
                sparseArray.put(i3, map);
            }
            return sparseArray;
        }

        private d a() {
            return new d(this, (byte) 0);
        }

        private static void a(Parcel parcel, SparseArray<Map<af, e>> sparseArray) {
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                int iKeyAt = sparseArray.keyAt(i);
                Map<af, e> mapValueAt = sparseArray.valueAt(i);
                int size2 = mapValueAt.size();
                parcel.writeInt(iKeyAt);
                parcel.writeInt(size2);
                for (Map.Entry<af, e> entry : mapValueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0064 A[LOOP:0: B:6:0x000d->B:23:0x0064, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0067 A[EDGE_INSN: B:28:0x0067->B:24:0x0067 BREAK  A[LOOP:0: B:6:0x000d->B:23:0x0064], SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static boolean a(SparseArray<Map<af, e>> sparseArray, SparseArray<Map<af, e>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            int i = 0;
            while (true) {
                boolean z = true;
                if (i >= size) {
                    return true;
                }
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (iIndexOfKey < 0) {
                    break;
                }
                Map<af, e> mapValueAt = sparseArray.valueAt(i);
                Map<af, e> mapValueAt2 = sparseArray2.valueAt(iIndexOfKey);
                if (mapValueAt2.size() != mapValueAt.size()) {
                    z = false;
                    if (z) {
                        break;
                    }
                    i++;
                } else {
                    for (Map.Entry<af, e> entry : mapValueAt.entrySet()) {
                        af key = entry.getKey();
                        if (!mapValueAt2.containsKey(key) || !com.anythink.expressad.exoplayer.k.af.a(entry.getValue(), mapValueAt2.get(key))) {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                    }
                }
            }
            return false;
        }

        private static boolean a(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean a(Map<af, e> map, Map<af, e> map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry<af, e> entry : map.entrySet()) {
                af key = entry.getKey();
                if (!map2.containsKey(key) || !com.anythink.expressad.exoplayer.k.af.a(entry.getValue(), map2.get(key))) {
                    return false;
                }
            }
            return true;
        }

        public final boolean a(int i) {
            return this.s.get(i);
        }

        public final boolean a(int i, af afVar) {
            Map<af, e> map = this.r.get(i);
            return map != null && map.containsKey(afVar);
        }

        @Nullable
        public final e b(int i, af afVar) {
            Map<af, e> map = this.r.get(i);
            if (map != null) {
                return map.get(afVar);
            }
            return null;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0107 A[LOOP:0: B:57:0x00b0->B:74:0x0107, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:77:0x010d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x00ad A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean equals(@Nullable Object obj) {
            boolean z;
            boolean z3;
            boolean z4;
            if (this == obj) {
                return true;
            }
            if (obj != null && C0124c.class == obj.getClass()) {
                C0124c c0124c = (C0124c) obj;
                if (this.d == c0124c.d && this.e == c0124c.e && this.m == c0124c.m && this.n == c0124c.n && this.o == c0124c.o && this.f == c0124c.f && this.g == c0124c.g && this.i == c0124c.i && this.p == c0124c.p && this.l == c0124c.l && this.j == c0124c.j && this.k == c0124c.k && this.h == c0124c.h && this.q == c0124c.q && TextUtils.equals(this.b, c0124c.b) && TextUtils.equals(this.c, c0124c.c)) {
                    SparseBooleanArray sparseBooleanArray = this.s;
                    SparseBooleanArray sparseBooleanArray2 = c0124c.s;
                    int size = sparseBooleanArray.size();
                    if (sparseBooleanArray2.size() != size) {
                        z = false;
                        if (z) {
                            SparseArray<Map<af, e>> sparseArray = this.r;
                            SparseArray<Map<af, e>> sparseArray2 = c0124c.r;
                            int size2 = sparseArray.size();
                            if (sparseArray2.size() != size2) {
                                z3 = false;
                                if (!z3) {
                                    return true;
                                }
                            } else {
                                for (int i = 0; i < size2; i++) {
                                    int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                                    if (iIndexOfKey >= 0) {
                                        Map<af, e> mapValueAt = sparseArray.valueAt(i);
                                        Map<af, e> mapValueAt2 = sparseArray2.valueAt(iIndexOfKey);
                                        if (mapValueAt2.size() != mapValueAt.size()) {
                                            z4 = false;
                                            if (!z4) {
                                            }
                                        } else {
                                            for (Map.Entry<af, e> entry : mapValueAt.entrySet()) {
                                                af key = entry.getKey();
                                                if (!mapValueAt2.containsKey(key) || !com.anythink.expressad.exoplayer.k.af.a(entry.getValue(), mapValueAt2.get(key))) {
                                                    z4 = false;
                                                    break;
                                                }
                                            }
                                            z4 = true;
                                            if (!z4) {
                                            }
                                        }
                                    }
                                    z3 = false;
                                    break;
                                }
                                z3 = true;
                                if (!z3) {
                                }
                            }
                        }
                    } else {
                        for (int i2 = 0; i2 < size; i2++) {
                            if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i2)) < 0) {
                                z = false;
                                break;
                            }
                        }
                        z = true;
                        if (z) {
                        }
                    }
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = (((((((((((((((((((((((((((this.d ? 1 : 0) * 31) + this.e) * 31) + (this.m ? 1 : 0)) * 31) + (this.n ? 1 : 0)) * 31) + (this.o ? 1 : 0)) * 31) + this.f) * 31) + this.g) * 31) + (this.i ? 1 : 0)) * 31) + (this.p ? 1 : 0)) * 31) + (this.l ? 1 : 0)) * 31) + this.j) * 31) + this.k) * 31) + this.h) * 31) + this.q) * 31;
            String str = this.b;
            int iHashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.c;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            SparseArray<Map<af, e>> sparseArray = this.r;
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = sparseArray.keyAt(i2);
                Map<af, e> mapValueAt = sparseArray.valueAt(i2);
                int size2 = mapValueAt.size();
                parcel.writeInt(iKeyAt);
                parcel.writeInt(size2);
                for (Map.Entry<af, e> entry : mapValueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
            parcel.writeSparseBooleanArray(this.s);
            parcel.writeString(this.b);
            parcel.writeString(this.c);
            com.anythink.expressad.exoplayer.k.af.a(parcel, this.d);
            parcel.writeInt(this.e);
            com.anythink.expressad.exoplayer.k.af.a(parcel, this.m);
            com.anythink.expressad.exoplayer.k.af.a(parcel, this.n);
            com.anythink.expressad.exoplayer.k.af.a(parcel, this.o);
            parcel.writeInt(this.f);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
            com.anythink.expressad.exoplayer.k.af.a(parcel, this.i);
            com.anythink.expressad.exoplayer.k.af.a(parcel, this.p);
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
            com.anythink.expressad.exoplayer.k.af.a(parcel, this.l);
            parcel.writeInt(this.q);
        }
    }

    public static final class d {
        private final SparseArray<Map<af, e>> a;
        private final SparseBooleanArray b;

        @Nullable
        private String c;

        @Nullable
        private String d;
        private boolean e;
        private int f;
        private boolean g;
        private boolean h;
        private boolean i;
        private int j;
        private int k;
        private int l;
        private boolean m;
        private boolean n;
        private int o;
        private int p;
        private boolean q;
        private int r;

        public d() {
            this(C0124c.a);
        }

        private d(C0124c c0124c) {
            this.a = a((SparseArray<Map<af, e>>) c0124c.r);
            this.b = c0124c.s.clone();
            this.c = c0124c.b;
            this.d = c0124c.c;
            this.e = c0124c.d;
            this.f = c0124c.e;
            this.g = c0124c.m;
            this.h = c0124c.n;
            this.i = c0124c.o;
            this.j = c0124c.f;
            this.k = c0124c.g;
            this.l = c0124c.h;
            this.m = c0124c.i;
            this.n = c0124c.p;
            this.o = c0124c.j;
            this.p = c0124c.k;
            this.q = c0124c.l;
            this.r = c0124c.q;
        }

        public /* synthetic */ d(C0124c c0124c, byte b) {
            this(c0124c);
        }

        private static SparseArray<Map<af, e>> a(SparseArray<Map<af, e>> sparseArray) {
            SparseArray<Map<af, e>> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new HashMap(sparseArray.valueAt(i)));
            }
            return sparseArray2;
        }

        private d a(int i, int i2) {
            this.j = i;
            this.k = i2;
            return this;
        }

        private d a(int i, int i2, boolean z) {
            this.o = i;
            this.p = i2;
            this.q = z;
            return this;
        }

        private d a(Context context, boolean z) {
            Point pointA = com.anythink.expressad.exoplayer.k.af.a(context);
            return a(pointA.x, pointA.y, z);
        }

        private d a(String str) {
            this.c = str;
            return this;
        }

        private d a(boolean z) {
            this.e = z;
            return this;
        }

        private d b(String str) {
            this.d = str;
            return this;
        }

        private d b(boolean z) {
            this.g = z;
            return this;
        }

        private d c() {
            return a(1279, 719);
        }

        private d c(int i) {
            this.f = i;
            return this;
        }

        private d c(boolean z) {
            this.h = z;
            return this;
        }

        private d d() {
            return a(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }

        private d d(int i) {
            this.l = i;
            return this;
        }

        private d d(boolean z) {
            this.i = z;
            return this;
        }

        private d e() {
            return a(Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        private d e(boolean z) {
            this.m = z;
            return this;
        }

        private d f(boolean z) {
            this.n = z;
            return this;
        }

        public final d a() {
            if (this.a.size() == 0) {
                return this;
            }
            this.a.clear();
            return this;
        }

        public final d a(int i) {
            Map<af, e> map = this.a.get(i);
            if (map != null && !map.isEmpty()) {
                this.a.remove(i);
            }
            return this;
        }

        public final d a(int i, af afVar) {
            Map<af, e> map = this.a.get(i);
            if (map != null && map.containsKey(afVar)) {
                map.remove(afVar);
                if (map.isEmpty()) {
                    this.a.remove(i);
                }
            }
            return this;
        }

        public final d a(int i, af afVar, e eVar) {
            Map<af, e> map = this.a.get(i);
            if (map == null) {
                map = new HashMap<>();
                this.a.put(i, map);
            }
            if (map.containsKey(afVar) && com.anythink.expressad.exoplayer.k.af.a(map.get(afVar), eVar)) {
                return this;
            }
            map.put(afVar, eVar);
            return this;
        }

        public final d a(int i, boolean z) {
            if (this.b.get(i) == z) {
                return this;
            }
            if (z) {
                this.b.put(i, true);
            } else {
                this.b.delete(i);
            }
            return this;
        }

        public final C0124c b() {
            return new C0124c(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r);
        }

        public final d b(int i) {
            if (this.r != i) {
                this.r = i;
            }
            return this;
        }
    }

    public static final class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new Parcelable.Creator<e>() { // from class: com.anythink.expressad.exoplayer.i.c.e.1
            private static e a(Parcel parcel) {
                return new e(parcel);
            }

            private static e[] a(int i) {
                return new e[i];
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ e createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ e[] newArray(int i) {
                return new e[i];
            }
        };
        public final int a;
        public final int[] b;
        public final int c;

        private e(int i, int... iArr) {
            this.a = i;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.b = iArrCopyOf;
            this.c = iArr.length;
            Arrays.sort(iArrCopyOf);
        }

        public e(Parcel parcel) {
            this.a = parcel.readInt();
            int i = parcel.readByte();
            this.c = i;
            int[] iArr = new int[i];
            this.b = iArr;
            parcel.readIntArray(iArr);
        }

        private boolean a(int i) {
            for (int i2 : this.b) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && e.class == obj.getClass()) {
                e eVar = (e) obj;
                if (this.a == eVar.a && Arrays.equals(this.b, eVar.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (this.a * 31) + Arrays.hashCode(this.b);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.a);
            parcel.writeInt(this.b.length);
            parcel.writeIntArray(this.b);
        }
    }

    public c() {
        this((f.a) null);
    }

    private c(@Nullable f.a aVar) {
        this.d = aVar;
        this.e = new AtomicReference<>(C0124c.a);
    }

    private c(com.anythink.expressad.exoplayer.j.d dVar) {
        this(new a.C0123a(dVar));
    }

    public static /* synthetic */ int a(int i, int i2) {
        if (i > i2) {
            return 1;
        }
        return i2 > i ? -1 : 0;
    }

    private static int a(ae aeVar, int[] iArr, int i, @Nullable String str, int i2, int i3, int i4, List<Integer> list) {
        int i5 = 0;
        for (int i6 = 0; i6 < list.size(); i6++) {
            int iIntValue = list.get(i6).intValue();
            if (a(aeVar.a(iIntValue), str, iArr[iIntValue], i, i2, i3, i4)) {
                i5++;
            }
        }
        return i5;
    }

    private static int a(ae aeVar, int[] iArr, a aVar) {
        int i = 0;
        for (int i2 = 0; i2 < aeVar.a; i2++) {
            if (a(aeVar.a(i2), iArr[i2], aVar)) {
                i++;
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Point a(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            if ((i3 > i4) == (i > i2)) {
                i2 = i;
                i = i2;
            }
        }
        int i5 = i3 * i;
        int i6 = i4 * i2;
        return i5 >= i6 ? new Point(i2, com.anythink.expressad.exoplayer.k.af.a(i6, i3)) : new Point(com.anythink.expressad.exoplayer.k.af.a(i5, i4), i);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00fd A[LOOP:0: B:16:0x0022->B:45:0x00fd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ef A[SYNTHETIC] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static f a(af afVar, int[][] iArr, int i, C0124c c0124c, @Nullable f.a aVar) {
        f fVarA;
        List<Integer> list;
        int i2;
        int i3;
        int i4;
        ae aeVar;
        String str;
        int[] iArrA;
        int i5;
        HashSet hashSet;
        List<Integer> list2;
        int i6;
        int i7;
        int i8;
        ae aeVar2;
        if (c0124c.m || aVar == null) {
            fVarA = null;
        } else {
            int i9 = c0124c.o ? 24 : 16;
            boolean z = c0124c.n && (i & i9) != 0;
            for (int i10 = 0; i10 < afVar.b; i10++) {
                ae aeVarA = afVar.a(i10);
                int[] iArr2 = iArr[i10];
                int i11 = c0124c.f;
                int i12 = c0124c.g;
                int i13 = c0124c.h;
                int i14 = c0124c.j;
                int i15 = c0124c.k;
                boolean z3 = c0124c.l;
                if (aeVarA.a < 2) {
                    iArrA = b;
                    aeVar = aeVarA;
                    if (iArrA.length <= 0) {
                        fVarA = ((f.a) com.anythink.expressad.exoplayer.k.a.a(aVar)).a(aeVar, iArrA);
                        break;
                    }
                } else {
                    List<Integer> listA = a(aeVarA, i14, i15, z3);
                    if (listA.size() >= 2) {
                        if (z) {
                            list = listA;
                            i2 = i13;
                            i3 = i12;
                            i4 = i11;
                            aeVar = aeVarA;
                            str = null;
                        } else {
                            HashSet hashSet2 = new HashSet();
                            int iA = 0;
                            int i16 = 0;
                            String str2 = null;
                            while (i16 < listA.size()) {
                                String str3 = aeVarA.a(listA.get(i16).intValue()).h;
                                int i17 = iA;
                                if (hashSet2.add(str3)) {
                                    i5 = i16;
                                    hashSet = hashSet2;
                                    list2 = listA;
                                    i6 = i13;
                                    i7 = i12;
                                    i8 = i11;
                                    aeVar2 = aeVarA;
                                    iA = a(aeVarA, iArr2, i9, str3, i11, i12, i6, list2);
                                    if (iA > i17) {
                                        str2 = str3;
                                    }
                                    i16 = i5 + 1;
                                    hashSet2 = hashSet;
                                    listA = list2;
                                    i13 = i6;
                                    i12 = i7;
                                    i11 = i8;
                                    aeVarA = aeVar2;
                                } else {
                                    i5 = i16;
                                    hashSet = hashSet2;
                                    list2 = listA;
                                    i6 = i13;
                                    i7 = i12;
                                    i8 = i11;
                                    aeVar2 = aeVarA;
                                }
                                iA = i17;
                                i16 = i5 + 1;
                                hashSet2 = hashSet;
                                listA = list2;
                                i13 = i6;
                                i12 = i7;
                                i11 = i8;
                                aeVarA = aeVar2;
                            }
                            list = listA;
                            i2 = i13;
                            i3 = i12;
                            i4 = i11;
                            aeVar = aeVarA;
                            str = str2;
                        }
                        b(aeVar, iArr2, i9, str, i4, i3, i2, list);
                        iArrA = list.size() < 2 ? b : com.anythink.expressad.exoplayer.k.af.a(list);
                    }
                    if (iArrA.length <= 0) {
                    }
                }
            }
            fVarA = null;
        }
        return fVarA == null ? a(afVar, iArr, c0124c) : fVarA;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0085  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static f a(af afVar, int[][] iArr, C0124c c0124c) {
        int i;
        int i2;
        int i3;
        af afVar2 = afVar;
        int i4 = -1;
        int i5 = 0;
        ae aeVar = null;
        int i6 = 0;
        int i7 = 0;
        int iA = -1;
        int i8 = -1;
        while (i5 < afVar2.b) {
            ae aeVarA = afVar2.a(i5);
            List<Integer> listA = a(aeVarA, c0124c.j, c0124c.k, c0124c.l);
            int[] iArr2 = iArr[i5];
            int i9 = 0;
            while (i9 < aeVarA.a) {
                if (a(iArr2[i9], c0124c.p)) {
                    m mVarA = aeVarA.a(i9);
                    boolean z = true;
                    boolean z3 = listA.contains(Integer.valueOf(i9)) && ((i = mVarA.m) == i4 || i <= c0124c.f) && (((i2 = mVarA.n) == i4 || i2 <= c0124c.g) && ((i3 = mVarA.d) == i4 || i3 <= c0124c.h));
                    if (z3 || c0124c.i) {
                        int i10 = z3 ? 2 : 1;
                        boolean zA = a(iArr2[i9], false);
                        if (zA) {
                            i10 += 1000;
                        }
                        boolean z4 = i10 > i7;
                        if (i10 == i7) {
                            if (c0124c.m) {
                                if (b(mVarA.d, i8) >= 0) {
                                    z = false;
                                }
                                z4 = z;
                            } else {
                                int iA2 = mVarA.a();
                                int iB = iA2 != iA ? b(iA2, iA) : b(mVarA.d, i8);
                                if (!zA || !z3 ? iB >= 0 : iB <= 0) {
                                }
                                z4 = z;
                            }
                        }
                        if (z4) {
                            i8 = mVarA.d;
                            iA = mVarA.a();
                            aeVar = aeVarA;
                            i6 = i9;
                            i7 = i10;
                        }
                    }
                }
                i9++;
                i4 = -1;
            }
            i5++;
            afVar2 = afVar;
            i4 = -1;
        }
        if (aeVar == null) {
            return null;
        }
        return new com.anythink.expressad.exoplayer.i.d(aeVar, i6);
    }

    @Nullable
    private static f a(af afVar, int[][] iArr, C0124c c0124c, @Nullable f.a aVar) {
        int[] iArr2;
        int iA;
        b bVar = null;
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < afVar.b; i3++) {
            ae aeVarA = afVar.a(i3);
            int[] iArr3 = iArr[i3];
            for (int i4 = 0; i4 < aeVarA.a; i4++) {
                if (a(iArr3[i4], c0124c.p)) {
                    b bVar2 = new b(aeVarA.a(i4), c0124c, iArr3[i4]);
                    if (bVar == null || bVar2.compareTo(bVar) > 0) {
                        i = i3;
                        i2 = i4;
                        bVar = bVar2;
                    }
                }
            }
        }
        if (i == -1) {
            return null;
        }
        ae aeVarA2 = afVar.a(i);
        if (!c0124c.m && aVar != null) {
            int[] iArr4 = iArr[i];
            boolean z = c0124c.n;
            HashSet hashSet = new HashSet();
            a aVar2 = null;
            int i5 = 0;
            for (int i6 = 0; i6 < aeVarA2.a; i6++) {
                m mVarA = aeVarA2.a(i6);
                a aVar3 = new a(mVarA.u, mVarA.v, z ? null : mVarA.h);
                if (hashSet.add(aVar3) && (iA = a(aeVarA2, iArr4, aVar3)) > i5) {
                    i5 = iA;
                    aVar2 = aVar3;
                }
            }
            if (i5 > 1) {
                iArr2 = new int[i5];
                int i7 = 0;
                for (int i8 = 0; i8 < aeVarA2.a; i8++) {
                    if (a(aeVarA2.a(i8), iArr4[i8], (a) com.anythink.expressad.exoplayer.k.a.a(aVar2))) {
                        iArr2[i7] = i8;
                        i7++;
                    }
                }
            } else {
                iArr2 = b;
            }
            if (iArr2.length > 0) {
                return aVar.a(aeVarA2, iArr2);
            }
        }
        return new com.anythink.expressad.exoplayer.i.d(aeVarA2, i2);
    }

    private static List<Integer> a(ae aeVar, int i, int i2, boolean z) {
        int i3;
        ArrayList arrayList = new ArrayList(aeVar.a);
        for (int i4 = 0; i4 < aeVar.a; i4++) {
            arrayList.add(Integer.valueOf(i4));
        }
        if (i != Integer.MAX_VALUE && i2 != Integer.MAX_VALUE) {
            int i5 = Integer.MAX_VALUE;
            for (int i6 = 0; i6 < aeVar.a; i6++) {
                m mVarA = aeVar.a(i6);
                int i7 = mVarA.m;
                if (i7 > 0 && (i3 = mVarA.n) > 0) {
                    Point pointA = a(z, i, i2, i7, i3);
                    int i8 = mVarA.m;
                    int i9 = mVarA.n;
                    int i10 = i8 * i9;
                    if (i8 >= ((int) (pointA.x * a)) && i9 >= ((int) (pointA.y * a)) && i10 < i5) {
                        i5 = i10;
                    }
                }
            }
            if (i5 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int iA = aeVar.a(((Integer) arrayList.get(size)).intValue()).a();
                    if (iA == -1 || iA > i5) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    @Deprecated
    private void a(int i, af afVar, e eVar) {
        a(d().a(i, afVar, eVar));
    }

    private void a(C0124c c0124c) {
        com.anythink.expressad.exoplayer.k.a.a(c0124c);
        if (this.e.getAndSet(c0124c).equals(c0124c)) {
            return;
        }
        b();
    }

    private void a(d dVar) {
        C0124c c0124cB = dVar.b();
        com.anythink.expressad.exoplayer.k.a.a(c0124cB);
        if (this.e.getAndSet(c0124cB).equals(c0124cB)) {
            return;
        }
        b();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0058 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void a(e.a aVar, int[][][] iArr, aa[] aaVarArr, f[] fVarArr, int i) {
        boolean z;
        boolean z3;
        if (i == 0) {
            return;
        }
        boolean z4 = false;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < aVar.a(); i4++) {
            int iA = aVar.a(i4);
            f fVar = fVarArr[i4];
            if ((iA == 1 || iA == 2) && fVar != null) {
                int[][] iArr2 = iArr[i4];
                af afVarB = aVar.b(i4);
                if (fVar != null) {
                    int iA2 = afVarB.a(fVar.f());
                    for (int i5 = 0; i5 < fVar.g(); i5++) {
                        if ((iArr2[iA2][fVar.b(i5)] & 32) == 32) {
                        }
                    }
                    z3 = true;
                    if (!z3) {
                        continue;
                    } else if (iA == 1) {
                        if (i3 != -1) {
                            z = false;
                            break;
                        }
                        i3 = i4;
                    } else {
                        if (i2 != -1) {
                            z = false;
                            break;
                        }
                        i2 = i4;
                    }
                }
                z3 = false;
                if (!z3) {
                }
            }
        }
        z = true;
        if (i3 != -1 && i2 != -1) {
            z4 = true;
        }
        if (z && z4) {
            aa aaVar = new aa(i);
            aaVarArr[i3] = aaVar;
            aaVarArr[i2] = aaVar;
        }
    }

    @Deprecated
    private boolean a(int i) {
        return c().a(i);
    }

    @Deprecated
    private boolean a(int i, af afVar) {
        return c().a(i, afVar);
    }

    public static boolean a(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            return z && i2 == 3;
        }
        return true;
    }

    private static boolean a(m mVar) {
        return TextUtils.isEmpty(mVar.A) || a(mVar, com.anythink.expressad.exoplayer.b.ar);
    }

    private static boolean a(m mVar, int i, a aVar) {
        String str;
        return a(i, false) && mVar.u == aVar.a && mVar.v == aVar.b && ((str = aVar.c) == null || TextUtils.equals(str, mVar.h));
    }

    public static boolean a(m mVar, @Nullable String str) {
        return str != null && TextUtils.equals(str, com.anythink.expressad.exoplayer.k.af.b(mVar.A));
    }

    private static boolean a(m mVar, @Nullable String str, int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        return a(i, false) && (i & i2) != 0 && (str == null || com.anythink.expressad.exoplayer.k.af.a((Object) mVar.h, (Object) str)) && (((i6 = mVar.m) == -1 || i6 <= i3) && (((i7 = mVar.n) == -1 || i7 <= i4) && ((i8 = mVar.d) == -1 || i8 <= i5)));
    }

    private static boolean a(int[][] iArr, af afVar, f fVar) {
        if (fVar == null) {
            return false;
        }
        int iA = afVar.a(fVar.f());
        for (int i = 0; i < fVar.g(); i++) {
            if ((iArr[iA][fVar.b(i)] & 32) != 32) {
                return false;
            }
        }
        return true;
    }

    private static int[] a(ae aeVar, int[] iArr, boolean z) {
        int iA;
        HashSet hashSet = new HashSet();
        a aVar = null;
        int i = 0;
        for (int i2 = 0; i2 < aeVar.a; i2++) {
            m mVarA = aeVar.a(i2);
            a aVar2 = new a(mVarA.u, mVarA.v, z ? null : mVarA.h);
            if (hashSet.add(aVar2) && (iA = a(aeVar, iArr, aVar2)) > i) {
                i = iA;
                aVar = aVar2;
            }
        }
        if (i <= 1) {
            return b;
        }
        int[] iArr2 = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 < aeVar.a; i4++) {
            if (a(aeVar.a(i4), iArr[i4], (a) com.anythink.expressad.exoplayer.k.a.a(aVar))) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return iArr2;
    }

    private static int[] a(ae aeVar, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, boolean z3) {
        String str;
        int iA;
        if (aeVar.a < 2) {
            return b;
        }
        List<Integer> listA = a(aeVar, i5, i6, z3);
        if (listA.size() < 2) {
            return b;
        }
        if (z) {
            str = null;
        } else {
            HashSet hashSet = new HashSet();
            String str2 = null;
            int i7 = 0;
            for (int i8 = 0; i8 < listA.size(); i8++) {
                String str3 = aeVar.a(listA.get(i8).intValue()).h;
                if (hashSet.add(str3) && (iA = a(aeVar, iArr, i, str3, i2, i3, i4, listA)) > i7) {
                    i7 = iA;
                    str2 = str3;
                }
            }
            str = str2;
        }
        b(aeVar, iArr, i, str, i2, i3, i4, listA);
        return listA.size() < 2 ? b : com.anythink.expressad.exoplayer.k.af.a(listA);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f2 A[LOOP:1: B:22:0x003f->B:50:0x00f2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00e6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private f[] a(e.a aVar, int[][][] iArr, int[] iArr2, C0124c c0124c) {
        e.a aVar2;
        int i;
        f[] fVarArr;
        int i2;
        boolean z;
        int i3;
        f fVarA;
        boolean z3;
        String str;
        int[] iArrA;
        HashSet hashSet;
        c cVar = this;
        e.a aVar3 = aVar;
        int iA = aVar.a();
        f[] fVarArr2 = new f[iA];
        int i4 = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (i4 < iA) {
            if (2 == aVar3.a(i4)) {
                if (z4) {
                    i = iA;
                    fVarArr = fVarArr2;
                    z = z5;
                    aVar2 = aVar;
                    i2 = i4;
                } else {
                    af afVarB = aVar3.b(i4);
                    int[][] iArr3 = iArr[i4];
                    int i5 = iArr2[i4];
                    f.a aVar4 = cVar.d;
                    if (c0124c.m || aVar4 == null) {
                        i = iA;
                        fVarArr = fVarArr2;
                        i3 = i4;
                        z = z5;
                        fVarA = null;
                        if (fVarA == null) {
                            fVarA = a(afVarB, iArr3, c0124c);
                        }
                        fVarArr[i3] = fVarA;
                        z4 = fVarArr[i3] == null;
                        i2 = i3;
                        aVar2 = aVar;
                    } else {
                        int i6 = c0124c.o ? 24 : 16;
                        boolean z6 = c0124c.n && (i5 & i6) != 0;
                        int i7 = 0;
                        while (i7 < afVarB.b) {
                            ae aeVarA = afVarB.a(i7);
                            int[] iArr4 = iArr3[i7];
                            int i8 = c0124c.f;
                            int i9 = c0124c.g;
                            int i10 = c0124c.h;
                            i = iA;
                            int i11 = c0124c.j;
                            z = z5;
                            int i12 = c0124c.k;
                            boolean z7 = c0124c.l;
                            fVarArr = fVarArr2;
                            i3 = i4;
                            if (aeVarA.a < 2) {
                                iArrA = b;
                                z3 = z6;
                                if (iArrA.length <= 0) {
                                    fVarA = ((f.a) com.anythink.expressad.exoplayer.k.a.a(aVar4)).a(aeVarA, iArrA);
                                    break;
                                }
                                i7++;
                                iA = i;
                                z5 = z;
                                fVarArr2 = fVarArr;
                                i4 = i3;
                                z6 = z3;
                            } else {
                                List<Integer> listA = a(aeVarA, i11, i12, z7);
                                if (listA.size() >= 2) {
                                    if (z6) {
                                        z3 = z6;
                                        str = null;
                                    } else {
                                        HashSet hashSet2 = new HashSet();
                                        z3 = z6;
                                        int i13 = 0;
                                        String str2 = null;
                                        int i14 = 0;
                                        while (i13 < listA.size()) {
                                            String str3 = aeVarA.a(listA.get(i13).intValue()).h;
                                            if (hashSet2.add(str3)) {
                                                hashSet = hashSet2;
                                                int iA2 = a(aeVarA, iArr4, i6, str3, i8, i9, i10, listA);
                                                if (iA2 > i14) {
                                                    i14 = iA2;
                                                    str2 = str3;
                                                }
                                            } else {
                                                hashSet = hashSet2;
                                            }
                                            i13++;
                                            hashSet2 = hashSet;
                                        }
                                        str = str2;
                                    }
                                    b(aeVarA, iArr4, i6, str, i8, i9, i10, listA);
                                    iArrA = listA.size() < 2 ? b : com.anythink.expressad.exoplayer.k.af.a(listA);
                                }
                                if (iArrA.length <= 0) {
                                }
                            }
                        }
                        i = iA;
                        fVarArr = fVarArr2;
                        i3 = i4;
                        z = z5;
                        fVarA = null;
                        if (fVarA == null) {
                        }
                        fVarArr[i3] = fVarA;
                        z4 = fVarArr[i3] == null;
                        i2 = i3;
                        aVar2 = aVar;
                    }
                }
                z5 = z | (aVar2.b(i2).b > 0);
            } else {
                aVar2 = aVar3;
                i = iA;
                fVarArr = fVarArr2;
                i2 = i4;
            }
            i4 = i2 + 1;
            aVar3 = aVar2;
            iA = i;
            fVarArr2 = fVarArr;
            cVar = this;
        }
        e.a aVar5 = aVar3;
        f[] fVarArr3 = fVarArr2;
        boolean z8 = z5;
        int i15 = iA;
        boolean z9 = false;
        boolean z10 = false;
        for (int i16 = 0; i16 < i15; i16++) {
            int iA3 = aVar5.a(i16);
            if (iA3 == 1) {
                if (!z9) {
                    fVarArr3[i16] = a(aVar5.b(i16), iArr[i16], c0124c, z8 ? null : this.d);
                    z9 = fVarArr3[i16] != null;
                }
            } else if (iA3 != 2) {
                if (iA3 != 3) {
                    fVarArr3[i16] = c(aVar5.b(i16), iArr[i16], c0124c);
                } else if (!z10) {
                    fVarArr3[i16] = b(aVar5.b(i16), iArr[i16], c0124c);
                    z10 = fVarArr3[i16] != null;
                }
            }
        }
        return fVarArr3;
    }

    private static int b(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        }
        if (i2 == -1) {
            return 1;
        }
        return i - i2;
    }

    @Nullable
    @Deprecated
    private e b(int i, af afVar) {
        return c().b(i, afVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static f b(af afVar, int[][] iArr, int i, C0124c c0124c, f.a aVar) {
        List<Integer> list;
        int i2;
        int i3;
        int i4;
        String str;
        int[] iArrA;
        int i5;
        int i6;
        HashSet hashSet;
        List<Integer> list2;
        int i7;
        int i8;
        int i9;
        int i10 = c0124c.o ? 24 : 16;
        boolean z = c0124c.n && (i & i10) != 0;
        for (int i11 = 0; i11 < afVar.b; i11++) {
            ae aeVarA = afVar.a(i11);
            int[] iArr2 = iArr[i11];
            int i12 = c0124c.f;
            int i13 = c0124c.g;
            int i14 = c0124c.h;
            int i15 = c0124c.j;
            int i16 = c0124c.k;
            boolean z3 = c0124c.l;
            if (aeVarA.a < 2) {
                iArrA = b;
            } else {
                List<Integer> listA = a(aeVarA, i15, i16, z3);
                if (listA.size() >= 2) {
                    if (z) {
                        list = listA;
                        i2 = i14;
                        i3 = i13;
                        i4 = i12;
                        str = null;
                    } else {
                        HashSet hashSet2 = new HashSet();
                        String str2 = null;
                        int iA = 0;
                        int i17 = 0;
                        while (i17 < listA.size()) {
                            String str3 = aeVarA.a(listA.get(i17).intValue()).h;
                            if (hashSet2.add(str3)) {
                                i5 = iA;
                                i6 = i17;
                                hashSet = hashSet2;
                                list2 = listA;
                                i7 = i14;
                                i8 = i13;
                                i9 = i12;
                                iA = a(aeVarA, iArr2, i10, str3, i12, i13, i7, list2);
                                if (iA > i5) {
                                    str2 = str3;
                                }
                                i17 = i6 + 1;
                                hashSet2 = hashSet;
                                listA = list2;
                                i14 = i7;
                                i13 = i8;
                                i12 = i9;
                            } else {
                                i5 = iA;
                                i6 = i17;
                                hashSet = hashSet2;
                                list2 = listA;
                                i7 = i14;
                                i8 = i13;
                                i9 = i12;
                            }
                            iA = i5;
                            i17 = i6 + 1;
                            hashSet2 = hashSet;
                            listA = list2;
                            i14 = i7;
                            i13 = i8;
                            i12 = i9;
                        }
                        list = listA;
                        i2 = i14;
                        i3 = i13;
                        i4 = i12;
                        str = str2;
                    }
                    b(aeVarA, iArr2, i10, str, i4, i3, i2, list);
                    if (list.size() >= 2) {
                        iArrA = com.anythink.expressad.exoplayer.k.af.a(list);
                    }
                }
            }
            if (iArrA.length > 0) {
                return ((f.a) com.anythink.expressad.exoplayer.k.a.a(aVar)).a(aeVarA, iArrA);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x008b A[SYNTHETIC] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static f b(af afVar, int[][] iArr, C0124c c0124c) {
        int i;
        ae aeVar = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < afVar.b; i4++) {
            ae aeVarA = afVar.a(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < aeVarA.a; i5++) {
                if (a(iArr2[i5], c0124c.p)) {
                    m mVarA = aeVarA.a(i5);
                    int i6 = mVarA.z & (~c0124c.e);
                    boolean z = (i6 & 1) != 0;
                    boolean z3 = (i6 & 2) != 0;
                    boolean zA = a(mVarA, c0124c.c);
                    if (zA) {
                        i = (z ? 8 : !z3 ? 6 : 4) + (zA ? 1 : 0);
                        if (a(iArr2[i5], false)) {
                            i += 1000;
                        }
                        if (i > i3) {
                            aeVar = aeVarA;
                            i2 = i5;
                            i3 = i;
                        }
                    } else {
                        if (c0124c.d) {
                            if (TextUtils.isEmpty(mVarA.A) || a(mVarA, com.anythink.expressad.exoplayer.b.ar)) {
                            }
                            if (a(iArr2[i5], false)) {
                            }
                            if (i > i3) {
                            }
                        }
                        if (z) {
                            i = 3;
                        } else if (z3) {
                            i = a(mVarA, c0124c.b) ? 2 : 1;
                        }
                        if (a(iArr2[i5], false)) {
                        }
                        if (i > i3) {
                        }
                    }
                }
            }
        }
        if (aeVar == null) {
            return null;
        }
        return new com.anythink.expressad.exoplayer.i.d(aeVar, i2);
    }

    @Deprecated
    private void b(int i) {
        a(d().a(i));
    }

    @Deprecated
    private void b(int i, boolean z) {
        a(d().a(i, z));
    }

    private static void b(ae aeVar, int[] iArr, int i, @Nullable String str, int i2, int i3, int i4, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int iIntValue = list.get(size).intValue();
            if (!a(aeVar.a(iIntValue), str, iArr[iIntValue], i, i2, i3, i4)) {
                list.remove(size);
            }
        }
    }

    private static int c(int i, int i2) {
        if (i > i2) {
            return 1;
        }
        return i2 > i ? -1 : 0;
    }

    private C0124c c() {
        return this.e.get();
    }

    @Nullable
    private static f c(af afVar, int[][] iArr, C0124c c0124c) {
        ae aeVar = null;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < afVar.b; i3++) {
            ae aeVarA = afVar.a(i3);
            int[] iArr2 = iArr[i3];
            for (int i4 = 0; i4 < aeVarA.a; i4++) {
                if (a(iArr2[i4], c0124c.p)) {
                    int i5 = (aeVarA.a(i4).z & 1) != 0 ? 2 : 1;
                    if (a(iArr2[i4], false)) {
                        i5 += 1000;
                    }
                    if (i5 > i2) {
                        aeVar = aeVarA;
                        i = i4;
                        i2 = i5;
                    }
                }
            }
        }
        if (aeVar == null) {
            return null;
        }
        return new com.anythink.expressad.exoplayer.i.d(aeVar, i);
    }

    @Deprecated
    private void c(int i) {
        a(d().b(i));
    }

    @Deprecated
    private void c(int i, af afVar) {
        a(d().a(i, afVar));
    }

    private d d() {
        return new d(c(), (byte) 0);
    }

    @Deprecated
    private void e() {
        a(d().a());
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fa A[LOOP:1: B:22:0x004b->B:50:0x00fa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0127  */
    @Override // com.anythink.expressad.exoplayer.i.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Pair<aa[], f[]> a(e.a aVar, int[][][] iArr, int[] iArr2) {
        e.a aVar2;
        int i;
        int i2;
        f[] fVarArr;
        int i3;
        boolean z;
        int i4;
        f fVarA;
        String str;
        int[] iArrA;
        HashSet hashSet;
        c cVar = this;
        e.a aVar3 = aVar;
        int[][][] iArr3 = iArr;
        C0124c c0124c = cVar.e.get();
        int iA = aVar.a();
        int iA2 = aVar.a();
        f[] fVarArr2 = new f[iA2];
        int i5 = 0;
        boolean z3 = false;
        boolean z4 = false;
        while (i5 < iA2) {
            if (2 == aVar3.a(i5)) {
                if (z3) {
                    i = iA;
                    i2 = iA2;
                    fVarArr = fVarArr2;
                    z = z4;
                    aVar2 = aVar;
                    i3 = i5;
                } else {
                    af afVarB = aVar3.b(i5);
                    int[][] iArr4 = iArr3[i5];
                    int i6 = iArr2[i5];
                    f.a aVar4 = cVar.d;
                    if (c0124c.m || aVar4 == null) {
                        i = iA;
                        i2 = iA2;
                        fVarArr = fVarArr2;
                        i4 = i5;
                        z = z4;
                        fVarA = null;
                        if (fVarA == null) {
                            fVarA = a(afVarB, iArr4, c0124c);
                        }
                        fVarArr[i4] = fVarA;
                        z3 = fVarArr[i4] == null;
                        i3 = i4;
                        aVar2 = aVar;
                    } else {
                        int i7 = c0124c.o ? 24 : 16;
                        boolean z5 = c0124c.n && (i6 & i7) != 0;
                        int i8 = 0;
                        while (i8 < afVarB.b) {
                            ae aeVarA = afVarB.a(i8);
                            int[] iArr5 = iArr4[i8];
                            i = iA;
                            int i9 = c0124c.f;
                            int i10 = c0124c.g;
                            int i11 = c0124c.h;
                            i2 = iA2;
                            int i12 = c0124c.j;
                            z = z4;
                            int i13 = c0124c.k;
                            boolean z6 = c0124c.l;
                            fVarArr = fVarArr2;
                            i4 = i5;
                            if (aeVarA.a < 2) {
                                iArrA = b;
                                if (iArrA.length <= 0) {
                                    fVarA = ((f.a) com.anythink.expressad.exoplayer.k.a.a(aVar4)).a(aeVarA, iArrA);
                                    break;
                                }
                                i8++;
                                iA = i;
                                iA2 = i2;
                                z4 = z;
                                fVarArr2 = fVarArr;
                                i5 = i4;
                            } else {
                                List<Integer> listA = a(aeVarA, i12, i13, z6);
                                if (listA.size() >= 2) {
                                    if (z5) {
                                        str = null;
                                    } else {
                                        HashSet hashSet2 = new HashSet();
                                        int i14 = 0;
                                        int i15 = 0;
                                        String str2 = null;
                                        while (i14 < listA.size()) {
                                            String str3 = aeVarA.a(listA.get(i14).intValue()).h;
                                            if (hashSet2.add(str3)) {
                                                hashSet = hashSet2;
                                                int iA3 = a(aeVarA, iArr5, i7, str3, i9, i10, i11, listA);
                                                if (iA3 > i15) {
                                                    i15 = iA3;
                                                    str2 = str3;
                                                }
                                            } else {
                                                hashSet = hashSet2;
                                            }
                                            i14++;
                                            hashSet2 = hashSet;
                                        }
                                        str = str2;
                                    }
                                    b(aeVarA, iArr5, i7, str, i9, i10, i11, listA);
                                    if (listA.size() >= 2) {
                                        iArrA = com.anythink.expressad.exoplayer.k.af.a(listA);
                                    }
                                    if (iArrA.length <= 0) {
                                    }
                                }
                            }
                        }
                        i = iA;
                        i2 = iA2;
                        fVarArr = fVarArr2;
                        i4 = i5;
                        z = z4;
                        fVarA = null;
                        if (fVarA == null) {
                        }
                        fVarArr[i4] = fVarA;
                        z3 = fVarArr[i4] == null;
                        i3 = i4;
                        aVar2 = aVar;
                    }
                }
                z4 = z | (aVar2.b(i3).b > 0);
            } else {
                aVar2 = aVar3;
                i = iA;
                i2 = iA2;
                fVarArr = fVarArr2;
                i3 = i5;
            }
            i5 = i3 + 1;
            iArr3 = iArr;
            aVar3 = aVar2;
            iA = i;
            iA2 = i2;
            fVarArr2 = fVarArr;
            cVar = this;
        }
        e.a aVar5 = aVar3;
        int i16 = iA;
        f[] fVarArr3 = fVarArr2;
        boolean z7 = z4;
        int i17 = iA2;
        boolean z8 = false;
        boolean z9 = false;
        for (int i18 = 0; i18 < i17; i18++) {
            int iA4 = aVar5.a(i18);
            if (iA4 == 1) {
                if (!z8) {
                    fVarArr3[i18] = a(aVar5.b(i18), iArr[i18], c0124c, z7 ? null : this.d);
                    z8 = fVarArr3[i18] != null;
                }
            } else if (iA4 != 2) {
                if (iA4 != 3) {
                    fVarArr3[i18] = c(aVar5.b(i18), iArr[i18], c0124c);
                } else if (!z9) {
                    fVarArr3[i18] = b(aVar5.b(i18), iArr[i18], c0124c);
                    z9 = fVarArr3[i18] != null;
                }
            }
        }
        for (int i19 = 0; i19 < i16; i19++) {
            if (c0124c.a(i19)) {
                fVarArr3[i19] = null;
            } else {
                af afVarB2 = aVar5.b(i19);
                if (c0124c.a(i19, afVarB2)) {
                    e eVarB = c0124c.b(i19, afVarB2);
                    if (eVarB == null) {
                        fVarArr3[i19] = null;
                    } else if (eVarB.c == 1) {
                        fVarArr3[i19] = new com.anythink.expressad.exoplayer.i.d(afVarB2.a(eVarB.a), eVarB.b[0]);
                    } else {
                        fVarArr3[i19] = ((f.a) com.anythink.expressad.exoplayer.k.a.a(this.d)).a(afVarB2.a(eVarB.a), eVarB.b);
                    }
                }
            }
        }
        aa[] aaVarArr = new aa[i16];
        for (int i20 = 0; i20 < i16; i20++) {
            aaVarArr[i20] = !c0124c.a(i20) && (aVar5.a(i20) == 5 || fVarArr3[i20] != null) ? aa.a : null;
        }
        a(aVar5, iArr, aaVarArr, fVarArr3, c0124c.q);
        return Pair.create(aaVarArr, fVarArr3);
    }
}

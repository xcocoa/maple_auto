package com.anythink.expressad.exoplayer.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.anythink.expressad.exoplayer.k.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f extends com.anythink.expressad.exoplayer.g.c.b {
    public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator<f>() { // from class: com.anythink.expressad.exoplayer.g.c.f.1
        private static f a(Parcel parcel) {
            return new f(parcel, (byte) 0);
        }

        private static f[] a(int i) {
            return new f[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ f createFromParcel(Parcel parcel) {
            return new f(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ f[] newArray(int i) {
            return new f[i];
        }
    };
    public final List<b> a;

    public static final class a {
        public final int a;
        public final long b;

        private a(int i, long j) {
            this.a = i;
            this.b = j;
        }

        public /* synthetic */ a(int i, long j, byte b) {
            this(i, j);
        }

        public static /* synthetic */ a a(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong());
        }

        public static /* synthetic */ void a(a aVar, Parcel parcel) {
            parcel.writeInt(aVar.a);
            parcel.writeLong(aVar.b);
        }

        private static a b(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong());
        }

        private void c(Parcel parcel) {
            parcel.writeInt(this.a);
            parcel.writeLong(this.b);
        }
    }

    public static final class b {
        public final long a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        public final long e;
        public final List<a> f;
        public final boolean g;
        public final long h;
        public final int i;
        public final int j;
        public final int k;

        private b(long j, boolean z, boolean z3, boolean z4, List<a> list, long j2, boolean z5, long j3, int i, int i2, int i3) {
            this.a = j;
            this.b = z;
            this.c = z3;
            this.d = z4;
            this.f = Collections.unmodifiableList(list);
            this.e = j2;
            this.g = z5;
            this.h = j3;
            this.i = i;
            this.j = i2;
            this.k = i3;
        }

        private b(Parcel parcel) {
            this.a = parcel.readLong();
            this.b = parcel.readByte() == 1;
            this.c = parcel.readByte() == 1;
            this.d = parcel.readByte() == 1;
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(a.a(parcel));
            }
            this.f = Collections.unmodifiableList(arrayList);
            this.e = parcel.readLong();
            this.g = parcel.readByte() == 1;
            this.h = parcel.readLong();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
        }

        public static /* synthetic */ b a(Parcel parcel) {
            return new b(parcel);
        }

        public static /* synthetic */ b a(s sVar) {
            ArrayList arrayList;
            long j;
            boolean z;
            boolean z3;
            int i;
            int i2;
            int iD;
            long j2;
            long jH;
            long jH2 = sVar.h();
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = (sVar.d() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z6) {
                arrayList = arrayList2;
                j = com.anythink.expressad.exoplayer.b.b;
                z = false;
                z3 = false;
                i = 0;
                i2 = 0;
                iD = 0;
                j2 = com.anythink.expressad.exoplayer.b.b;
            } else {
                int iD2 = sVar.d();
                boolean z7 = (iD2 & 128) != 0;
                z3 = (iD2 & 64) != 0;
                boolean z8 = (iD2 & 32) != 0;
                long jH3 = z3 ? sVar.h() : com.anythink.expressad.exoplayer.b.b;
                if (!z3) {
                    int iD3 = sVar.d();
                    ArrayList arrayList3 = new ArrayList(iD3);
                    for (int i3 = 0; i3 < iD3; i3++) {
                        arrayList3.add(new a(sVar.d(), sVar.h(), z4 ? (byte) 1 : (byte) 0));
                    }
                    arrayList2 = arrayList3;
                }
                if (z8) {
                    long jD = sVar.d();
                    boolean z9 = (128 & jD) != 0;
                    jH = ((((jD & 1) << 32) | sVar.h()) * 1000) / 90;
                    z5 = z9;
                } else {
                    jH = com.anythink.expressad.exoplayer.b.b;
                }
                int iE = sVar.e();
                int iD4 = sVar.d();
                j2 = jH;
                iD = sVar.d();
                arrayList = arrayList2;
                long j3 = jH3;
                i = iE;
                i2 = iD4;
                j = j3;
                boolean z10 = z7;
                z = z5;
                z4 = z10;
            }
            return new b(jH2, z6, z4, z3, arrayList, j, z, j2, i, i2, iD);
        }

        private static /* synthetic */ void a(b bVar, Parcel parcel) {
            parcel.writeLong(bVar.a);
            parcel.writeByte(bVar.b ? (byte) 1 : (byte) 0);
            parcel.writeByte(bVar.c ? (byte) 1 : (byte) 0);
            parcel.writeByte(bVar.d ? (byte) 1 : (byte) 0);
            int size = bVar.f.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                a.a(bVar.f.get(i), parcel);
            }
            parcel.writeLong(bVar.e);
            parcel.writeByte(bVar.g ? (byte) 1 : (byte) 0);
            parcel.writeLong(bVar.h);
            parcel.writeInt(bVar.i);
            parcel.writeInt(bVar.j);
            parcel.writeInt(bVar.k);
        }

        private static b b(s sVar) {
            ArrayList arrayList;
            long j;
            boolean z;
            boolean z3;
            int i;
            int i2;
            int iD;
            long j2;
            long jH;
            long jH2 = sVar.h();
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = (sVar.d() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z6) {
                arrayList = arrayList2;
                j = com.anythink.expressad.exoplayer.b.b;
                z = false;
                z3 = false;
                i = 0;
                i2 = 0;
                iD = 0;
                j2 = com.anythink.expressad.exoplayer.b.b;
            } else {
                int iD2 = sVar.d();
                boolean z7 = (iD2 & 128) != 0;
                z3 = (iD2 & 64) != 0;
                boolean z8 = (iD2 & 32) != 0;
                long jH3 = z3 ? sVar.h() : com.anythink.expressad.exoplayer.b.b;
                if (!z3) {
                    int iD3 = sVar.d();
                    ArrayList arrayList3 = new ArrayList(iD3);
                    for (int i3 = 0; i3 < iD3; i3++) {
                        arrayList3.add(new a(sVar.d(), sVar.h(), z4 ? (byte) 1 : (byte) 0));
                    }
                    arrayList2 = arrayList3;
                }
                if (z8) {
                    long jD = sVar.d();
                    boolean z9 = (128 & jD) != 0;
                    jH = ((((jD & 1) << 32) | sVar.h()) * 1000) / 90;
                    z5 = z9;
                } else {
                    jH = com.anythink.expressad.exoplayer.b.b;
                }
                int iE = sVar.e();
                int iD4 = sVar.d();
                j2 = jH;
                iD = sVar.d();
                arrayList = arrayList2;
                long j3 = jH3;
                i = iE;
                i2 = iD4;
                j = j3;
                boolean z10 = z7;
                z = z5;
                z4 = z10;
            }
            return new b(jH2, z6, z4, z3, arrayList, j, z, j2, i, i2, iD);
        }

        private void b(Parcel parcel) {
            parcel.writeLong(this.a);
            parcel.writeByte(this.b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
            int size = this.f.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                a.a(this.f.get(i), parcel);
            }
            parcel.writeLong(this.e);
            parcel.writeByte(this.g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.h);
            parcel.writeInt(this.i);
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
        }

        private static b c(Parcel parcel) {
            return new b(parcel);
        }
    }

    private f(Parcel parcel) {
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(b.a(parcel));
        }
        this.a = Collections.unmodifiableList(arrayList);
    }

    public /* synthetic */ f(Parcel parcel, byte b2) {
        this(parcel);
    }

    private f(List<b> list) {
        this.a = Collections.unmodifiableList(list);
    }

    public static f a(s sVar) {
        int iD = sVar.d();
        ArrayList arrayList = new ArrayList(iD);
        for (int i = 0; i < iD; i++) {
            arrayList.add(b.a(sVar));
        }
        return new f(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int size = this.a.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.a.get(i2);
            parcel.writeLong(bVar.a);
            parcel.writeByte(bVar.b ? (byte) 1 : (byte) 0);
            parcel.writeByte(bVar.c ? (byte) 1 : (byte) 0);
            parcel.writeByte(bVar.d ? (byte) 1 : (byte) 0);
            int size2 = bVar.f.size();
            parcel.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                a.a(bVar.f.get(i3), parcel);
            }
            parcel.writeLong(bVar.e);
            parcel.writeByte(bVar.g ? (byte) 1 : (byte) 0);
            parcel.writeLong(bVar.h);
            parcel.writeInt(bVar.i);
            parcel.writeInt(bVar.j);
            parcel.writeInt(bVar.k);
        }
    }
}

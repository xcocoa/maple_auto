package com.anythink.expressad.exoplayer.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.anythink.expressad.exoplayer.k.ac;
import com.anythink.expressad.exoplayer.k.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.anythink.expressad.exoplayer.g.c.d.1
        private static d a(Parcel parcel) {
            return new d(parcel, (byte) 0);
        }

        private static d[] a(int i) {
            return new d[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ d createFromParcel(Parcel parcel) {
            return new d(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ d[] newArray(int i) {
            return new d[i];
        }
    };
    public final long a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final long f;
    public final long g;
    public final List<a> h;
    public final boolean i;
    public final long j;
    public final int k;
    public final int l;
    public final int m;

    public static final class a {
        public final int a;
        public final long b;
        public final long c;

        private a(int i, long j, long j2) {
            this.a = i;
            this.b = j;
            this.c = j2;
        }

        public /* synthetic */ a(int i, long j, long j2, byte b) {
            this(i, j, j2);
        }

        public static a a(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        private void b(Parcel parcel) {
            parcel.writeInt(this.a);
            parcel.writeLong(this.b);
            parcel.writeLong(this.c);
        }
    }

    private d(long j, boolean z, boolean z3, boolean z4, boolean z5, long j2, long j3, List<a> list, boolean z6, long j4, int i, int i2, int i3) {
        this.a = j;
        this.b = z;
        this.c = z3;
        this.d = z4;
        this.e = z5;
        this.f = j2;
        this.g = j3;
        this.h = Collections.unmodifiableList(list);
        this.i = z6;
        this.j = j4;
        this.k = i;
        this.l = i2;
        this.m = i3;
    }

    private d(Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readByte() == 1;
        this.c = parcel.readByte() == 1;
        this.d = parcel.readByte() == 1;
        this.e = parcel.readByte() == 1;
        this.f = parcel.readLong();
        this.g = parcel.readLong();
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(a.a(parcel));
        }
        this.h = Collections.unmodifiableList(arrayList);
        this.i = parcel.readByte() == 1;
        this.j = parcel.readLong();
        this.k = parcel.readInt();
        this.l = parcel.readInt();
        this.m = parcel.readInt();
    }

    public /* synthetic */ d(Parcel parcel, byte b) {
        this(parcel);
    }

    public static d a(s sVar, long j, ac acVar) {
        List list;
        boolean z;
        boolean z3;
        long j2;
        boolean z4;
        long j3;
        int iE;
        int iD;
        int iD2;
        boolean z5;
        boolean z6;
        long jH;
        long jH2 = sVar.h();
        boolean z7 = (sVar.d() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z7) {
            list = listEmptyList;
            z = false;
            z3 = false;
            j2 = com.anythink.expressad.exoplayer.b.b;
            z4 = false;
            j3 = com.anythink.expressad.exoplayer.b.b;
            iE = 0;
            iD = 0;
            iD2 = 0;
            z5 = false;
        } else {
            int iD3 = sVar.d();
            boolean z8 = (iD3 & 128) != 0;
            boolean z9 = (iD3 & 64) != 0;
            boolean z10 = (iD3 & 32) != 0;
            boolean z11 = (iD3 & 16) != 0;
            long jA = (!z9 || z11) ? com.anythink.expressad.exoplayer.b.b : g.a(sVar, j);
            if (!z9) {
                int iD4 = sVar.d();
                ArrayList arrayList = new ArrayList(iD4);
                for (int i = 0; i < iD4; i++) {
                    int iD5 = sVar.d();
                    long jA2 = !z11 ? g.a(sVar, j) : com.anythink.expressad.exoplayer.b.b;
                    arrayList.add(new a(iD5, jA2, acVar.a(jA2), (byte) 0));
                }
                listEmptyList = arrayList;
            }
            if (z10) {
                long jD = sVar.d();
                boolean z12 = (128 & jD) != 0;
                jH = ((((jD & 1) << 32) | sVar.h()) * 1000) / 90;
                z6 = z12;
            } else {
                z6 = false;
                jH = com.anythink.expressad.exoplayer.b.b;
            }
            iE = sVar.e();
            z5 = z9;
            iD = sVar.d();
            iD2 = sVar.d();
            list = listEmptyList;
            long j4 = jA;
            z4 = z6;
            j3 = jH;
            z3 = z11;
            z = z8;
            j2 = j4;
        }
        return new d(jH2, z7, z, z5, z3, j2, acVar.a(j2), list, z4, j3, iE, iD, iD2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeByte(this.b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f);
        parcel.writeLong(this.g);
        int size = this.h.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = this.h.get(i2);
            parcel.writeInt(aVar.a);
            parcel.writeLong(aVar.b);
            parcel.writeLong(aVar.c);
        }
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.j);
        parcel.writeInt(this.k);
        parcel.writeInt(this.l);
        parcel.writeInt(this.m);
    }
}

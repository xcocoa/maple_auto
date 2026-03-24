package com.anythink.expressad.exoplayer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.k.af;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class m implements Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new Parcelable.Creator<m>() { // from class: com.anythink.expressad.exoplayer.m.1
        private static m a(Parcel parcel) {
            return new m(parcel);
        }

        private static m[] a(int i) {
            return new m[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ m createFromParcel(Parcel parcel) {
            return new m(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ m[] newArray(int i) {
            return new m[i];
        }
    };
    public static final int a = -1;
    public static final long b = Long.MAX_VALUE;

    @Nullable
    public final String A;
    public final int B;
    private int C;

    @Nullable
    public final String c;
    public final int d;

    @Nullable
    public final String e;

    @Nullable
    public final com.anythink.expressad.exoplayer.g.a f;

    @Nullable
    public final String g;

    @Nullable
    public final String h;
    public final int i;
    public final List<byte[]> j;

    @Nullable
    public final com.anythink.expressad.exoplayer.d.e k;
    public final long l;
    public final int m;
    public final int n;
    public final float o;
    public final int p;
    public final float q;
    public final int r;

    @Nullable
    public final byte[] s;

    @Nullable
    public final com.anythink.expressad.exoplayer.l.b t;
    public final int u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;

    public m(Parcel parcel) {
        this.c = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.e = parcel.readString();
        this.d = parcel.readInt();
        this.i = parcel.readInt();
        this.m = parcel.readInt();
        this.n = parcel.readInt();
        this.o = parcel.readFloat();
        this.p = parcel.readInt();
        this.q = parcel.readFloat();
        this.s = af.a(parcel) ? parcel.createByteArray() : null;
        this.r = parcel.readInt();
        this.t = (com.anythink.expressad.exoplayer.l.b) parcel.readParcelable(com.anythink.expressad.exoplayer.l.b.class.getClassLoader());
        this.u = parcel.readInt();
        this.v = parcel.readInt();
        this.w = parcel.readInt();
        this.x = parcel.readInt();
        this.y = parcel.readInt();
        this.z = parcel.readInt();
        this.A = parcel.readString();
        this.B = parcel.readInt();
        this.l = parcel.readLong();
        int i = parcel.readInt();
        this.j = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.j.add(parcel.createByteArray());
        }
        this.k = (com.anythink.expressad.exoplayer.d.e) parcel.readParcelable(com.anythink.expressad.exoplayer.d.e.class.getClassLoader());
        this.f = (com.anythink.expressad.exoplayer.g.a) parcel.readParcelable(com.anythink.expressad.exoplayer.g.a.class.getClassLoader());
    }

    private m(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, @Nullable byte[] bArr, int i6, @Nullable com.anythink.expressad.exoplayer.l.b bVar, int i7, int i8, int i9, int i10, int i11, int i12, @Nullable String str5, int i13, long j, @Nullable List<byte[]> list, @Nullable com.anythink.expressad.exoplayer.d.e eVar, @Nullable com.anythink.expressad.exoplayer.g.a aVar) {
        this.c = str;
        this.g = str2;
        this.h = str3;
        this.e = str4;
        this.d = i;
        this.i = i2;
        this.m = i3;
        this.n = i4;
        this.o = f;
        int i14 = i5;
        this.p = i14 == -1 ? 0 : i14;
        this.q = f2 == -1.0f ? 1.0f : f2;
        this.s = bArr;
        this.r = i6;
        this.t = bVar;
        this.u = i7;
        this.v = i8;
        this.w = i9;
        int i15 = i10;
        this.x = i15 == -1 ? 0 : i15;
        this.y = i11 != -1 ? i11 : 0;
        this.z = i12;
        this.A = str5;
        this.B = i13;
        this.l = j;
        this.j = list == null ? Collections.emptyList() : list;
        this.k = eVar;
        this.f = aVar;
    }

    public static m a(@Nullable String str, @Nullable String str2) {
        return new m(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, null, null);
    }

    private static m a(@Nullable String str, String str2, int i, @Nullable String str3) {
        return a(str, str2, (String) null, -1, i, str3, -1, (com.anythink.expressad.exoplayer.d.e) null, Long.MAX_VALUE, (List<byte[]>) Collections.emptyList());
    }

    private static m a(@Nullable String str, String str2, int i, @Nullable String str3, @Nullable com.anythink.expressad.exoplayer.d.e eVar) {
        return a(str, str2, (String) null, -1, i, str3, -1, eVar, Long.MAX_VALUE, (List<byte[]>) Collections.emptyList());
    }

    public static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, @Nullable com.anythink.expressad.exoplayer.l.b bVar, @Nullable com.anythink.expressad.exoplayer.d.e eVar) {
        return new m(str, null, str2, str3, i, i2, i3, i4, f, i5, f2, bArr, i6, bVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, eVar, null);
    }

    private static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, @Nullable com.anythink.expressad.exoplayer.d.e eVar) {
        return a(str, str2, str3, i, i2, i3, i4, f, list, -1, -1.0f, null, -1, null, eVar);
    }

    private m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, @Nullable String str4) {
        return new m(str, this.g, str2, str3, i, this.i, i2, i3, this.o, this.p, this.q, this.s, this.r, this.t, this.u, this.v, this.w, this.x, this.y, i4, str4, this.B, this.l, this.j, this.k, this.f);
    }

    public static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, List<byte[]> list, @Nullable com.anythink.expressad.exoplayer.d.e eVar, @Nullable String str4) {
        return a(str, str2, str3, i, i2, i3, i4, list, eVar, str4, null);
    }

    private static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, List<byte[]> list, @Nullable com.anythink.expressad.exoplayer.d.e eVar, @Nullable String str4, @Nullable com.anythink.expressad.exoplayer.g.a aVar) {
        return new m(str, null, str2, str3, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i2, i3, i4, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, eVar, aVar);
    }

    public static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, List<byte[]> list, @Nullable com.anythink.expressad.exoplayer.d.e eVar, @Nullable String str4) {
        return a(str, str2, str3, i, i2, i3, -1, list, eVar, str4);
    }

    private static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, @Nullable String str4, int i3, @Nullable com.anythink.expressad.exoplayer.d.e eVar) {
        return a(str, str2, str3, i, i2, str4, i3, eVar, Long.MAX_VALUE, (List<byte[]>) Collections.emptyList());
    }

    public static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, @Nullable String str4, int i3, @Nullable com.anythink.expressad.exoplayer.d.e eVar, long j, List<byte[]> list) {
        return new m(str, null, str2, str3, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, i3, j, list, eVar, null);
    }

    private static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, @Nullable String str4, @Nullable com.anythink.expressad.exoplayer.d.e eVar, long j) {
        return a(str, str2, str3, i, i2, str4, -1, eVar, j, (List<byte[]>) Collections.emptyList());
    }

    private static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, List<byte[]> list, @Nullable String str4, @Nullable com.anythink.expressad.exoplayer.d.e eVar) {
        return new m(str, null, str2, str3, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, Long.MAX_VALUE, list, eVar, null);
    }

    public static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable com.anythink.expressad.exoplayer.d.e eVar) {
        return new m(str, null, str2, str3, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, eVar, null);
    }

    private static m a(@Nullable String str, @Nullable String str2, String str3, String str4, int i, int i2, int i3, float f, List<byte[]> list, int i4) {
        return new m(str, str2, str3, str4, i, -1, i2, i3, f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i4, null, -1, Long.MAX_VALUE, list, null, null);
    }

    private static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i, int i2, int i3, List<byte[]> list, int i4, @Nullable String str5) {
        return new m(str, str2, str3, str4, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i2, i3, -1, -1, -1, i4, str5, -1, Long.MAX_VALUE, list, null, null);
    }

    private static m a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i, int i2, @Nullable String str5) {
        return new m(str, str2, str3, str4, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str5, -1, Long.MAX_VALUE, null, null, null);
    }

    private m b(int i) {
        return new m(this.c, this.g, this.h, this.e, this.d, this.i, this.m, this.n, this.o, i, this.q, this.s, this.r, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.l, this.j, this.k, this.f);
    }

    private static m b(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, @Nullable com.anythink.expressad.exoplayer.d.e eVar) {
        return a(str, str2, str3, i, i2, i3, i4, f, list, -1, -1.0f, null, -1, null, eVar);
    }

    private static m b(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i, int i2, @Nullable String str5) {
        return new m(str, str2, str3, str4, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str5, -1, Long.MAX_VALUE, null, null, null);
    }

    private static m c(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i, int i2, @Nullable String str5) {
        return new m(str, str2, str3, str4, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str5, -1, Long.MAX_VALUE, null, null, null);
    }

    public static String c(m mVar) {
        if (mVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(mVar.c);
        sb.append(", mimeType=");
        sb.append(mVar.h);
        if (mVar.d != -1) {
            sb.append(", bitrate=");
            sb.append(mVar.d);
        }
        if (mVar.m != -1 && mVar.n != -1) {
            sb.append(", res=");
            sb.append(mVar.m);
            sb.append("x");
            sb.append(mVar.n);
        }
        if (mVar.o != -1.0f) {
            sb.append(", fps=");
            sb.append(mVar.o);
        }
        if (mVar.u != -1) {
            sb.append(", channels=");
            sb.append(mVar.u);
        }
        if (mVar.v != -1) {
            sb.append(", sample_rate=");
            sb.append(mVar.v);
        }
        if (mVar.A != null) {
            sb.append(", language=");
            sb.append(mVar.A);
        }
        return sb.toString();
    }

    public final int a() {
        int i;
        int i2 = this.m;
        if (i2 == -1 || (i = this.n) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final m a(int i) {
        return new m(this.c, this.g, this.h, this.e, this.d, i, this.m, this.n, this.o, this.p, this.q, this.s, this.r, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.l, this.j, this.k, this.f);
    }

    public final m a(int i, int i2) {
        return new m(this.c, this.g, this.h, this.e, this.d, this.i, this.m, this.n, this.o, this.p, this.q, this.s, this.r, this.t, this.u, this.v, this.w, i, i2, this.z, this.A, this.B, this.l, this.j, this.k, this.f);
    }

    public final m a(long j) {
        return new m(this.c, this.g, this.h, this.e, this.d, this.i, this.m, this.n, this.o, this.p, this.q, this.s, this.r, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, j, this.j, this.k, this.f);
    }

    public final m a(@Nullable com.anythink.expressad.exoplayer.d.e eVar) {
        return new m(this.c, this.g, this.h, this.e, this.d, this.i, this.m, this.n, this.o, this.p, this.q, this.s, this.r, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.l, this.j, eVar, this.f);
    }

    public final m a(@Nullable com.anythink.expressad.exoplayer.g.a aVar) {
        return new m(this.c, this.g, this.h, this.e, this.d, this.i, this.m, this.n, this.o, this.p, this.q, this.s, this.r, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.l, this.j, this.k, aVar);
    }

    public final m a(m mVar) {
        if (this == mVar) {
            return this;
        }
        String str = mVar.c;
        String str2 = this.e;
        if (str2 == null) {
            str2 = mVar.e;
        }
        String str3 = str2;
        int i = this.d;
        if (i == -1) {
            i = mVar.d;
        }
        int i2 = i;
        float f = this.o;
        if (f == -1.0f) {
            f = mVar.o;
        }
        float f2 = f;
        int i3 = this.z | mVar.z;
        String str4 = this.A;
        if (str4 == null) {
            str4 = mVar.A;
        }
        return new m(str, this.g, this.h, str3, i2, this.i, this.m, this.n, f2, this.p, this.q, this.s, this.r, this.t, this.u, this.v, this.w, this.x, this.y, i3, str4, this.B, this.l, this.j, com.anythink.expressad.exoplayer.d.e.a(mVar.k, this.k), this.f);
    }

    public final boolean b(m mVar) {
        if (this.j.size() != mVar.j.size()) {
            return false;
        }
        for (int i = 0; i < this.j.size(); i++) {
            if (!Arrays.equals(this.j.get(i), mVar.j.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && m.class == obj.getClass()) {
            m mVar = (m) obj;
            if (this.d == mVar.d && this.i == mVar.i && this.m == mVar.m && this.n == mVar.n && this.o == mVar.o && this.p == mVar.p && this.q == mVar.q && this.r == mVar.r && this.u == mVar.u && this.v == mVar.v && this.w == mVar.w && this.x == mVar.x && this.y == mVar.y && this.l == mVar.l && this.z == mVar.z && af.a((Object) this.c, (Object) mVar.c) && af.a((Object) this.A, (Object) mVar.A) && this.B == mVar.B && af.a((Object) this.g, (Object) mVar.g) && af.a((Object) this.h, (Object) mVar.h) && af.a((Object) this.e, (Object) mVar.e) && af.a(this.k, mVar.k) && af.a(this.f, mVar.f) && af.a(this.t, mVar.t) && Arrays.equals(this.s, mVar.s) && b(mVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.C == 0) {
            String str = this.c;
            int iHashCode = ((str == null ? 0 : str.hashCode()) + 527) * 31;
            String str2 = this.g;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.h;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.e;
            int iHashCode4 = (((((((((((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.d) * 31) + this.m) * 31) + this.n) * 31) + this.u) * 31) + this.v) * 31;
            String str5 = this.A;
            int iHashCode5 = (((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.B) * 31;
            com.anythink.expressad.exoplayer.d.e eVar = this.k;
            int iHashCode6 = (iHashCode5 + (eVar == null ? 0 : eVar.hashCode())) * 31;
            com.anythink.expressad.exoplayer.g.a aVar = this.f;
            this.C = iHashCode6 + (aVar != null ? aVar.hashCode() : 0);
        }
        return this.C;
    }

    public final String toString() {
        return "Format(" + this.c + ", " + this.g + ", " + this.h + ", " + this.d + ", " + this.A + ", [" + this.m + ", " + this.n + ", " + this.o + "], [" + this.u + ", " + this.v + "])";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.e);
        parcel.writeInt(this.d);
        parcel.writeInt(this.i);
        parcel.writeInt(this.m);
        parcel.writeInt(this.n);
        parcel.writeFloat(this.o);
        parcel.writeInt(this.p);
        parcel.writeFloat(this.q);
        af.a(parcel, this.s != null);
        byte[] bArr = this.s;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.r);
        parcel.writeParcelable(this.t, i);
        parcel.writeInt(this.u);
        parcel.writeInt(this.v);
        parcel.writeInt(this.w);
        parcel.writeInt(this.x);
        parcel.writeInt(this.y);
        parcel.writeInt(this.z);
        parcel.writeString(this.A);
        parcel.writeInt(this.B);
        parcel.writeLong(this.l);
        int size = this.j.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.j.get(i2));
        }
        parcel.writeParcelable(this.k, 0);
        parcel.writeParcelable(this.f, 0);
    }
}

package com.anythink.expressad.exoplayer.j.a;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.j.a.a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    private static final int c = 2;
    private static final int d = Integer.MAX_VALUE;
    public final int a;
    public final String b;
    private boolean g;
    private l f = l.b;
    private final TreeSet<n> e = new TreeSet<>();

    public g(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public static g a(int i, DataInputStream dataInputStream) throws IOException {
        g gVar = new g(dataInputStream.readInt(), dataInputStream.readUTF());
        if (i < 2) {
            long j = dataInputStream.readLong();
            k kVar = new k();
            j.a(kVar, j);
            gVar.a(kVar);
        } else {
            gVar.f = l.a(dataInputStream);
        }
        return gVar;
    }

    public final int a(int i) {
        int i2;
        int iHashCode;
        int iHashCode2 = (this.a * 31) + this.b.hashCode();
        if (i < 2) {
            long jA = j.a(this.f);
            i2 = iHashCode2 * 31;
            iHashCode = (int) (jA ^ (jA >>> 32));
        } else {
            i2 = iHashCode2 * 31;
            iHashCode = this.f.hashCode();
        }
        return i2 + iHashCode;
    }

    public final long a(long j, long j2) {
        n nVarA = a(j);
        if (nVarA.b()) {
            return -Math.min(nVarA.a() ? Long.MAX_VALUE : nVarA.c, j2);
        }
        long j3 = j + j2;
        long jMax = nVarA.b + nVarA.c;
        if (jMax < j3) {
            for (n nVar : this.e.tailSet(nVarA, false)) {
                long j4 = nVar.b;
                if (j4 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, j4 + nVar.c);
                if (jMax >= j3) {
                    break;
                }
            }
        }
        return Math.min(jMax - j, j2);
    }

    public final i a() {
        return this.f;
    }

    public final n a(long j) {
        n nVarA = n.a(this.b, j);
        n nVarFloor = this.e.floor(nVarA);
        if (nVarFloor != null && nVarFloor.b + nVarFloor.c > j) {
            return nVarFloor;
        }
        n nVarCeiling = this.e.ceiling(nVarA);
        return nVarCeiling == null ? n.b(this.b, j) : n.a(this.b, j, nVarCeiling.b - j);
    }

    public final void a(n nVar) {
        this.e.add(nVar);
    }

    public final void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeUTF(this.b);
        this.f.a(dataOutputStream);
    }

    public final void a(boolean z) {
        this.g = z;
    }

    public final boolean a(e eVar) {
        if (!this.e.remove(eVar)) {
            return false;
        }
        eVar.e.delete();
        return true;
    }

    public final boolean a(k kVar) {
        l lVar = this.f;
        l lVarA = lVar.a(kVar);
        this.f = lVarA;
        return !lVarA.equals(lVar);
    }

    public final n b(n nVar) throws a.C0126a {
        com.anythink.expressad.exoplayer.k.a.b(this.e.remove(nVar));
        n nVarA = nVar.a(this.a);
        if (nVar.e.renameTo(nVarA.e)) {
            this.e.add(nVarA);
            return nVarA;
        }
        throw new a.C0126a("Renaming of " + nVar.e + " to " + nVarA.e + " failed.");
    }

    public final boolean b() {
        return this.g;
    }

    public final TreeSet<n> c() {
        return this.e;
    }

    public final boolean d() {
        return this.e.isEmpty();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && g.class == obj.getClass()) {
            g gVar = (g) obj;
            if (this.a == gVar.a && this.b.equals(gVar.b) && this.e.equals(gVar.e) && this.f.equals(gVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (a(Integer.MAX_VALUE) * 31) + this.e.hashCode();
    }
}

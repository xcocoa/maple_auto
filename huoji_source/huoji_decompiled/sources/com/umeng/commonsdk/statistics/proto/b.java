package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.aa;
import com.umeng.commonsdk.proguard.ag;
import com.umeng.commonsdk.proguard.ah;
import com.umeng.commonsdk.proguard.am;
import com.umeng.commonsdk.proguard.an;
import com.umeng.commonsdk.proguard.at;
import com.umeng.commonsdk.proguard.au;
import com.umeng.commonsdk.proguard.az;
import com.umeng.commonsdk.proguard.ba;
import com.umeng.commonsdk.proguard.bc;
import com.umeng.commonsdk.proguard.be;
import com.umeng.commonsdk.proguard.bf;
import com.umeng.commonsdk.proguard.bh;
import com.umeng.commonsdk.proguard.bi;
import com.umeng.commonsdk.proguard.bj;
import com.umeng.commonsdk.proguard.bk;
import com.umeng.commonsdk.proguard.bl;
import com.umeng.commonsdk.proguard.x;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b implements aa<b, e>, Serializable, Cloneable {
    public static final Map<e, am> d;
    private static final long e = -6496538196005191531L;
    private static final be f = new be("IdSnapshot");
    private static final au g = new au("identity", (byte) 11, 1);
    private static final au h = new au("ts", (byte) 10, 2);
    private static final au i = new au("version", (byte) 8, 3);
    private static final Map<Class<? extends bh>, bi> j;
    private static final int k = 0;
    private static final int l = 1;
    public String a;
    public long b;
    public int c;
    private byte m;

    public static class a extends bj<b> {
        private a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b(az azVar, b bVar) throws ag {
            azVar.j();
            while (true) {
                au auVarL = azVar.l();
                byte b = auVarL.b;
                if (b == 0) {
                    break;
                }
                short s = auVarL.c;
                if (s != 1) {
                    if (s != 2) {
                        if (s == 3 && b == 8) {
                            bVar.c = azVar.w();
                            bVar.c(true);
                        } else {
                            bc.a(azVar, b);
                        }
                    } else if (b == 10) {
                        bVar.b = azVar.x();
                        bVar.b(true);
                    }
                } else if (b == 11) {
                    bVar.a = azVar.z();
                    bVar.a(true);
                }
                azVar.m();
            }
            azVar.k();
            if (!bVar.g()) {
                throw new ba("Required field 'ts' was not found in serialized data! Struct: " + toString());
            }
            if (bVar.j()) {
                bVar.k();
                return;
            }
            throw new ba("Required field 'version' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(az azVar, b bVar) throws ag {
            bVar.k();
            azVar.a(b.f);
            if (bVar.a != null) {
                azVar.a(b.g);
                azVar.a(bVar.a);
                azVar.c();
            }
            azVar.a(b.h);
            azVar.a(bVar.b);
            azVar.c();
            azVar.a(b.i);
            azVar.a(bVar.c);
            azVar.c();
            azVar.d();
            azVar.b();
        }
    }

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.proto.b$b, reason: collision with other inner class name */
    public static class C0239b implements bi {
        private C0239b() {
        }

        @Override // com.umeng.commonsdk.proguard.bi
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    public static class c extends bk<b> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void a(az azVar, b bVar) throws ag {
            bf bfVar = (bf) azVar;
            bfVar.a(bVar.a);
            bfVar.a(bVar.b);
            bfVar.a(bVar.c);
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void b(az azVar, b bVar) throws ag {
            bf bfVar = (bf) azVar;
            bVar.a = bfVar.z();
            bVar.a(true);
            bVar.b = bfVar.x();
            bVar.b(true);
            bVar.c = bfVar.w();
            bVar.c(true);
        }
    }

    public static class d implements bi {
        private d() {
        }

        @Override // com.umeng.commonsdk.proguard.bi
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    public enum e implements ah {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, "version");

        private static final Map<String, e> d = new HashMap();
        private final short e;
        private final String f;

        static {
            for (e eVar : EnumSet.allOf(e.class)) {
                d.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.e = s;
            this.f = str;
        }

        public static e a(int i) {
            if (i == 1) {
                return IDENTITY;
            }
            if (i == 2) {
                return TS;
            }
            if (i != 3) {
                return null;
            }
            return VERSION;
        }

        public static e a(String str) {
            return d.get(str);
        }

        public static e b(int i) {
            e eVarA = a(i);
            if (eVarA != null) {
                return eVarA;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.ah
        public short a() {
            return this.e;
        }

        @Override // com.umeng.commonsdk.proguard.ah
        public String b() {
            return this.f;
        }
    }

    static {
        HashMap map = new HashMap();
        j = map;
        map.put(bj.class, new C0239b());
        map.put(bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.IDENTITY, new am("identity", (byte) 1, new an((byte) 11)));
        enumMap.put(e.TS, new am("ts", (byte) 1, new an((byte) 10)));
        enumMap.put(e.VERSION, new am("version", (byte) 1, new an((byte) 8)));
        Map<e, am> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        d = mapUnmodifiableMap;
        am.a(b.class, mapUnmodifiableMap);
    }

    public b() {
        this.m = (byte) 0;
    }

    public b(b bVar) {
        this.m = (byte) 0;
        this.m = bVar.m;
        if (bVar.d()) {
            this.a = bVar.a;
        }
        this.b = bVar.b;
        this.c = bVar.c;
    }

    public b(String str, long j2, int i2) {
        this();
        this.a = str;
        this.b = j2;
        b(true);
        this.c = i2;
        c(true);
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.m = (byte) 0;
            read(new at(new bl(objectInputStream)));
        } catch (ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new at(new bl(objectOutputStream)));
        } catch (ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.commonsdk.proguard.aa
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b deepCopy() {
        return new b(this);
    }

    public b a(int i2) {
        this.c = i2;
        c(true);
        return this;
    }

    public b a(long j2) {
        this.b = j2;
        b(true);
        return this;
    }

    public b a(String str) {
        this.a = str;
        return this;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    @Override // com.umeng.commonsdk.proguard.aa
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public String b() {
        return this.a;
    }

    public void b(boolean z) {
        this.m = x.a(this.m, 0, z);
    }

    public void c() {
        this.a = null;
    }

    public void c(boolean z) {
        this.m = x.a(this.m, 1, z);
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void clear() {
        this.a = null;
        b(false);
        this.b = 0L;
        c(false);
        this.c = 0;
    }

    public boolean d() {
        return this.a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.m = x.b(this.m, 0);
    }

    public boolean g() {
        return x.a(this.m, 0);
    }

    public int h() {
        return this.c;
    }

    public void i() {
        this.m = x.b(this.m, 1);
    }

    public boolean j() {
        return x.a(this.m, 1);
    }

    public void k() throws ag {
        if (this.a != null) {
            return;
        }
        throw new ba("Required field 'identity' was not present! Struct: " + toString());
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void read(az azVar) throws ag {
        j.get(azVar.D()).b().b(azVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdSnapshot(");
        sb.append("identity:");
        String str = this.a;
        if (str == null) {
            str = "null";
        }
        sb.append(str);
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("version:");
        sb.append(this.c);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void write(az azVar) throws ag {
        j.get(azVar.D()).b().a(azVar, this);
    }
}

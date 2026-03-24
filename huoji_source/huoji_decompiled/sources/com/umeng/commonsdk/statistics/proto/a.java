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
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a implements aa<a, e>, Serializable, Cloneable {
    public static final Map<e, am> e;
    private static final long f = 9132678615281394583L;
    private static final be g = new be("IdJournal");
    private static final au h = new au("domain", (byte) 11, 1);
    private static final au i = new au("old_id", (byte) 11, 2);
    private static final au j = new au("new_id", (byte) 11, 3);
    private static final au k = new au("ts", (byte) 10, 4);
    private static final Map<Class<? extends bh>, bi> l;
    private static final int m = 0;
    public String a;
    public String b;
    public String c;
    public long d;
    private byte n;
    private e[] o;

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.proto.a$a, reason: collision with other inner class name */
    public static class C0238a extends bj<a> {
        private C0238a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b(az azVar, a aVar) throws ag {
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
                        if (s != 3) {
                            if (s == 4 && b == 10) {
                                aVar.d = azVar.x();
                                aVar.d(true);
                            } else {
                                bc.a(azVar, b);
                            }
                        } else if (b == 11) {
                            aVar.c = azVar.z();
                            aVar.c(true);
                        }
                    } else if (b == 11) {
                        aVar.b = azVar.z();
                        aVar.b(true);
                    }
                } else if (b == 11) {
                    aVar.a = azVar.z();
                    aVar.a(true);
                }
                azVar.m();
            }
            azVar.k();
            if (aVar.m()) {
                aVar.n();
                return;
            }
            throw new ba("Required field 'ts' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(az azVar, a aVar) throws ag {
            aVar.n();
            azVar.a(a.g);
            if (aVar.a != null) {
                azVar.a(a.h);
                azVar.a(aVar.a);
                azVar.c();
            }
            if (aVar.b != null && aVar.g()) {
                azVar.a(a.i);
                azVar.a(aVar.b);
                azVar.c();
            }
            if (aVar.c != null) {
                azVar.a(a.j);
                azVar.a(aVar.c);
                azVar.c();
            }
            azVar.a(a.k);
            azVar.a(aVar.d);
            azVar.c();
            azVar.d();
            azVar.b();
        }
    }

    public static class b implements bi {
        private b() {
        }

        @Override // com.umeng.commonsdk.proguard.bi
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0238a b() {
            return new C0238a();
        }
    }

    public static class c extends bk<a> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void a(az azVar, a aVar) throws ag {
            bf bfVar = (bf) azVar;
            bfVar.a(aVar.a);
            bfVar.a(aVar.c);
            bfVar.a(aVar.d);
            BitSet bitSet = new BitSet();
            if (aVar.g()) {
                bitSet.set(0);
            }
            bfVar.a(bitSet, 1);
            if (aVar.g()) {
                bfVar.a(aVar.b);
            }
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void b(az azVar, a aVar) throws ag {
            bf bfVar = (bf) azVar;
            aVar.a = bfVar.z();
            aVar.a(true);
            aVar.c = bfVar.z();
            aVar.c(true);
            aVar.d = bfVar.x();
            aVar.d(true);
            if (bfVar.b(1).get(0)) {
                aVar.b = bfVar.z();
                aVar.b(true);
            }
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
        DOMAIN(1, "domain"),
        OLD_ID(2, "old_id"),
        NEW_ID(3, "new_id"),
        TS(4, "ts");

        private static final Map<String, e> e = new HashMap();
        private final short f;
        private final String g;

        static {
            for (e eVar : EnumSet.allOf(e.class)) {
                e.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f = s;
            this.g = str;
        }

        public static e a(int i) {
            if (i == 1) {
                return DOMAIN;
            }
            if (i == 2) {
                return OLD_ID;
            }
            if (i == 3) {
                return NEW_ID;
            }
            if (i != 4) {
                return null;
            }
            return TS;
        }

        public static e a(String str) {
            return e.get(str);
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
            return this.f;
        }

        @Override // com.umeng.commonsdk.proguard.ah
        public String b() {
            return this.g;
        }
    }

    static {
        HashMap map = new HashMap();
        l = map;
        map.put(bj.class, new b());
        map.put(bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.DOMAIN, new am("domain", (byte) 1, new an((byte) 11)));
        enumMap.put(e.OLD_ID, new am("old_id", (byte) 2, new an((byte) 11)));
        enumMap.put(e.NEW_ID, new am("new_id", (byte) 1, new an((byte) 11)));
        enumMap.put(e.TS, new am("ts", (byte) 1, new an((byte) 10)));
        Map<e, am> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        e = mapUnmodifiableMap;
        am.a(a.class, mapUnmodifiableMap);
    }

    public a() {
        this.n = (byte) 0;
        this.o = new e[]{e.OLD_ID};
    }

    public a(a aVar) {
        this.n = (byte) 0;
        this.o = new e[]{e.OLD_ID};
        this.n = aVar.n;
        if (aVar.d()) {
            this.a = aVar.a;
        }
        if (aVar.g()) {
            this.b = aVar.b;
        }
        if (aVar.j()) {
            this.c = aVar.c;
        }
        this.d = aVar.d;
    }

    public a(String str, String str2, long j2) {
        this();
        this.a = str;
        this.c = str2;
        this.d = j2;
        d(true);
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.n = (byte) 0;
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
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    @Override // com.umeng.commonsdk.proguard.aa
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a deepCopy() {
        return new a(this);
    }

    public a a(long j2) {
        this.d = j2;
        d(true);
        return this;
    }

    public a a(String str) {
        this.a = str;
        return this;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public a b(String str) {
        this.b = str;
        return this;
    }

    public String b() {
        return this.a;
    }

    public void b(boolean z) {
        if (z) {
            return;
        }
        this.b = null;
    }

    public a c(String str) {
        this.c = str;
        return this;
    }

    public void c() {
        this.a = null;
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.c = null;
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void clear() {
        this.a = null;
        this.b = null;
        this.c = null;
        d(false);
        this.d = 0L;
    }

    public void d(boolean z) {
        this.n = x.a(this.n, 0, z);
    }

    public boolean d() {
        return this.a != null;
    }

    public String e() {
        return this.b;
    }

    public void f() {
        this.b = null;
    }

    public boolean g() {
        return this.b != null;
    }

    public String h() {
        return this.c;
    }

    public void i() {
        this.c = null;
    }

    public boolean j() {
        return this.c != null;
    }

    public long k() {
        return this.d;
    }

    public void l() {
        this.n = x.b(this.n, 0);
    }

    public boolean m() {
        return x.a(this.n, 0);
    }

    public void n() throws ag {
        if (this.a == null) {
            throw new ba("Required field 'domain' was not present! Struct: " + toString());
        }
        if (this.c != null) {
            return;
        }
        throw new ba("Required field 'new_id' was not present! Struct: " + toString());
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void read(az azVar) throws ag {
        l.get(azVar.D()).b().b(azVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdJournal(");
        sb.append("domain:");
        String str = this.a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (g()) {
            sb.append(", ");
            sb.append("old_id:");
            String str2 = this.b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(", ");
        sb.append("new_id:");
        String str3 = this.c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.d);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void write(az azVar) throws ag {
        l.get(azVar.D()).b().a(azVar, this);
    }
}

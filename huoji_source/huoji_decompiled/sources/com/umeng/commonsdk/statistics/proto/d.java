package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.aa;
import com.umeng.commonsdk.proguard.ag;
import com.umeng.commonsdk.proguard.ah;
import com.umeng.commonsdk.proguard.am;
import com.umeng.commonsdk.proguard.an;
import com.umeng.commonsdk.proguard.ap;
import com.umeng.commonsdk.proguard.ar;
import com.umeng.commonsdk.proguard.at;
import com.umeng.commonsdk.proguard.au;
import com.umeng.commonsdk.proguard.aw;
import com.umeng.commonsdk.proguard.az;
import com.umeng.commonsdk.proguard.ba;
import com.umeng.commonsdk.proguard.bc;
import com.umeng.commonsdk.proguard.be;
import com.umeng.commonsdk.proguard.bf;
import com.umeng.commonsdk.proguard.bg;
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
public class d implements aa<d, e>, Serializable, Cloneable {
    public static final Map<e, am> d;
    private static final long e = 2846460275012375038L;
    private static final be f = new be("Imprint");
    private static final au g = new au("property", bg.k, 1);
    private static final au h = new au("version", (byte) 8, 2);
    private static final au i = new au("checksum", (byte) 11, 3);
    private static final Map<Class<? extends bh>, bi> j;
    private static final int k = 0;
    public Map<String, com.umeng.commonsdk.statistics.proto.e> a;
    public int b;
    public String c;
    private byte l;

    public static class a extends bj<d> {
        private a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b(az azVar, d dVar) throws ag {
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
                        if (s == 3 && b == 11) {
                            dVar.c = azVar.z();
                            dVar.c(true);
                        } else {
                            bc.a(azVar, b);
                        }
                    } else if (b == 8) {
                        dVar.b = azVar.w();
                        dVar.b(true);
                    }
                } else if (b == 13) {
                    aw awVarN = azVar.n();
                    dVar.a = new HashMap(awVarN.c * 2);
                    for (int i = 0; i < awVarN.c; i++) {
                        String strZ = azVar.z();
                        com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                        eVar.read(azVar);
                        dVar.a.put(strZ, eVar);
                    }
                    azVar.o();
                    dVar.a(true);
                }
                azVar.m();
            }
            azVar.k();
            if (dVar.h()) {
                dVar.l();
                return;
            }
            throw new ba("Required field 'version' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(az azVar, d dVar) throws ag {
            dVar.l();
            azVar.a(d.f);
            if (dVar.a != null) {
                azVar.a(d.g);
                azVar.a(new aw((byte) 11, (byte) 12, dVar.a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.a.entrySet()) {
                    azVar.a(entry.getKey());
                    entry.getValue().write(azVar);
                }
                azVar.e();
                azVar.c();
            }
            azVar.a(d.h);
            azVar.a(dVar.b);
            azVar.c();
            if (dVar.c != null) {
                azVar.a(d.i);
                azVar.a(dVar.c);
                azVar.c();
            }
            azVar.d();
            azVar.b();
        }
    }

    public static class b implements bi {
        private b() {
        }

        @Override // com.umeng.commonsdk.proguard.bi
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    public static class c extends bk<d> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void a(az azVar, d dVar) throws ag {
            bf bfVar = (bf) azVar;
            bfVar.a(dVar.a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.a.entrySet()) {
                bfVar.a(entry.getKey());
                entry.getValue().write(bfVar);
            }
            bfVar.a(dVar.b);
            bfVar.a(dVar.c);
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void b(az azVar, d dVar) throws ag {
            bf bfVar = (bf) azVar;
            aw awVar = new aw((byte) 11, (byte) 12, bfVar.w());
            dVar.a = new HashMap(awVar.c * 2);
            for (int i = 0; i < awVar.c; i++) {
                String strZ = bfVar.z();
                com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                eVar.read(bfVar);
                dVar.a.put(strZ, eVar);
            }
            dVar.a(true);
            dVar.b = bfVar.w();
            dVar.b(true);
            dVar.c = bfVar.z();
            dVar.c(true);
        }
    }

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.proto.d$d, reason: collision with other inner class name */
    public static class C0241d implements bi {
        private C0241d() {
        }

        @Override // com.umeng.commonsdk.proguard.bi
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    public enum e implements ah {
        PROPERTY(1, "property"),
        VERSION(2, "version"),
        CHECKSUM(3, "checksum");

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
                return PROPERTY;
            }
            if (i == 2) {
                return VERSION;
            }
            if (i != 3) {
                return null;
            }
            return CHECKSUM;
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
        map.put(bj.class, new b());
        map.put(bk.class, new C0241d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.PROPERTY, new am("property", (byte) 1, new ap(bg.k, new an((byte) 11), new ar((byte) 12, com.umeng.commonsdk.statistics.proto.e.class))));
        enumMap.put(e.VERSION, new am("version", (byte) 1, new an((byte) 8)));
        enumMap.put(e.CHECKSUM, new am("checksum", (byte) 1, new an((byte) 11)));
        Map<e, am> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        d = mapUnmodifiableMap;
        am.a(d.class, mapUnmodifiableMap);
    }

    public d() {
        this.l = (byte) 0;
    }

    public d(d dVar) {
        this.l = (byte) 0;
        this.l = dVar.l;
        if (dVar.e()) {
            HashMap map = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.a.entrySet()) {
                map.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.e(entry.getValue()));
            }
            this.a = map;
        }
        this.b = dVar.b;
        if (dVar.k()) {
            this.c = dVar.c;
        }
    }

    public d(Map<String, com.umeng.commonsdk.statistics.proto.e> map, int i2, String str) {
        this();
        this.a = map;
        this.b = i2;
        b(true);
        this.c = str;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.l = (byte) 0;
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
    public d deepCopy() {
        return new d(this);
    }

    public d a(int i2) {
        this.b = i2;
        b(true);
        return this;
    }

    public d a(String str) {
        this.c = str;
        return this;
    }

    public d a(Map<String, com.umeng.commonsdk.statistics.proto.e> map) {
        this.a = map;
        return this;
    }

    public void a(String str, com.umeng.commonsdk.statistics.proto.e eVar) {
        if (this.a == null) {
            this.a = new HashMap();
        }
        this.a.put(str, eVar);
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    @Override // com.umeng.commonsdk.proguard.aa
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public void b(boolean z) {
        this.l = x.a(this.l, 0, z);
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.e> c() {
        return this.a;
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
        b(false);
        this.b = 0;
        this.c = null;
    }

    public void d() {
        this.a = null;
    }

    public boolean e() {
        return this.a != null;
    }

    public int f() {
        return this.b;
    }

    public void g() {
        this.l = x.b(this.l, 0);
    }

    public boolean h() {
        return x.a(this.l, 0);
    }

    public String i() {
        return this.c;
    }

    public void j() {
        this.c = null;
    }

    public boolean k() {
        return this.c != null;
    }

    public void l() throws ag {
        if (this.a == null) {
            throw new ba("Required field 'property' was not present! Struct: " + toString());
        }
        if (this.c != null) {
            return;
        }
        throw new ba("Required field 'checksum' was not present! Struct: " + toString());
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void read(az azVar) throws ag {
        j.get(azVar.D()).b().b(azVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Imprint(");
        sb.append("property:");
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.a;
        if (map == null) {
            sb.append("null");
        } else {
            sb.append(map);
        }
        sb.append(", ");
        sb.append("version:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("checksum:");
        String str = this.c;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void write(az azVar) throws ag {
        j.get(azVar.D()).b().a(azVar, this);
    }
}

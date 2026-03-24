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
public class e implements aa<e, EnumC0242e>, Serializable, Cloneable {
    public static final Map<EnumC0242e, am> d;
    private static final long e = 7501688097813630241L;
    private static final be f = new be("ImprintValue");
    private static final au g = new au("value", (byte) 11, 1);
    private static final au h = new au("ts", (byte) 10, 2);
    private static final au i = new au("guid", (byte) 11, 3);
    private static final Map<Class<? extends bh>, bi> j;
    private static final int k = 0;
    public String a;
    public long b;
    public String c;
    private byte l;
    private EnumC0242e[] m;

    public static class a extends bj<e> {
        private a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b(az azVar, e eVar) throws ag {
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
                            eVar.c = azVar.z();
                            eVar.c(true);
                        } else {
                            bc.a(azVar, b);
                        }
                    } else if (b == 10) {
                        eVar.b = azVar.x();
                        eVar.b(true);
                    }
                } else if (b == 11) {
                    eVar.a = azVar.z();
                    eVar.a(true);
                }
                azVar.m();
            }
            azVar.k();
            if (eVar.g()) {
                eVar.k();
                return;
            }
            throw new ba("Required field 'ts' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(az azVar, e eVar) throws ag {
            eVar.k();
            azVar.a(e.f);
            if (eVar.a != null && eVar.d()) {
                azVar.a(e.g);
                azVar.a(eVar.a);
                azVar.c();
            }
            azVar.a(e.h);
            azVar.a(eVar.b);
            azVar.c();
            if (eVar.c != null) {
                azVar.a(e.i);
                azVar.a(eVar.c);
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

    public static class c extends bk<e> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void a(az azVar, e eVar) throws ag {
            bf bfVar = (bf) azVar;
            bfVar.a(eVar.b);
            bfVar.a(eVar.c);
            BitSet bitSet = new BitSet();
            if (eVar.d()) {
                bitSet.set(0);
            }
            bfVar.a(bitSet, 1);
            if (eVar.d()) {
                bfVar.a(eVar.a);
            }
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void b(az azVar, e eVar) throws ag {
            bf bfVar = (bf) azVar;
            eVar.b = bfVar.x();
            eVar.b(true);
            eVar.c = bfVar.z();
            eVar.c(true);
            if (bfVar.b(1).get(0)) {
                eVar.a = bfVar.z();
                eVar.a(true);
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

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.proto.e$e, reason: collision with other inner class name */
    public enum EnumC0242e implements ah {
        VALUE(1, "value"),
        TS(2, "ts"),
        GUID(3, "guid");

        private static final Map<String, EnumC0242e> d = new HashMap();
        private final short e;
        private final String f;

        static {
            for (EnumC0242e enumC0242e : EnumSet.allOf(EnumC0242e.class)) {
                d.put(enumC0242e.b(), enumC0242e);
            }
        }

        EnumC0242e(short s, String str) {
            this.e = s;
            this.f = str;
        }

        public static EnumC0242e a(int i) {
            if (i == 1) {
                return VALUE;
            }
            if (i == 2) {
                return TS;
            }
            if (i != 3) {
                return null;
            }
            return GUID;
        }

        public static EnumC0242e a(String str) {
            return d.get(str);
        }

        public static EnumC0242e b(int i) {
            EnumC0242e enumC0242eA = a(i);
            if (enumC0242eA != null) {
                return enumC0242eA;
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
        map.put(bk.class, new d());
        EnumMap enumMap = new EnumMap(EnumC0242e.class);
        enumMap.put(EnumC0242e.VALUE, new am("value", (byte) 2, new an((byte) 11)));
        enumMap.put(EnumC0242e.TS, new am("ts", (byte) 1, new an((byte) 10)));
        enumMap.put(EnumC0242e.GUID, new am("guid", (byte) 1, new an((byte) 11)));
        Map<EnumC0242e, am> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        d = mapUnmodifiableMap;
        am.a(e.class, mapUnmodifiableMap);
    }

    public e() {
        this.l = (byte) 0;
        this.m = new EnumC0242e[]{EnumC0242e.VALUE};
    }

    public e(long j2, String str) {
        this();
        this.b = j2;
        b(true);
        this.c = str;
    }

    public e(e eVar) {
        this.l = (byte) 0;
        this.m = new EnumC0242e[]{EnumC0242e.VALUE};
        this.l = eVar.l;
        if (eVar.d()) {
            this.a = eVar.a;
        }
        this.b = eVar.b;
        if (eVar.j()) {
            this.c = eVar.c;
        }
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
    public EnumC0242e fieldForId(int i2) {
        return EnumC0242e.a(i2);
    }

    @Override // com.umeng.commonsdk.proguard.aa
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e deepCopy() {
        return new e(this);
    }

    public e a(long j2) {
        this.b = j2;
        b(true);
        return this;
    }

    public e a(String str) {
        this.a = str;
        return this;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public e b(String str) {
        this.c = str;
        return this;
    }

    public String b() {
        return this.a;
    }

    public void b(boolean z) {
        this.l = x.a(this.l, 0, z);
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
        b(false);
        this.b = 0L;
        this.c = null;
    }

    public boolean d() {
        return this.a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.l = x.b(this.l, 0);
    }

    public boolean g() {
        return x.a(this.l, 0);
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

    public void k() throws ag {
        if (this.c != null) {
            return;
        }
        throw new ba("Required field 'guid' was not present! Struct: " + toString());
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void read(az azVar) throws ag {
        j.get(azVar.D()).b().b(azVar, this);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("ImprintValue(");
        if (d()) {
            sb.append("value:");
            String str = this.a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("guid:");
        String str2 = this.c;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void write(az azVar) throws ag {
        j.get(azVar.D()).b().a(azVar, this);
    }
}

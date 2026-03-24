package com.umeng.commonsdk.stateless;

import com.sun.mail.imap.IMAPStore;
import com.umeng.commonsdk.proguard.aa;
import com.umeng.commonsdk.proguard.ab;
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
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b implements aa<b, e>, Serializable, Cloneable {
    private static final int A = 2;
    private static final int B = 3;
    public static final Map<e, am> k;
    private static final long l = 420342210744516016L;
    private static final be m = new be("UMSLEnvelope");
    private static final au n = new au("version", (byte) 11, 1);
    private static final au o = new au(IMAPStore.ID_ADDRESS, (byte) 11, 2);
    private static final au p = new au("signature", (byte) 11, 3);
    private static final au q = new au("serial_num", (byte) 8, 4);
    private static final au r = new au("ts_secs", (byte) 8, 5);
    private static final au s = new au("length", (byte) 8, 6);
    private static final au t = new au("entity", (byte) 11, 7);
    private static final au u = new au("guid", (byte) 11, 8);
    private static final au v = new au("checksum", (byte) 11, 9);
    private static final au w = new au("codex", (byte) 8, 10);
    private static final Map<Class<? extends bh>, bi> x;
    private static final int y = 0;
    private static final int z = 1;
    private byte C;
    private e[] D;
    public String a;
    public String b;
    public String c;
    public int d;
    public int e;
    public int f;
    public ByteBuffer g;
    public String h;
    public String i;
    public int j;

    public static class a extends bj<b> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(az azVar, b bVar) throws ag {
            azVar.j();
            while (true) {
                au auVarL = azVar.l();
                byte b = auVarL.b;
                if (b == 0) {
                    azVar.k();
                    if (!bVar.m()) {
                        throw new ba("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                    }
                    if (!bVar.p()) {
                        throw new ba("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    if (bVar.s()) {
                        bVar.G();
                        return;
                    }
                    throw new ba("Required field 'length' was not found in serialized data! Struct: " + toString());
                }
                switch (auVarL.c) {
                    case 1:
                        if (b == 11) {
                            bVar.a = azVar.z();
                            bVar.a(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 2:
                        if (b == 11) {
                            bVar.b = azVar.z();
                            bVar.b(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 3:
                        if (b == 11) {
                            bVar.c = azVar.z();
                            bVar.c(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 4:
                        if (b == 8) {
                            bVar.d = azVar.w();
                            bVar.d(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 5:
                        if (b == 8) {
                            bVar.e = azVar.w();
                            bVar.e(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 6:
                        if (b == 8) {
                            bVar.f = azVar.w();
                            bVar.f(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 7:
                        if (b == 11) {
                            bVar.g = azVar.A();
                            bVar.g(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 8:
                        if (b == 11) {
                            bVar.h = azVar.z();
                            bVar.h(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 9:
                        if (b == 11) {
                            bVar.i = azVar.z();
                            bVar.i(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 10:
                        if (b == 8) {
                            bVar.j = azVar.w();
                            bVar.j(true);
                            continue;
                        }
                        azVar.m();
                        break;
                }
                bc.a(azVar, b);
                azVar.m();
            }
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(az azVar, b bVar) throws ag {
            bVar.G();
            azVar.a(b.m);
            if (bVar.a != null) {
                azVar.a(b.n);
                azVar.a(bVar.a);
                azVar.c();
            }
            if (bVar.b != null) {
                azVar.a(b.o);
                azVar.a(bVar.b);
                azVar.c();
            }
            if (bVar.c != null) {
                azVar.a(b.p);
                azVar.a(bVar.c);
                azVar.c();
            }
            azVar.a(b.q);
            azVar.a(bVar.d);
            azVar.c();
            azVar.a(b.r);
            azVar.a(bVar.e);
            azVar.c();
            azVar.a(b.s);
            azVar.a(bVar.f);
            azVar.c();
            if (bVar.g != null) {
                azVar.a(b.t);
                azVar.a(bVar.g);
                azVar.c();
            }
            if (bVar.h != null) {
                azVar.a(b.u);
                azVar.a(bVar.h);
                azVar.c();
            }
            if (bVar.i != null) {
                azVar.a(b.v);
                azVar.a(bVar.i);
                azVar.c();
            }
            if (bVar.F()) {
                azVar.a(b.w);
                azVar.a(bVar.j);
                azVar.c();
            }
            azVar.d();
            azVar.b();
        }
    }

    /* JADX INFO: renamed from: com.umeng.commonsdk.stateless.b$b, reason: collision with other inner class name */
    public static class C0235b implements bi {
        private C0235b() {
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
            bfVar.a(bVar.d);
            bfVar.a(bVar.e);
            bfVar.a(bVar.f);
            bfVar.a(bVar.g);
            bfVar.a(bVar.h);
            bfVar.a(bVar.i);
            BitSet bitSet = new BitSet();
            if (bVar.F()) {
                bitSet.set(0);
            }
            bfVar.a(bitSet, 1);
            if (bVar.F()) {
                bfVar.a(bVar.j);
            }
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void b(az azVar, b bVar) throws ag {
            bf bfVar = (bf) azVar;
            bVar.a = bfVar.z();
            bVar.a(true);
            bVar.b = bfVar.z();
            bVar.b(true);
            bVar.c = bfVar.z();
            bVar.c(true);
            bVar.d = bfVar.w();
            bVar.d(true);
            bVar.e = bfVar.w();
            bVar.e(true);
            bVar.f = bfVar.w();
            bVar.f(true);
            bVar.g = bfVar.A();
            bVar.g(true);
            bVar.h = bfVar.z();
            bVar.h(true);
            bVar.i = bfVar.z();
            bVar.i(true);
            if (bfVar.b(1).get(0)) {
                bVar.j = bfVar.w();
                bVar.j(true);
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
        VERSION(1, "version"),
        ADDRESS(2, IMAPStore.ID_ADDRESS),
        SIGNATURE(3, "signature"),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, "length"),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");

        private static final Map<String, e> k = new HashMap();
        private final short l;
        private final String m;

        static {
            for (e eVar : EnumSet.allOf(e.class)) {
                k.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.l = s;
            this.m = str;
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return VERSION;
                case 2:
                    return ADDRESS;
                case 3:
                    return SIGNATURE;
                case 4:
                    return SERIAL_NUM;
                case 5:
                    return TS_SECS;
                case 6:
                    return LENGTH;
                case 7:
                    return ENTITY;
                case 8:
                    return GUID;
                case 9:
                    return CHECKSUM;
                case 10:
                    return CODEX;
                default:
                    return null;
            }
        }

        public static e a(String str) {
            return k.get(str);
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
            return this.l;
        }

        @Override // com.umeng.commonsdk.proguard.ah
        public String b() {
            return this.m;
        }
    }

    static {
        HashMap map = new HashMap();
        x = map;
        map.put(bj.class, new C0235b());
        map.put(bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.VERSION, new am("version", (byte) 1, new an((byte) 11)));
        enumMap.put(e.ADDRESS, new am(IMAPStore.ID_ADDRESS, (byte) 1, new an((byte) 11)));
        enumMap.put(e.SIGNATURE, new am("signature", (byte) 1, new an((byte) 11)));
        enumMap.put(e.SERIAL_NUM, new am("serial_num", (byte) 1, new an((byte) 8)));
        enumMap.put(e.TS_SECS, new am("ts_secs", (byte) 1, new an((byte) 8)));
        enumMap.put(e.LENGTH, new am("length", (byte) 1, new an((byte) 8)));
        enumMap.put(e.ENTITY, new am("entity", (byte) 1, new an((byte) 11, true)));
        enumMap.put(e.GUID, new am("guid", (byte) 1, new an((byte) 11)));
        enumMap.put(e.CHECKSUM, new am("checksum", (byte) 1, new an((byte) 11)));
        enumMap.put(e.CODEX, new am("codex", (byte) 2, new an((byte) 8)));
        Map<e, am> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        k = mapUnmodifiableMap;
        am.a(b.class, mapUnmodifiableMap);
    }

    public b() {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
    }

    public b(b bVar) {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
        this.C = bVar.C;
        if (bVar.d()) {
            this.a = bVar.a;
        }
        if (bVar.g()) {
            this.b = bVar.b;
        }
        if (bVar.j()) {
            this.c = bVar.c;
        }
        this.d = bVar.d;
        this.e = bVar.e;
        this.f = bVar.f;
        if (bVar.w()) {
            this.g = ab.d(bVar.g);
        }
        if (bVar.z()) {
            this.h = bVar.h;
        }
        if (bVar.C()) {
            this.i = bVar.i;
        }
        this.j = bVar.j;
    }

    public b(String str, String str2, String str3, int i, int i2, int i3, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        d(true);
        this.e = i2;
        e(true);
        this.f = i3;
        f(true);
        this.g = byteBuffer;
        this.h = str4;
        this.i = str5;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.C = (byte) 0;
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

    public String A() {
        return this.i;
    }

    public void B() {
        this.i = null;
    }

    public boolean C() {
        return this.i != null;
    }

    public int D() {
        return this.j;
    }

    public void E() {
        this.C = x.b(this.C, 3);
    }

    public boolean F() {
        return x.a(this.C, 3);
    }

    public void G() throws ag {
        if (this.a == null) {
            throw new ba("Required field 'version' was not present! Struct: " + toString());
        }
        if (this.b == null) {
            throw new ba("Required field 'address' was not present! Struct: " + toString());
        }
        if (this.c == null) {
            throw new ba("Required field 'signature' was not present! Struct: " + toString());
        }
        if (this.g == null) {
            throw new ba("Required field 'entity' was not present! Struct: " + toString());
        }
        if (this.h == null) {
            throw new ba("Required field 'guid' was not present! Struct: " + toString());
        }
        if (this.i != null) {
            return;
        }
        throw new ba("Required field 'checksum' was not present! Struct: " + toString());
    }

    @Override // com.umeng.commonsdk.proguard.aa
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b deepCopy() {
        return new b(this);
    }

    public b a(int i) {
        this.d = i;
        d(true);
        return this;
    }

    public b a(String str) {
        this.a = str;
        return this;
    }

    public b a(ByteBuffer byteBuffer) {
        this.g = byteBuffer;
        return this;
    }

    public b a(byte[] bArr) {
        a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    public void a(boolean z3) {
        if (z3) {
            return;
        }
        this.a = null;
    }

    public b b(int i) {
        this.e = i;
        e(true);
        return this;
    }

    public b b(String str) {
        this.b = str;
        return this;
    }

    public String b() {
        return this.a;
    }

    public void b(boolean z3) {
        if (z3) {
            return;
        }
        this.b = null;
    }

    public b c(int i) {
        this.f = i;
        f(true);
        return this;
    }

    public b c(String str) {
        this.c = str;
        return this;
    }

    public void c() {
        this.a = null;
    }

    public void c(boolean z3) {
        if (z3) {
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
        this.d = 0;
        e(false);
        this.e = 0;
        f(false);
        this.f = 0;
        this.g = null;
        this.h = null;
        this.i = null;
        j(false);
        this.j = 0;
    }

    public b d(int i) {
        this.j = i;
        j(true);
        return this;
    }

    public b d(String str) {
        this.h = str;
        return this;
    }

    public void d(boolean z3) {
        this.C = x.a(this.C, 0, z3);
    }

    public boolean d() {
        return this.a != null;
    }

    @Override // com.umeng.commonsdk.proguard.aa
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i) {
        return e.a(i);
    }

    public b e(String str) {
        this.i = str;
        return this;
    }

    public String e() {
        return this.b;
    }

    public void e(boolean z3) {
        this.C = x.a(this.C, 1, z3);
    }

    public void f() {
        this.b = null;
    }

    public void f(boolean z3) {
        this.C = x.a(this.C, 2, z3);
    }

    public void g(boolean z3) {
        if (z3) {
            return;
        }
        this.g = null;
    }

    public boolean g() {
        return this.b != null;
    }

    public String h() {
        return this.c;
    }

    public void h(boolean z3) {
        if (z3) {
            return;
        }
        this.h = null;
    }

    public void i() {
        this.c = null;
    }

    public void i(boolean z3) {
        if (z3) {
            return;
        }
        this.i = null;
    }

    public void j(boolean z3) {
        this.C = x.a(this.C, 3, z3);
    }

    public boolean j() {
        return this.c != null;
    }

    public int k() {
        return this.d;
    }

    public void l() {
        this.C = x.b(this.C, 0);
    }

    public boolean m() {
        return x.a(this.C, 0);
    }

    public int n() {
        return this.e;
    }

    public void o() {
        this.C = x.b(this.C, 1);
    }

    public boolean p() {
        return x.a(this.C, 1);
    }

    public int q() {
        return this.f;
    }

    public void r() {
        this.C = x.b(this.C, 2);
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void read(az azVar) throws ag {
        x.get(azVar.D()).b().b(azVar, this);
    }

    public boolean s() {
        return x.a(this.C, 2);
    }

    public byte[] t() {
        a(ab.c(this.g));
        ByteBuffer byteBuffer = this.g;
        if (byteBuffer == null) {
            return null;
        }
        return byteBuffer.array();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMSLEnvelope(");
        sb.append("version:");
        String str = this.a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("address:");
        String str2 = this.b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("signature:");
        String str3 = this.c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f);
        sb.append(", ");
        sb.append("entity:");
        ByteBuffer byteBuffer = this.g;
        if (byteBuffer == null) {
            sb.append("null");
        } else {
            ab.a(byteBuffer, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        String str4 = this.h;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        sb.append(", ");
        sb.append("checksum:");
        String str5 = this.i;
        if (str5 == null) {
            sb.append("null");
        } else {
            sb.append(str5);
        }
        if (F()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.j);
        }
        sb.append(")");
        return sb.toString();
    }

    public ByteBuffer u() {
        return this.g;
    }

    public void v() {
        this.g = null;
    }

    public boolean w() {
        return this.g != null;
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void write(az azVar) throws ag {
        x.get(azVar.D()).b().a(azVar, this);
    }

    public String x() {
        return this.h;
    }

    public void y() {
        this.h = null;
    }

    public boolean z() {
        return this.h != null;
    }
}

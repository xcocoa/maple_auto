package com.umeng.commonsdk.proguard;

import com.sun.mail.imap.IMAPStore;
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
public class w implements aa<w, e>, Serializable, Cloneable {
    private static final int A = 2;
    private static final int B = 3;
    public static final Map<e, am> k;
    private static final long l = 420342210744516016L;
    private static final be m = new be("UMEnvelope");
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

    public static class a extends bj<w> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(az azVar, w wVar) throws ag {
            azVar.j();
            while (true) {
                au auVarL = azVar.l();
                byte b = auVarL.b;
                if (b == 0) {
                    azVar.k();
                    if (!wVar.m()) {
                        throw new ba("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                    }
                    if (!wVar.p()) {
                        throw new ba("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    if (wVar.s()) {
                        wVar.G();
                        return;
                    }
                    throw new ba("Required field 'length' was not found in serialized data! Struct: " + toString());
                }
                switch (auVarL.c) {
                    case 1:
                        if (b == 11) {
                            wVar.a = azVar.z();
                            wVar.a(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 2:
                        if (b == 11) {
                            wVar.b = azVar.z();
                            wVar.b(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 3:
                        if (b == 11) {
                            wVar.c = azVar.z();
                            wVar.c(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 4:
                        if (b == 8) {
                            wVar.d = azVar.w();
                            wVar.d(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 5:
                        if (b == 8) {
                            wVar.e = azVar.w();
                            wVar.e(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 6:
                        if (b == 8) {
                            wVar.f = azVar.w();
                            wVar.f(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 7:
                        if (b == 11) {
                            wVar.g = azVar.A();
                            wVar.g(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 8:
                        if (b == 11) {
                            wVar.h = azVar.z();
                            wVar.h(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 9:
                        if (b == 11) {
                            wVar.i = azVar.z();
                            wVar.i(true);
                            continue;
                        }
                        azVar.m();
                        break;
                    case 10:
                        if (b == 8) {
                            wVar.j = azVar.w();
                            wVar.j(true);
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
        public void a(az azVar, w wVar) throws ag {
            wVar.G();
            azVar.a(w.m);
            if (wVar.a != null) {
                azVar.a(w.n);
                azVar.a(wVar.a);
                azVar.c();
            }
            if (wVar.b != null) {
                azVar.a(w.o);
                azVar.a(wVar.b);
                azVar.c();
            }
            if (wVar.c != null) {
                azVar.a(w.p);
                azVar.a(wVar.c);
                azVar.c();
            }
            azVar.a(w.q);
            azVar.a(wVar.d);
            azVar.c();
            azVar.a(w.r);
            azVar.a(wVar.e);
            azVar.c();
            azVar.a(w.s);
            azVar.a(wVar.f);
            azVar.c();
            if (wVar.g != null) {
                azVar.a(w.t);
                azVar.a(wVar.g);
                azVar.c();
            }
            if (wVar.h != null) {
                azVar.a(w.u);
                azVar.a(wVar.h);
                azVar.c();
            }
            if (wVar.i != null) {
                azVar.a(w.v);
                azVar.a(wVar.i);
                azVar.c();
            }
            if (wVar.F()) {
                azVar.a(w.w);
                azVar.a(wVar.j);
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

    public static class c extends bk<w> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void a(az azVar, w wVar) throws ag {
            bf bfVar = (bf) azVar;
            bfVar.a(wVar.a);
            bfVar.a(wVar.b);
            bfVar.a(wVar.c);
            bfVar.a(wVar.d);
            bfVar.a(wVar.e);
            bfVar.a(wVar.f);
            bfVar.a(wVar.g);
            bfVar.a(wVar.h);
            bfVar.a(wVar.i);
            BitSet bitSet = new BitSet();
            if (wVar.F()) {
                bitSet.set(0);
            }
            bfVar.a(bitSet, 1);
            if (wVar.F()) {
                bfVar.a(wVar.j);
            }
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void b(az azVar, w wVar) throws ag {
            bf bfVar = (bf) azVar;
            wVar.a = bfVar.z();
            wVar.a(true);
            wVar.b = bfVar.z();
            wVar.b(true);
            wVar.c = bfVar.z();
            wVar.c(true);
            wVar.d = bfVar.w();
            wVar.d(true);
            wVar.e = bfVar.w();
            wVar.e(true);
            wVar.f = bfVar.w();
            wVar.f(true);
            wVar.g = bfVar.A();
            wVar.g(true);
            wVar.h = bfVar.z();
            wVar.h(true);
            wVar.i = bfVar.z();
            wVar.i(true);
            if (bfVar.b(1).get(0)) {
                wVar.j = bfVar.w();
                wVar.j(true);
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
        map.put(bj.class, new b());
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
        am.a(w.class, mapUnmodifiableMap);
    }

    public w() {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
    }

    public w(w wVar) {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
        this.C = wVar.C;
        if (wVar.d()) {
            this.a = wVar.a;
        }
        if (wVar.g()) {
            this.b = wVar.b;
        }
        if (wVar.j()) {
            this.c = wVar.c;
        }
        this.d = wVar.d;
        this.e = wVar.e;
        this.f = wVar.f;
        if (wVar.w()) {
            this.g = ab.d(wVar.g);
        }
        if (wVar.z()) {
            this.h = wVar.h;
        }
        if (wVar.C()) {
            this.i = wVar.i;
        }
        this.j = wVar.j;
    }

    public w(String str, String str2, String str3, int i, int i2, int i3, ByteBuffer byteBuffer, String str4, String str5) {
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
    public w deepCopy() {
        return new w(this);
    }

    public w a(int i) {
        this.d = i;
        d(true);
        return this;
    }

    public w a(String str) {
        this.a = str;
        return this;
    }

    public w a(ByteBuffer byteBuffer) {
        this.g = byteBuffer;
        return this;
    }

    public w a(byte[] bArr) {
        a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    public void a(boolean z3) {
        if (z3) {
            return;
        }
        this.a = null;
    }

    public w b(int i) {
        this.e = i;
        e(true);
        return this;
    }

    public w b(String str) {
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

    public w c(int i) {
        this.f = i;
        f(true);
        return this;
    }

    public w c(String str) {
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

    public w d(int i) {
        this.j = i;
        j(true);
        return this;
    }

    public w d(String str) {
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

    public w e(String str) {
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
        StringBuilder sb = new StringBuilder("UMEnvelope(");
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

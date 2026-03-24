package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.ah;
import com.umeng.commonsdk.proguard.ak;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ak<T extends ak<?, ?>, F extends ah> implements aa<T, F> {
    private static final Map<Class<? extends bh>, bi> c;
    public Object a;
    public F b;

    public static class a extends bj<ak> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(az azVar, ak akVar) throws ag {
            akVar.b = null;
            akVar.a = null;
            azVar.j();
            au auVarL = azVar.l();
            Object objA = akVar.a(azVar, auVarL);
            akVar.a = objA;
            if (objA != null) {
                akVar.b = (F) akVar.a(auVarL.c);
            }
            azVar.m();
            azVar.l();
            azVar.k();
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(az azVar, ak akVar) throws ag {
            if (akVar.a() == null || akVar.b() == null) {
                throw new ba("Cannot write a TUnion with no set value!");
            }
            azVar.a(akVar.d());
            azVar.a(akVar.c(akVar.b));
            akVar.a(azVar);
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
        public a b() {
            return new a();
        }
    }

    public static class c extends bk<ak> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(az azVar, ak akVar) throws ag {
            akVar.b = null;
            akVar.a = null;
            short sV = azVar.v();
            Object objA = akVar.a(azVar, sV);
            akVar.a = objA;
            if (objA != null) {
                akVar.b = (F) akVar.a(sV);
            }
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(az azVar, ak akVar) throws ag {
            if (akVar.a() == null || akVar.b() == null) {
                throw new ba("Cannot write a TUnion with no set value!");
            }
            azVar.a(akVar.b.a());
            akVar.b(azVar);
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

    static {
        HashMap map = new HashMap();
        c = map;
        map.put(bj.class, new b());
        map.put(bk.class, new d());
    }

    public ak() {
        this.b = null;
        this.a = null;
    }

    public ak(F f, Object obj) {
        a(f, obj);
    }

    public ak(ak<T, F> akVar) {
        if (!akVar.getClass().equals(getClass())) {
            throw new ClassCastException();
        }
        this.b = akVar.b;
        this.a = a(akVar.a);
    }

    private static Object a(Object obj) {
        return obj instanceof aa ? ((aa) obj).deepCopy() : obj instanceof ByteBuffer ? ab.d((ByteBuffer) obj) : obj instanceof List ? a((List) obj) : obj instanceof Set ? a((Set) obj) : obj instanceof Map ? a((Map<Object, Object>) obj) : obj;
    }

    private static List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a(it.next()));
        }
        return arrayList;
    }

    private static Map a(Map<Object, Object> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            map2.put(a(entry.getKey()), a(entry.getValue()));
        }
        return map2;
    }

    private static Set a(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(a(it.next()));
        }
        return hashSet;
    }

    public F a() {
        return this.b;
    }

    public abstract F a(short s);

    public Object a(int i) {
        return a(a((short) i));
    }

    public Object a(F f) {
        if (f == this.b) {
            return b();
        }
        throw new IllegalArgumentException("Cannot get the value of field " + f + " because union's set field is " + this.b);
    }

    public abstract Object a(az azVar, au auVar) throws ag;

    public abstract Object a(az azVar, short s) throws ag;

    public void a(int i, Object obj) {
        a(a((short) i), obj);
    }

    public void a(F f, Object obj) {
        b(f, obj);
        this.b = f;
        this.a = obj;
    }

    public abstract void a(az azVar) throws ag;

    public Object b() {
        return this.a;
    }

    public abstract void b(F f, Object obj) throws ClassCastException;

    public abstract void b(az azVar) throws ag;

    public boolean b(int i) {
        return b(a((short) i));
    }

    public boolean b(F f) {
        return this.b == f;
    }

    public abstract au c(F f);

    public boolean c() {
        return this.b != null;
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public final void clear() {
        this.b = null;
        this.a = null;
    }

    public abstract be d();

    @Override // com.umeng.commonsdk.proguard.aa
    public void read(az azVar) throws ag {
        c.get(azVar.D()).b().b(azVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(getClass().getSimpleName());
        sb.append(o4.OooO00o.OooO0Oo);
        if (a() != null) {
            Object objB = b();
            sb.append(c(a()).a);
            sb.append(":");
            if (objB instanceof ByteBuffer) {
                ab.a((ByteBuffer) objB, sb);
            } else {
                sb.append(objB.toString());
            }
        }
        sb.append(">");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void write(az azVar) throws ag {
        c.get(azVar.D()).b().a(azVar, this);
    }
}

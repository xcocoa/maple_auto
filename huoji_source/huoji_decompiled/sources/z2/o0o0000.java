package z2;

import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.engine.DecodeJob;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public final class o0o0000<Transcode> {
    private o0O0OOO0 OooO;
    private final List<oO0o0000.OooO00o<?>> OooO00o = new ArrayList();
    private final List<o0O0O0Oo> OooO0O0 = new ArrayList();
    private o0O00o0 OooO0OO;
    private Object OooO0Oo;
    private int OooO0o;
    private int OooO0o0;
    private Class<?> OooO0oO;
    private DecodeJob.OooO OooO0oo;
    private Map<Class<?>, o0O0o000<?>> OooOO0;
    private Class<Transcode> OooOO0O;
    private boolean OooOO0o;
    private o0O0O0Oo OooOOO;
    private boolean OooOOO0;
    private Priority OooOOOO;
    private o0oo0000 OooOOOo;
    private boolean OooOOo;
    private boolean OooOOo0;

    public Class<?> OooO() {
        return this.OooO0Oo.getClass();
    }

    public void OooO00o() {
        this.OooO0OO = null;
        this.OooO0Oo = null;
        this.OooOOO = null;
        this.OooO0oO = null;
        this.OooOO0O = null;
        this.OooO = null;
        this.OooOOOO = null;
        this.OooOO0 = null;
        this.OooOOOo = null;
        this.OooO00o.clear();
        this.OooOO0o = false;
        this.OooO0O0.clear();
        this.OooOOO0 = false;
    }

    public oO0OOo0o OooO0O0() {
        return this.OooO0OO.OooO0O0();
    }

    public List<o0O0O0Oo> OooO0OO() {
        if (!this.OooOOO0) {
            this.OooOOO0 = true;
            this.OooO0O0.clear();
            List<oO0o0000.OooO00o<?>> listOooO0oO = OooO0oO();
            int size = listOooO0oO.size();
            for (int i = 0; i < size; i++) {
                oO0o0000.OooO00o<?> oooO00o = listOooO0oO.get(i);
                if (!this.OooO0O0.contains(oooO00o.OooO00o)) {
                    this.OooO0O0.add(oooO00o.OooO00o);
                }
                for (int i2 = 0; i2 < oooO00o.OooO0O0.size(); i2++) {
                    if (!this.OooO0O0.contains(oooO00o.OooO0O0.get(i2))) {
                        this.OooO0O0.add(oooO00o.OooO0O0.get(i2));
                    }
                }
            }
        }
        return this.OooO0O0;
    }

    public oO00Oo0 OooO0Oo() {
        return this.OooO0oo.OooO00o();
    }

    public int OooO0o() {
        return this.OooO0o;
    }

    public o0oo0000 OooO0o0() {
        return this.OooOOOo;
    }

    public List<oO0o0000.OooO00o<?>> OooO0oO() {
        if (!this.OooOO0o) {
            this.OooOO0o = true;
            this.OooO00o.clear();
            List listOooO = this.OooO0OO.OooO0oo().OooO(this.OooO0Oo);
            int size = listOooO.size();
            for (int i = 0; i < size; i++) {
                oO0o0000.OooO00o<?> oooO00oOooO0O0 = ((oO0o0000) listOooO.get(i)).OooO0O0(this.OooO0Oo, this.OooO0o0, this.OooO0o, this.OooO);
                if (oooO00oOooO0O0 != null) {
                    this.OooO00o.add(oooO00oOooO0O0);
                }
            }
        }
        return this.OooO00o;
    }

    public <Data> oO000O0<Data, ?, Transcode> OooO0oo(Class<Data> cls) {
        return this.OooO0OO.OooO0oo().OooO0oo(cls, this.OooO0oO, this.OooOO0O);
    }

    public List<oO0o0000<File, ?>> OooOO0(File file) throws Registry.NoModelLoaderAvailableException {
        return this.OooO0OO.OooO0oo().OooO(file);
    }

    public o0O0OOO0 OooOO0O() {
        return this.OooO;
    }

    public Priority OooOO0o() {
        return this.OooOOOO;
    }

    public <Z> oo0OOoo<Z> OooOOO(oO0Ooooo<Z> oo0ooooo) {
        return this.OooO0OO.OooO0oo().OooOO0O(oo0ooooo);
    }

    public List<Class<?>> OooOOO0() {
        return this.OooO0OO.OooO0oo().OooOO0(this.OooO0Oo.getClass(), this.OooO0oO, this.OooOO0O);
    }

    public o0O0O0Oo OooOOOO() {
        return this.OooOOO;
    }

    public <X> o0oO0O0o<X> OooOOOo(X x) throws Registry.NoSourceEncoderAvailableException {
        return this.OooO0OO.OooO0oo().OooOOO0(x);
    }

    public <Z> o0O0o000<Z> OooOOo(Class<Z> cls) {
        o0O0o000<Z> o0o0o000 = (o0O0o000) this.OooOO0.get(cls);
        if (o0o0o000 == null) {
            Iterator<Map.Entry<Class<?>, o0O0o000<?>>> it = this.OooOO0.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, o0O0o000<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    o0o0o000 = (o0O0o000) next.getValue();
                    break;
                }
            }
        }
        if (o0o0o000 != null) {
            return o0o0o000;
        }
        if (!this.OooOO0.isEmpty() || !this.OooOOo0) {
            return oOO0OO0O.OooO0OO();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    public Class<?> OooOOo0() {
        return this.OooOO0O;
    }

    public int OooOOoo() {
        return this.OooO0o0;
    }

    public boolean OooOo(o0O0O0Oo o0o0o0oo) {
        List<oO0o0000.OooO00o<?>> listOooO0oO = OooO0oO();
        int size = listOooO0oO.size();
        for (int i = 0; i < size; i++) {
            if (listOooO0oO.get(i).OooO00o.equals(o0o0o0oo)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <R> void OooOo0(o0O00o0 o0o00o0, Object obj, o0O0O0Oo o0o0o0oo, int i, int i2, o0oo0000 o0oo0000Var, Class<?> cls, Class<R> cls2, Priority priority, o0O0OOO0 o0o0ooo0, Map<Class<?>, o0O0o000<?>> map, boolean z, boolean z3, DecodeJob.OooO oooO) {
        this.OooO0OO = o0o00o0;
        this.OooO0Oo = obj;
        this.OooOOO = o0o0o0oo;
        this.OooO0o0 = i;
        this.OooO0o = i2;
        this.OooOOOo = o0oo0000Var;
        this.OooO0oO = cls;
        this.OooO0oo = oooO;
        this.OooOO0O = cls2;
        this.OooOOOO = priority;
        this.OooO = o0o0ooo0;
        this.OooOO0 = map;
        this.OooOOo0 = z;
        this.OooOOo = z3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean OooOo00(Class<?> cls) {
        return OooO0oo(cls) != null;
    }

    public boolean OooOo0O(oO0Ooooo<?> oo0ooooo) {
        return this.OooO0OO.OooO0oo().OooOOO(oo0ooooo);
    }

    public boolean OooOo0o() {
        return this.OooOOo;
    }
}

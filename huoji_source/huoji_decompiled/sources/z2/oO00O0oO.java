package z2;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class oO00O0oO implements oO0OOo0o {

    @VisibleForTesting
    public static final int OooO = 8;
    private static final int OooO0oo = 4194304;
    private static final int OooOO0 = 2;
    private final oO00O0o<OooO00o, Object> OooO0O0;
    private final OooO0O0 OooO0OO;
    private final Map<Class<?>, NavigableMap<Integer, Integer>> OooO0Oo;
    private final int OooO0o;
    private final Map<Class<?>, ooOOOOoo<?>> OooO0o0;
    private int OooO0oO;

    public static final class OooO00o implements oO00OOOo {
        private final OooO0O0 OooO00o;
        public int OooO0O0;
        private Class<?> OooO0OO;

        public OooO00o(OooO0O0 oooO0O0) {
            this.OooO00o = oooO0O0;
        }

        @Override // z2.oO00OOOo
        public void OooO00o() {
            this.OooO00o.OooO0OO(this);
        }

        public void OooO0O0(int i, Class<?> cls) {
            this.OooO0O0 = i;
            this.OooO0OO = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof OooO00o)) {
                return false;
            }
            OooO00o oooO00o = (OooO00o) obj;
            return this.OooO0O0 == oooO00o.OooO0O0 && this.OooO0OO == oooO00o.OooO0OO;
        }

        public int hashCode() {
            int i = this.OooO0O0 * 31;
            Class<?> cls = this.OooO0OO;
            return i + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.OooO0O0 + "array=" + this.OooO0OO + MessageFormatter.DELIM_STOP;
        }
    }

    public static final class OooO0O0 extends oO000Oo<OooO00o> {
        @Override // z2.oO000Oo
        /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
        public OooO00o OooO00o() {
            return new OooO00o(this);
        }

        public OooO00o OooO0o0(int i, Class<?> cls) {
            OooO00o oooO00oOooO0O0 = OooO0O0();
            oooO00oOooO0O0.OooO0O0(i, cls);
            return oooO00oOooO0O0;
        }
    }

    @VisibleForTesting
    public oO00O0oO() {
        this.OooO0O0 = new oO00O0o<>();
        this.OooO0OO = new OooO0O0();
        this.OooO0Oo = new HashMap();
        this.OooO0o0 = new HashMap();
        this.OooO0o = 4194304;
    }

    public oO00O0oO(int i) {
        this.OooO0O0 = new oO00O0o<>();
        this.OooO0OO = new OooO0O0();
        this.OooO0Oo = new HashMap();
        this.OooO0o0 = new HashMap();
        this.OooO0o = i;
    }

    private <T> ooOOOOoo<T> OooO(T t) {
        return OooOO0(t.getClass());
    }

    private void OooO0o(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMapOooOOO = OooOOO(cls);
        Integer num = (Integer) navigableMapOooOOO.get(Integer.valueOf(i));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
        }
        int iIntValue = num.intValue();
        Integer numValueOf = Integer.valueOf(i);
        if (iIntValue == 1) {
            navigableMapOooOOO.remove(numValueOf);
        } else {
            navigableMapOooOOO.put(numValueOf, Integer.valueOf(num.intValue() - 1));
        }
    }

    private void OooO0oO() {
        OooO0oo(this.OooO0o);
    }

    private void OooO0oo(int i) {
        while (this.OooO0oO > i) {
            Object objOooO0o = this.OooO0O0.OooO0o();
            r2.OooO0Oo(objOooO0o);
            ooOOOOoo ooooooooOooO = OooO(objOooO0o);
            this.OooO0oO -= ooooooooOooO.OooO0O0(objOooO0o) * ooooooooOooO.OooO00o();
            OooO0o(ooooooooOooO.OooO0O0(objOooO0o), objOooO0o.getClass());
            if (Log.isLoggable(ooooooooOooO.getTag(), 2)) {
                Log.v(ooooooooOooO.getTag(), "evicted: " + ooooooooOooO.OooO0O0(objOooO0o));
            }
        }
    }

    private <T> ooOOOOoo<T> OooOO0(Class<T> cls) {
        ooOOOOoo<T> oo00o0o0 = (ooOOOOoo) this.OooO0o0.get(cls);
        if (oo00o0o0 == null) {
            if (cls.equals(int[].class)) {
                oo00o0o0 = new oOo00OO0();
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
                }
                oo00o0o0 = new oO00O0o0();
            }
            this.OooO0o0.put(cls, oo00o0o0);
        }
        return oo00o0o0;
    }

    @Nullable
    private <T> T OooOO0O(OooO00o oooO00o) {
        return (T) this.OooO0O0.OooO00o(oooO00o);
    }

    private NavigableMap<Integer, Integer> OooOOO(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.OooO0Oo.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.OooO0Oo.put(cls, treeMap);
        return treeMap;
    }

    private <T> T OooOOO0(OooO00o oooO00o, Class<T> cls) {
        ooOOOOoo<T> ooooooooOooOO0 = OooOO0(cls);
        T t = (T) OooOO0O(oooO00o);
        if (t != null) {
            this.OooO0oO -= ooooooooOooOO0.OooO0O0(t) * ooooooooOooOO0.OooO00o();
            OooO0o(ooooooooOooOO0.OooO0O0(t), cls);
        }
        if (t != null) {
            return t;
        }
        if (Log.isLoggable(ooooooooOooOO0.getTag(), 2)) {
            Log.v(ooooooooOooOO0.getTag(), "Allocated " + oooO00o.OooO0O0 + " bytes");
        }
        return ooooooooOooOO0.newArray(oooO00o.OooO0O0);
    }

    private boolean OooOOOO() {
        int i = this.OooO0oO;
        return i == 0 || this.OooO0o / i >= 2;
    }

    private boolean OooOOOo(int i) {
        return i <= this.OooO0o / 2;
    }

    private boolean OooOOo0(int i, Integer num) {
        return num != null && (OooOOOO() || num.intValue() <= i * 8);
    }

    @Override // z2.oO0OOo0o
    public synchronized void OooO00o(int i) {
        try {
            if (i >= 40) {
                OooO0O0();
            } else if (i >= 20 || i == 15) {
                OooO0oo(this.OooO0o / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // z2.oO0OOo0o
    public synchronized void OooO0O0() {
        OooO0oo(0);
    }

    @Override // z2.oO0OOo0o
    public synchronized <T> T OooO0OO(int i, Class<T> cls) {
        return (T) OooOOO0(this.OooO0OO.OooO0o0(i, cls), cls);
    }

    @Override // z2.oO0OOo0o
    @Deprecated
    public <T> void OooO0Oo(T t, Class<T> cls) {
        put(t);
    }

    @Override // z2.oO0OOo0o
    public synchronized <T> T OooO0o0(int i, Class<T> cls) {
        Integer numCeilingKey;
        numCeilingKey = OooOOO(cls).ceilingKey(Integer.valueOf(i));
        return (T) OooOOO0(OooOOo0(i, numCeilingKey) ? this.OooO0OO.OooO0o0(numCeilingKey.intValue(), cls) : this.OooO0OO.OooO0o0(i, cls), cls);
    }

    public int OooOO0o() {
        int iIntValue = 0;
        for (Class<?> cls : this.OooO0Oo.keySet()) {
            for (Integer num : this.OooO0Oo.get(cls).keySet()) {
                iIntValue += num.intValue() * ((Integer) this.OooO0Oo.get(cls).get(num)).intValue() * OooOO0(cls).OooO00o();
            }
        }
        return iIntValue;
    }

    @Override // z2.oO0OOo0o
    public synchronized <T> void put(T t) {
        Class<?> cls = t.getClass();
        ooOOOOoo<T> ooooooooOooOO0 = OooOO0(cls);
        int iOooO0O0 = ooooooooOooOO0.OooO0O0(t);
        int iOooO00o = ooooooooOooOO0.OooO00o() * iOooO0O0;
        if (OooOOOo(iOooO00o)) {
            OooO00o oooO00oOooO0o0 = this.OooO0OO.OooO0o0(iOooO0O0, cls);
            this.OooO0O0.OooO0Oo(oooO00oOooO0o0, t);
            NavigableMap<Integer, Integer> navigableMapOooOOO = OooOOO(cls);
            Integer num = (Integer) navigableMapOooOOO.get(Integer.valueOf(oooO00oOooO0o0.OooO0O0));
            Integer numValueOf = Integer.valueOf(oooO00oOooO0o0.OooO0O0);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapOooOOO.put(numValueOf, Integer.valueOf(iIntValue));
            this.OooO0oO += iOooO00o;
            OooO0oO();
        }
    }
}

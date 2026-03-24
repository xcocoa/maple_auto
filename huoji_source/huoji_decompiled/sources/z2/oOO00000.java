package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oOO00000 {
    private final List<OooO0O0<?, ?>> OooO00o;
    private final OooO0OO OooO0O0;
    private final Set<OooO0O0<?, ?>> OooO0OO;
    private final Pools.Pool<List<Throwable>> OooO0Oo;
    private static final OooO0OO OooO0o0 = new OooO0OO();
    private static final oO0o0000<Object, Object> OooO0o = new OooO00o();

    public static class OooO00o implements oO0o0000<Object, Object> {
        @Override // z2.oO0o0000
        public boolean OooO00o(@NonNull Object obj) {
            return false;
        }

        @Override // z2.oO0o0000
        @Nullable
        public oO0o0000.OooO00o<Object> OooO0O0(@NonNull Object obj, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
            return null;
        }
    }

    public static class OooO0O0<Model, Data> {
        private final Class<Model> OooO00o;
        public final Class<Data> OooO0O0;
        public final oO0oO000<? extends Model, ? extends Data> OooO0OO;

        public OooO0O0(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<? extends Model, ? extends Data> oo0oo000) {
            this.OooO00o = cls;
            this.OooO0O0 = cls2;
            this.OooO0OO = oo0oo000;
        }

        public boolean OooO00o(@NonNull Class<?> cls) {
            return this.OooO00o.isAssignableFrom(cls);
        }

        public boolean OooO0O0(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return OooO00o(cls) && this.OooO0O0.isAssignableFrom(cls2);
        }
    }

    public static class OooO0OO {
        @NonNull
        public <Model, Data> oO<Model, Data> OooO00o(@NonNull List<oO0o0000<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            return new oO<>(list, pool);
        }
    }

    public oOO00000(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(pool, OooO0o0);
    }

    @VisibleForTesting
    public oOO00000(@NonNull Pools.Pool<List<Throwable>> pool, @NonNull OooO0OO oooO0OO) {
        this.OooO00o = new ArrayList();
        this.OooO0OO = new HashSet();
        this.OooO0Oo = pool;
        this.OooO0O0 = oooO0OO;
    }

    private <Model, Data> void OooO00o(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<? extends Model, ? extends Data> oo0oo000, boolean z) {
        OooO0O0<?, ?> oooO0O0 = new OooO0O0<>(cls, cls2, oo0oo000);
        List<OooO0O0<?, ?>> list = this.OooO00o;
        list.add(z ? list.size() : 0, oooO0O0);
    }

    @NonNull
    private <Model, Data> oO0o0000<Model, Data> OooO0OO(@NonNull OooO0O0<?, ?> oooO0O0) {
        return (oO0o0000) r2.OooO0Oo(oooO0O0.OooO0OO.OooO0OO(this));
    }

    @NonNull
    private static <Model, Data> oO0o0000<Model, Data> OooO0o() {
        return (oO0o0000<Model, Data>) OooO0o;
    }

    @NonNull
    private <Model, Data> oO0oO000<Model, Data> OooO0oo(@NonNull OooO0O0<?, ?> oooO0O0) {
        return (oO0oO000<Model, Data>) oooO0O0.OooO0OO;
    }

    public synchronized <Model, Data> void OooO(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<? extends Model, ? extends Data> oo0oo000) {
        OooO00o(cls, cls2, oo0oo000, false);
    }

    public synchronized <Model, Data> void OooO0O0(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<? extends Model, ? extends Data> oo0oo000) {
        OooO00o(cls, cls2, oo0oo000, true);
    }

    @NonNull
    public synchronized <Model, Data> oO0o0000<Model, Data> OooO0Oo(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (OooO0O0<?, ?> oooO0O0 : this.OooO00o) {
                if (this.OooO0OO.contains(oooO0O0)) {
                    z = true;
                } else if (oooO0O0.OooO0O0(cls, cls2)) {
                    this.OooO0OO.add(oooO0O0);
                    arrayList.add(OooO0OO(oooO0O0));
                    this.OooO0OO.remove(oooO0O0);
                }
            }
            if (arrayList.size() > 1) {
                return this.OooO0O0.OooO00o(arrayList, this.OooO0Oo);
            }
            if (arrayList.size() == 1) {
                return (oO0o0000) arrayList.get(0);
            }
            if (!z) {
                throw new Registry.NoModelLoaderAvailableException(cls, cls2);
            }
            return OooO0o();
        } catch (Throwable th) {
            this.OooO0OO.clear();
            throw th;
        }
    }

    @NonNull
    public synchronized <Model> List<oO0o0000<Model, ?>> OooO0o0(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (OooO0O0<?, ?> oooO0O0 : this.OooO00o) {
                if (!this.OooO0OO.contains(oooO0O0) && oooO0O0.OooO00o(cls)) {
                    this.OooO0OO.add(oooO0O0);
                    arrayList.add(OooO0OO(oooO0O0));
                    this.OooO0OO.remove(oooO0O0);
                }
            }
        } catch (Throwable th) {
            this.OooO0OO.clear();
            throw th;
        }
        return arrayList;
    }

    @NonNull
    public synchronized List<Class<?>> OooO0oO(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (OooO0O0<?, ?> oooO0O0 : this.OooO00o) {
            if (!arrayList.contains(oooO0O0.OooO0O0) && oooO0O0.OooO00o(cls)) {
                arrayList.add(oooO0O0.OooO0O0);
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <Model, Data> List<oO0oO000<? extends Model, ? extends Data>> OooOO0(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<OooO0O0<?, ?>> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            OooO0O0<?, ?> next = it.next();
            if (next.OooO0O0(cls, cls2)) {
                it.remove();
                arrayList.add(OooO0oo(next));
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <Model, Data> List<oO0oO000<? extends Model, ? extends Data>> OooOO0O(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<? extends Model, ? extends Data> oo0oo000) {
        List<oO0oO000<? extends Model, ? extends Data>> listOooOO0;
        listOooOO0 = OooOO0(cls, cls2);
        OooO0O0(cls, cls2, oo0oo000);
        return listOooOO0;
    }
}

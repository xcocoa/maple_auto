package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class oOo00o00 {
    private final oOO00000 OooO00o;
    private final OooO00o OooO0O0;

    public static class OooO00o {
        private final Map<Class<?>, C0258OooO00o<?>> OooO00o = new HashMap();

        /* JADX INFO: renamed from: z2.oOo00o00$OooO00o$OooO00o, reason: collision with other inner class name */
        public static class C0258OooO00o<Model> {
            public final List<oO0o0000<Model, ?>> OooO00o;

            public C0258OooO00o(List<oO0o0000<Model, ?>> list) {
                this.OooO00o = list;
            }
        }

        public void OooO00o() {
            this.OooO00o.clear();
        }

        @Nullable
        public <Model> List<oO0o0000<Model, ?>> OooO0O0(Class<Model> cls) {
            C0258OooO00o<?> c0258OooO00o = this.OooO00o.get(cls);
            if (c0258OooO00o == null) {
                return null;
            }
            return (List<oO0o0000<Model, ?>>) c0258OooO00o.OooO00o;
        }

        public <Model> void OooO0OO(Class<Model> cls, List<oO0o0000<Model, ?>> list) {
            if (this.OooO00o.put(cls, new C0258OooO00o<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }
    }

    public oOo00o00(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new oOO00000(pool));
    }

    private oOo00o00(@NonNull oOO00000 ooo00000) {
        this.OooO0O0 = new OooO00o();
        this.OooO00o = ooo00000;
    }

    @NonNull
    private static <A> Class<A> OooO0OO(@NonNull A a) {
        return (Class<A>) a.getClass();
    }

    @NonNull
    private synchronized <A> List<oO0o0000<A, ?>> OooO0o(@NonNull Class<A> cls) {
        List<oO0o0000<A, ?>> listOooO0O0;
        listOooO0O0 = this.OooO0O0.OooO0O0(cls);
        if (listOooO0O0 == null) {
            listOooO0O0 = Collections.unmodifiableList(this.OooO00o.OooO0o0(cls));
            this.OooO0O0.OooO0OO(cls, listOooO0O0);
        }
        return listOooO0O0;
    }

    private <Model, Data> void OooOO0(@NonNull List<oO0oO000<? extends Model, ? extends Data>> list) {
        Iterator<oO0oO000<? extends Model, ? extends Data>> it = list.iterator();
        while (it.hasNext()) {
            it.next().OooO00o();
        }
    }

    public synchronized <Model, Data> void OooO(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<? extends Model, ? extends Data> oo0oo000) {
        OooOO0(this.OooO00o.OooOO0O(cls, cls2, oo0oo000));
        this.OooO0O0.OooO00o();
    }

    public synchronized <Model, Data> void OooO00o(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<? extends Model, ? extends Data> oo0oo000) {
        this.OooO00o.OooO0O0(cls, cls2, oo0oo000);
        this.OooO0O0.OooO00o();
    }

    public synchronized <Model, Data> oO0o0000<Model, Data> OooO0O0(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        return this.OooO00o.OooO0Oo(cls, cls2);
    }

    @NonNull
    public synchronized List<Class<?>> OooO0Oo(@NonNull Class<?> cls) {
        return this.OooO00o.OooO0oO(cls);
    }

    @NonNull
    public <A> List<oO0o0000<A, ?>> OooO0o0(@NonNull A a) {
        List<oO0o0000<A, ?>> listOooO0o = OooO0o(OooO0OO(a));
        int size = listOooO0o.size();
        List<oO0o0000<A, ?>> listEmptyList = Collections.emptyList();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            oO0o0000<A, ?> oo0o0000 = listOooO0o.get(i);
            if (oo0o0000.OooO00o(a)) {
                if (z) {
                    listEmptyList = new ArrayList<>(size - i);
                    z = false;
                }
                listEmptyList.add(oo0o0000);
            }
        }
        return listEmptyList;
    }

    public synchronized <Model, Data> void OooO0oO(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<? extends Model, ? extends Data> oo0oo000) {
        this.OooO00o.OooO(cls, cls2, oo0oo000);
        this.OooO0O0.OooO00o();
    }

    public synchronized <Model, Data> void OooO0oo(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        OooOO0(this.OooO00o.OooOO0(cls, cls2));
        this.OooO0O0.OooO00o();
    }
}

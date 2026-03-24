package z2;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class e1 {
    private static final oO000O0<?, ?, ?> OooO0OO = new oO000O0<>(Object.class, Object.class, Object.class, Collections.singletonList(new oO0Oo(Object.class, Object.class, Object.class, Collections.emptyList(), new f0(), null)), null);
    private final ArrayMap<q2, oO000O0<?, ?, ?>> OooO00o = new ArrayMap<>();
    private final AtomicReference<q2> OooO0O0 = new AtomicReference<>();

    private q2 OooO0O0(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        q2 andSet = this.OooO0O0.getAndSet(null);
        if (andSet == null) {
            andSet = new q2();
        }
        andSet.OooO0O0(cls, cls2, cls3);
        return andSet;
    }

    @Nullable
    public <Data, TResource, Transcode> oO000O0<Data, TResource, Transcode> OooO00o(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        oO000O0<Data, TResource, Transcode> oo000o0;
        q2 q2VarOooO0O0 = OooO0O0(cls, cls2, cls3);
        synchronized (this.OooO00o) {
            oo000o0 = (oO000O0) this.OooO00o.get(q2VarOooO0O0);
        }
        this.OooO0O0.set(q2VarOooO0O0);
        return oo000o0;
    }

    public boolean OooO0OO(@Nullable oO000O0<?, ?, ?> oo000o0) {
        return OooO0OO.equals(oo000o0);
    }

    public void OooO0Oo(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable oO000O0<?, ?, ?> oo000o0) {
        synchronized (this.OooO00o) {
            ArrayMap<q2, oO000O0<?, ?, ?>> arrayMap = this.OooO00o;
            q2 q2Var = new q2(cls, cls2, cls3);
            if (oo000o0 == null) {
                oo000o0 = OooO0OO;
            }
            arrayMap.put(q2Var, oo000o0);
        }
    }
}

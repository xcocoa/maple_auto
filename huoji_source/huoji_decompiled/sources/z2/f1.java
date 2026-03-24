package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class f1 {
    private final AtomicReference<q2> OooO00o = new AtomicReference<>();
    private final ArrayMap<q2, List<Class<?>>> OooO0O0 = new ArrayMap<>();

    public void OooO00o() {
        synchronized (this.OooO0O0) {
            this.OooO0O0.clear();
        }
    }

    @Nullable
    public List<Class<?>> OooO0O0(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3) {
        List<Class<?>> list;
        q2 andSet = this.OooO00o.getAndSet(null);
        if (andSet == null) {
            andSet = new q2(cls, cls2, cls3);
        } else {
            andSet.OooO0O0(cls, cls2, cls3);
        }
        synchronized (this.OooO0O0) {
            list = this.OooO0O0.get(andSet);
        }
        this.OooO00o.set(andSet);
        return list;
    }

    public void OooO0OO(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3, @NonNull List<Class<?>> list) {
        synchronized (this.OooO0O0) {
            this.OooO0O0.put(new q2(cls, cls2, cls3), list);
        }
    }
}

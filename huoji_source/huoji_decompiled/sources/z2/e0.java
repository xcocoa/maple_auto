package z2;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e0 {
    private final List<OooO00o<?, ?>> OooO00o = new ArrayList();

    public static final class OooO00o<Z, R> {
        private final Class<Z> OooO00o;
        private final Class<R> OooO0O0;
        public final d0<Z, R> OooO0OO;

        public OooO00o(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull d0<Z, R> d0Var) {
            this.OooO00o = cls;
            this.OooO0O0 = cls2;
            this.OooO0OO = d0Var;
        }

        public boolean OooO00o(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.OooO00o.isAssignableFrom(cls) && cls2.isAssignableFrom(this.OooO0O0);
        }
    }

    @NonNull
    public synchronized <Z, R> d0<Z, R> OooO00o(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return f0.OooO0O0();
        }
        for (OooO00o<?, ?> oooO00o : this.OooO00o) {
            if (oooO00o.OooO00o(cls, cls2)) {
                return (d0<Z, R>) oooO00o.OooO0OO;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    @NonNull
    public synchronized <Z, R> List<Class<R>> OooO0O0(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator<OooO00o<?, ?>> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            if (it.next().OooO00o(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> void OooO0OO(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull d0<Z, R> d0Var) {
        this.OooO00o.add(new OooO00o<>(cls, cls2, d0Var));
    }
}

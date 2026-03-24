package z2;

import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import z2.o0O;

/* JADX INFO: loaded from: classes.dex */
public class o0OO000 {
    private static final o0O.OooO00o<?> OooO0O0 = new OooO00o();
    private final Map<Class<?>, o0O.OooO00o<?>> OooO00o = new HashMap();

    public class OooO00o implements o0O.OooO00o<Object> {
        @Override // z2.o0O.OooO00o
        @NonNull
        public Class<Object> OooO00o() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // z2.o0O.OooO00o
        @NonNull
        public o0O<Object> OooO0O0(@NonNull Object obj) {
            return new OooO0O0(obj);
        }
    }

    public static final class OooO0O0 implements o0O<Object> {
        private final Object OooO00o;

        public OooO0O0(@NonNull Object obj) {
            this.OooO00o = obj;
        }

        @Override // z2.o0O
        @NonNull
        public Object OooO00o() {
            return this.OooO00o;
        }

        @Override // z2.o0O
        public void OooO0O0() {
        }
    }

    @NonNull
    public synchronized <T> o0O<T> OooO00o(@NonNull T t) {
        o0O.OooO00o<?> oooO00o;
        r2.OooO0Oo(t);
        oooO00o = this.OooO00o.get(t.getClass());
        if (oooO00o == null) {
            Iterator<o0O.OooO00o<?>> it = this.OooO00o.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                o0O.OooO00o<?> next = it.next();
                if (next.OooO00o().isAssignableFrom(t.getClass())) {
                    oooO00o = next;
                    break;
                }
            }
        }
        if (oooO00o == null) {
            oooO00o = OooO0O0;
        }
        return (o0O<T>) oooO00o.OooO0O0(t);
    }

    public synchronized void OooO0O0(@NonNull o0O.OooO00o<?> oooO00o) {
        this.OooO00o.put(oooO00o.OooO00o(), oooO00o);
    }
}

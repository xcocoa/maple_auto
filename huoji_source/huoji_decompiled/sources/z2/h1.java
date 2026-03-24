package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h1 {
    private final List<OooO00o<?>> OooO00o = new ArrayList();

    public static final class OooO00o<T> {
        private final Class<T> OooO00o;
        public final oo0OOoo<T> OooO0O0;

        public OooO00o(@NonNull Class<T> cls, @NonNull oo0OOoo<T> oo0oooo) {
            this.OooO00o = cls;
            this.OooO0O0 = oo0oooo;
        }

        public boolean OooO00o(@NonNull Class<?> cls) {
            return this.OooO00o.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> void OooO00o(@NonNull Class<Z> cls, @NonNull oo0OOoo<Z> oo0oooo) {
        this.OooO00o.add(new OooO00o<>(cls, oo0oooo));
    }

    @Nullable
    public synchronized <Z> oo0OOoo<Z> OooO0O0(@NonNull Class<Z> cls) {
        int size = this.OooO00o.size();
        for (int i = 0; i < size; i++) {
            OooO00o<?> oooO00o = this.OooO00o.get(i);
            if (oooO00o.OooO00o(cls)) {
                return (oo0OOoo<Z>) oooO00o.OooO0O0;
            }
        }
        return null;
    }

    public synchronized <Z> void OooO0OO(@NonNull Class<Z> cls, @NonNull oo0OOoo<Z> oo0oooo) {
        this.OooO00o.add(0, new OooO00o<>(cls, oo0oooo));
    }
}

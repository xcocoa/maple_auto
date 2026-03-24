package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c1 {
    private final List<OooO00o<?>> OooO00o = new ArrayList();

    public static final class OooO00o<T> {
        private final Class<T> OooO00o;
        public final o0oO0O0o<T> OooO0O0;

        public OooO00o(@NonNull Class<T> cls, @NonNull o0oO0O0o<T> o0oo0o0o) {
            this.OooO00o = cls;
            this.OooO0O0 = o0oo0o0o;
        }

        public boolean OooO00o(@NonNull Class<?> cls) {
            return this.OooO00o.isAssignableFrom(cls);
        }
    }

    public synchronized <T> void OooO00o(@NonNull Class<T> cls, @NonNull o0oO0O0o<T> o0oo0o0o) {
        this.OooO00o.add(new OooO00o<>(cls, o0oo0o0o));
    }

    @Nullable
    public synchronized <T> o0oO0O0o<T> OooO0O0(@NonNull Class<T> cls) {
        for (OooO00o<?> oooO00o : this.OooO00o) {
            if (oooO00o.OooO00o(cls)) {
                return (o0oO0O0o<T>) oooO00o.OooO0O0;
            }
        }
        return null;
    }

    public synchronized <T> void OooO0OO(@NonNull Class<T> cls, @NonNull o0oO0O0o<T> o0oo0o0o) {
        this.OooO00o.add(0, new OooO00o<>(cls, o0oo0o0o));
    }
}

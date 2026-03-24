package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class v2 {
    private static final String OooO00o = "FactoryPools";
    private static final int OooO0O0 = 20;
    private static final OooOO0O<Object> OooO0OO = new OooO00o();

    public static final class OooO<T> implements Pools.Pool<T> {
        private final OooO0o<T> OooO00o;
        private final OooOO0O<T> OooO0O0;
        private final Pools.Pool<T> OooO0OO;

        public OooO(@NonNull Pools.Pool<T> pool, @NonNull OooO0o<T> oooO0o, @NonNull OooOO0O<T> oooOO0O) {
            this.OooO0OO = pool;
            this.OooO00o = oooO0o;
            this.OooO0O0 = oooOO0O;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            T tAcquire = this.OooO0OO.acquire();
            if (tAcquire == null) {
                tAcquire = this.OooO00o.OooO00o();
                if (Log.isLoggable(v2.OooO00o, 2)) {
                    Log.v(v2.OooO00o, "Created new " + tAcquire.getClass());
                }
            }
            if (tAcquire instanceof OooOO0) {
                ((OooOO0) tAcquire).OooO0oO().OooO0O0(false);
            }
            return tAcquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t) {
            if (t instanceof OooOO0) {
                ((OooOO0) t).OooO0oO().OooO0O0(true);
            }
            this.OooO0O0.OooO00o(t);
            return this.OooO0OO.release(t);
        }
    }

    public class OooO00o implements OooOO0O<Object> {
        @Override // z2.v2.OooOO0O
        public void OooO00o(@NonNull Object obj) {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class OooO0O0<T> implements OooO0o<List<T>> {
        @Override // z2.v2.OooO0o
        @NonNull
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public List<T> OooO00o() {
            return new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class OooO0OO<T> implements OooOO0O<List<T>> {
        @Override // z2.v2.OooOO0O
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void OooO00o(@NonNull List<T> list) {
            list.clear();
        }
    }

    public interface OooO0o<T> {
        T OooO00o();
    }

    public interface OooOO0 {
        @NonNull
        x2 OooO0oO();
    }

    public interface OooOO0O<T> {
        void OooO00o(@NonNull T t);
    }

    private v2() {
    }

    @NonNull
    private static <T extends OooOO0> Pools.Pool<T> OooO00o(@NonNull Pools.Pool<T> pool, @NonNull OooO0o<T> oooO0o) {
        return OooO0O0(pool, oooO0o, OooO0OO());
    }

    @NonNull
    private static <T> Pools.Pool<T> OooO0O0(@NonNull Pools.Pool<T> pool, @NonNull OooO0o<T> oooO0o, @NonNull OooOO0O<T> oooOO0O) {
        return new OooO(pool, oooO0o, oooOO0O);
    }

    @NonNull
    private static <T> OooOO0O<T> OooO0OO() {
        return (OooOO0O<T>) OooO0OO;
    }

    @NonNull
    public static <T extends OooOO0> Pools.Pool<T> OooO0Oo(int i, @NonNull OooO0o<T> oooO0o) {
        return OooO00o(new Pools.SimplePool(i), oooO0o);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> OooO0o() {
        return OooO0oO(20);
    }

    @NonNull
    public static <T extends OooOO0> Pools.Pool<T> OooO0o0(int i, @NonNull OooO0o<T> oooO0o) {
        return OooO00o(new Pools.SynchronizedPool(i), oooO0o);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> OooO0oO(int i) {
        return OooO0O0(new Pools.SynchronizedPool(i), new OooO0O0(), new OooO0OO());
    }
}

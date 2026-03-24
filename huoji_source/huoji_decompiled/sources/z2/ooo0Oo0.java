package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DecodeJob;
import java.util.Map;
import java.util.concurrent.Executor;
import z2.oO0000Oo;
import z2.oO00Oo0;
import z2.oO0OO00o;
import z2.v2;

/* JADX INFO: loaded from: classes.dex */
public class ooo0Oo0 implements oO00000, oO0OO00o.OooO00o, oO0000Oo.OooO00o {
    private static final int OooOO0 = 150;
    private final oO000 OooO00o;
    private final oO0000O OooO0O0;
    private final oO0OO00o OooO0OO;
    private final OooO0O0 OooO0Oo;
    private final OooO0OO OooO0o;
    private final oO0Oo0oo OooO0o0;
    private final OooO00o OooO0oO;
    private final o0OOO0 OooO0oo;
    private static final String OooO = "Engine";
    private static final boolean OooOO0O = Log.isLoggable(OooO, 2);

    @VisibleForTesting
    public static class OooO00o {
        public final DecodeJob.OooO OooO00o;
        public final Pools.Pool<DecodeJob<?>> OooO0O0 = v2.OooO0o0(ooo0Oo0.OooOO0, new C0259OooO00o());
        private int OooO0OO;

        /* JADX INFO: renamed from: z2.ooo0Oo0$OooO00o$OooO00o, reason: collision with other inner class name */
        public class C0259OooO00o implements v2.OooO0o<DecodeJob<?>> {
            public C0259OooO00o() {
            }

            @Override // z2.v2.OooO0o
            /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
            public DecodeJob<?> OooO00o() {
                OooO00o oooO00o = OooO00o.this;
                return new DecodeJob<>(oooO00o.OooO00o, oooO00o.OooO0O0);
            }
        }

        public OooO00o(DecodeJob.OooO oooO) {
            this.OooO00o = oooO;
        }

        public <R> DecodeJob<R> OooO00o(o0O00o0 o0o00o0, Object obj, oO00000o oo00000o, o0O0O0Oo o0o0o0oo, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, o0oo0000 o0oo0000Var, Map<Class<?>, o0O0o000<?>> map, boolean z, boolean z3, boolean z4, o0O0OOO0 o0o0ooo0, DecodeJob.OooO0O0<R> oooO0O0) {
            DecodeJob decodeJob = (DecodeJob) r2.OooO0Oo(this.OooO0O0.acquire());
            int i3 = this.OooO0OO;
            this.OooO0OO = i3 + 1;
            return decodeJob.OooOOO(o0o00o0, obj, oo00000o, o0o0o0oo, i, i2, cls, cls2, priority, o0oo0000Var, map, z, z3, z4, o0o0ooo0, oooO0O0, i3);
        }
    }

    @VisibleForTesting
    public static class OooO0O0 {
        public final oO0 OooO00o;
        public final oO0 OooO0O0;
        public final oO0 OooO0OO;
        public final oO0 OooO0Oo;
        public final Pools.Pool<o<?>> OooO0o = v2.OooO0o0(ooo0Oo0.OooOO0, new OooO00o());
        public final oO00000 OooO0o0;

        public class OooO00o implements v2.OooO0o<o<?>> {
            public OooO00o() {
            }

            @Override // z2.v2.OooO0o
            /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
            public o<?> OooO00o() {
                OooO0O0 oooO0O0 = OooO0O0.this;
                return new o<>(oooO0O0.OooO00o, oooO0O0.OooO0O0, oooO0O0.OooO0OO, oooO0O0.OooO0Oo, oooO0O0.OooO0o0, oooO0O0.OooO0o);
            }
        }

        public OooO0O0(oO0 oo0, oO0 oo02, oO0 oo03, oO0 oo04, oO00000 oo00000) {
            this.OooO00o = oo0;
            this.OooO0O0 = oo02;
            this.OooO0OO = oo03;
            this.OooO0Oo = oo04;
            this.OooO0o0 = oo00000;
        }

        public <R> o<R> OooO00o(o0O0O0Oo o0o0o0oo, boolean z, boolean z3, boolean z4, boolean z5) {
            return ((o) r2.OooO0Oo(this.OooO0o.acquire())).OooOO0o(o0o0o0oo, z, z3, z4, z5);
        }

        @VisibleForTesting
        public void OooO0O0() {
            l2.OooO0OO(this.OooO00o);
            l2.OooO0OO(this.OooO0O0);
            l2.OooO0OO(this.OooO0OO);
            l2.OooO0OO(this.OooO0Oo);
        }
    }

    public static class OooO0OO implements DecodeJob.OooO {
        private final oO00Oo0.OooO00o OooO00o;
        private volatile oO00Oo0 OooO0O0;

        public OooO0OO(oO00Oo0.OooO00o oooO00o) {
            this.OooO00o = oooO00o;
        }

        @Override // com.bumptech.glide.load.engine.DecodeJob.OooO
        public oO00Oo0 OooO00o() {
            if (this.OooO0O0 == null) {
                synchronized (this) {
                    if (this.OooO0O0 == null) {
                        this.OooO0O0 = this.OooO00o.build();
                    }
                    if (this.OooO0O0 == null) {
                        this.OooO0O0 = new oOOoOOO0();
                    }
                }
            }
            return this.OooO0O0;
        }

        @VisibleForTesting
        public synchronized void OooO0O0() {
            if (this.OooO0O0 == null) {
                return;
            }
            this.OooO0O0.clear();
        }
    }

    public class OooO0o {
        private final o<?> OooO00o;
        private final q1 OooO0O0;

        public OooO0o(q1 q1Var, o<?> oVar) {
            this.OooO0O0 = q1Var;
            this.OooO00o = oVar;
        }

        public void OooO00o() {
            synchronized (ooo0Oo0.this) {
                this.OooO00o.OooOOoo(this.OooO0O0);
            }
        }
    }

    @VisibleForTesting
    public ooo0Oo0(oO0OO00o oo0oo00o, oO00Oo0.OooO00o oooO00o, oO0 oo0, oO0 oo02, oO0 oo03, oO0 oo04, oO000 oo000, oO0000O oo0000o, o0OOO0 o0ooo0, OooO0O0 oooO0O0, OooO00o oooO00o2, oO0Oo0oo oo0oo0oo, boolean z) {
        this.OooO0OO = oo0oo00o;
        OooO0OO oooO0OO = new OooO0OO(oooO00o);
        this.OooO0o = oooO0OO;
        o0OOO0 o0ooo02 = o0ooo0 == null ? new o0OOO0(z) : o0ooo0;
        this.OooO0oo = o0ooo02;
        o0ooo02.OooO0oO(this);
        this.OooO0O0 = oo0000o == null ? new oO0000O() : oo0000o;
        this.OooO00o = oo000 == null ? new oO000() : oo000;
        this.OooO0Oo = oooO0O0 == null ? new OooO0O0(oo0, oo02, oo03, oo04, this) : oooO0O0;
        this.OooO0oO = oooO00o2 == null ? new OooO00o(oooO0OO) : oooO00o2;
        this.OooO0o0 = oo0oo0oo == null ? new oO0Oo0oo() : oo0oo0oo;
        oo0oo00o.OooO0oo(this);
    }

    public ooo0Oo0(oO0OO00o oo0oo00o, oO00Oo0.OooO00o oooO00o, oO0 oo0, oO0 oo02, oO0 oo03, oO0 oo04, boolean z) {
        this(oo0oo00o, oooO00o, oo0, oo02, oo03, oo04, null, null, null, null, null, null, z);
    }

    private oO0000Oo<?> OooO(o0O0O0Oo o0o0o0oo, boolean z) {
        if (!z) {
            return null;
        }
        oO0000Oo<?> oo0000ooOooO0o = OooO0o(o0o0o0oo);
        if (oo0000ooOooO0o != null) {
            oo0000ooOooO0o.OooO00o();
            this.OooO0oo.OooO00o(o0o0o0oo, oo0000ooOooO0o);
        }
        return oo0000ooOooO0o;
    }

    private oO0000Oo<?> OooO0o(o0O0O0Oo o0o0o0oo) {
        oO0Ooooo<?> oo0oooooOooO0oO = this.OooO0OO.OooO0oO(o0o0o0oo);
        if (oo0oooooOooO0oO == null) {
            return null;
        }
        return oo0oooooOooO0oO instanceof oO0000Oo ? (oO0000Oo) oo0oooooOooO0oO : new oO0000Oo<>(oo0oooooOooO0oO, true, true);
    }

    @Nullable
    private oO0000Oo<?> OooO0oo(o0O0O0Oo o0o0o0oo, boolean z) {
        if (!z) {
            return null;
        }
        oO0000Oo<?> oo0000ooOooO0o0 = this.OooO0oo.OooO0o0(o0o0o0oo);
        if (oo0000ooOooO0o0 != null) {
            oo0000ooOooO0o0.OooO00o();
        }
        return oo0000ooOooO0o0;
    }

    private static void OooOO0(String str, long j, o0O0O0Oo o0o0o0oo) {
        Log.v(OooO, str + " in " + n2.OooO00o(j) + "ms, key: " + o0o0o0oo);
    }

    @Override // z2.oO0OO00o.OooO00o
    public void OooO00o(@NonNull oO0Ooooo<?> oo0ooooo) {
        this.OooO0o0.OooO00o(oo0ooooo);
    }

    @Override // z2.oO00000
    public synchronized void OooO0O0(o<?> oVar, o0O0O0Oo o0o0o0oo, oO0000Oo<?> oo0000oo) {
        if (oo0000oo != null) {
            oo0000oo.OooO0o(o0o0o0oo, this);
            if (oo0000oo.OooO0Oo()) {
                this.OooO0oo.OooO00o(o0o0o0oo, oo0000oo);
            }
            this.OooO00o.OooO0o0(o0o0o0oo, oVar);
        } else {
            this.OooO00o.OooO0o0(o0o0o0oo, oVar);
        }
    }

    @Override // z2.oO00000
    public synchronized void OooO0OO(o<?> oVar, o0O0O0Oo o0o0o0oo) {
        this.OooO00o.OooO0o0(o0o0o0oo, oVar);
    }

    @Override // z2.oO0000Oo.OooO00o
    public synchronized void OooO0Oo(o0O0O0Oo o0o0o0oo, oO0000Oo<?> oo0000oo) {
        this.OooO0oo.OooO0Oo(o0o0o0oo);
        if (oo0000oo.OooO0Oo()) {
            this.OooO0OO.OooO0o(o0o0o0oo, oo0000oo);
        } else {
            this.OooO0o0.OooO00o(oo0000oo);
        }
    }

    public void OooO0o0() {
        this.OooO0o.OooO00o().clear();
    }

    public synchronized <R> OooO0o OooO0oO(o0O00o0 o0o00o0, Object obj, o0O0O0Oo o0o0o0oo, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, o0oo0000 o0oo0000Var, Map<Class<?>, o0O0o000<?>> map, boolean z, boolean z3, o0O0OOO0 o0o0ooo0, boolean z4, boolean z5, boolean z6, boolean z7, q1 q1Var, Executor executor) {
        boolean z8 = OooOO0O;
        long jOooO0O0 = z8 ? n2.OooO0O0() : 0L;
        oO00000o oo00000oOooO00o = this.OooO0O0.OooO00o(obj, o0o0o0oo, i, i2, map, cls, cls2, o0o0ooo0);
        oO0000Oo<?> oo0000ooOooO0oo = OooO0oo(oo00000oOooO00o, z4);
        if (oo0000ooOooO0oo != null) {
            q1Var.OooO0O0(oo0000ooOooO0oo, DataSource.MEMORY_CACHE);
            if (z8) {
                OooOO0("Loaded resource from active resources", jOooO0O0, oo00000oOooO00o);
            }
            return null;
        }
        oO0000Oo<?> oo0000ooOooO = OooO(oo00000oOooO00o, z4);
        if (oo0000ooOooO != null) {
            q1Var.OooO0O0(oo0000ooOooO, DataSource.MEMORY_CACHE);
            if (z8) {
                OooOO0("Loaded resource from cache", jOooO0O0, oo00000oOooO00o);
            }
            return null;
        }
        o<?> oVarOooO00o = this.OooO00o.OooO00o(oo00000oOooO00o, z7);
        if (oVarOooO00o != null) {
            oVarOooO00o.OooO0Oo(q1Var, executor);
            if (z8) {
                OooOO0("Added to existing load", jOooO0O0, oo00000oOooO00o);
            }
            return new OooO0o(q1Var, oVarOooO00o);
        }
        o<R> oVarOooO00o2 = this.OooO0Oo.OooO00o(oo00000oOooO00o, z4, z5, z6, z7);
        DecodeJob<R> decodeJobOooO00o = this.OooO0oO.OooO00o(o0o00o0, obj, oo00000oOooO00o, o0o0o0oo, i, i2, cls, cls2, priority, o0oo0000Var, map, z, z3, z7, o0o0ooo0, oVarOooO00o2);
        this.OooO00o.OooO0Oo(oo00000oOooO00o, oVarOooO00o2);
        oVarOooO00o2.OooO0Oo(q1Var, executor);
        oVarOooO00o2.OooOo00(decodeJobOooO00o);
        if (z8) {
            OooOO0("Started new load", jOooO0O0, oo00000oOooO00o);
        }
        return new OooO0o(q1Var, oVarOooO00o2);
    }

    public void OooOO0O(oO0Ooooo<?> oo0ooooo) {
        if (!(oo0ooooo instanceof oO0000Oo)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((oO0000Oo) oo0ooooo).OooO0o0();
    }

    @VisibleForTesting
    public void OooOO0o() {
        this.OooO0Oo.OooO0O0();
        this.OooO0o.OooO0O0();
        this.OooO0oo.OooO0oo();
    }
}

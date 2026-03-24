package z2;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.CallbackException;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import z2.v2;

/* JADX INFO: loaded from: classes.dex */
public class o<R> implements DecodeJob.OooO0O0<R>, v2.OooOO0 {
    private static final OooO0OO o0ooOoO = new OooO0OO();
    public final OooO OoooOoO;
    private final x2 OoooOoo;
    private final Pools.Pool<o<?>> Ooooo00;
    private final OooO0OO Ooooo0o;
    private final oO00000 OooooO0;
    private final oO0 OooooOO;
    private final oO0 OooooOo;
    private final oO0 Oooooo;
    private final oO0 Oooooo0;
    private final AtomicInteger OoooooO;
    private o0O0O0Oo Ooooooo;
    private boolean o00O0O;
    private boolean o00Oo0;
    private oO0Ooooo<?> o00Ooo;
    public DataSource o00o0O;
    public oO0000Oo<?> o00oO0O;
    private boolean o00oO0o;
    private boolean o00ooo;
    private boolean o0OoOo0;
    private DecodeJob<R> o0ooOO0;
    private volatile boolean o0ooOOo;
    public GlideException oo000o;
    private boolean ooOO;

    public static final class OooO implements Iterable<OooO0o> {
        private final List<OooO0o> OoooOoO;

        public OooO() {
            this(new ArrayList(2));
        }

        public OooO(List<OooO0o> list) {
            this.OoooOoO = list;
        }

        private static OooO0o OooO0Oo(q1 q1Var) {
            return new OooO0o(q1Var, l2.OooO00o());
        }

        public void OooO00o(q1 q1Var, Executor executor) {
            this.OoooOoO.add(new OooO0o(q1Var, executor));
        }

        public boolean OooO0O0(q1 q1Var) {
            return this.OoooOoO.contains(OooO0Oo(q1Var));
        }

        public OooO OooO0OO() {
            return new OooO(new ArrayList(this.OoooOoO));
        }

        public void OooO0o0(q1 q1Var) {
            this.OoooOoO.remove(OooO0Oo(q1Var));
        }

        public void clear() {
            this.OoooOoO.clear();
        }

        public boolean isEmpty() {
            return this.OoooOoO.isEmpty();
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<OooO0o> iterator() {
            return this.OoooOoO.iterator();
        }

        public int size() {
            return this.OoooOoO.size();
        }
    }

    public class OooO00o implements Runnable {
        private final q1 OoooOoO;

        public OooO00o(q1 q1Var) {
            this.OoooOoO = q1Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (o.this) {
                if (o.this.OoooOoO.OooO0O0(this.OoooOoO)) {
                    o.this.OooO0o0(this.OoooOoO);
                }
                o.this.OooO();
            }
        }
    }

    public class OooO0O0 implements Runnable {
        private final q1 OoooOoO;

        public OooO0O0(q1 q1Var) {
            this.OoooOoO = q1Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (o.this) {
                if (o.this.OoooOoO.OooO0O0(this.OoooOoO)) {
                    o.this.o00oO0O.OooO00o();
                    o.this.OooO0o(this.OoooOoO);
                    o.this.OooOOoo(this.OoooOoO);
                }
                o.this.OooO();
            }
        }
    }

    @VisibleForTesting
    public static class OooO0OO {
        public <R> oO0000Oo<R> OooO00o(oO0Ooooo<R> oo0ooooo, boolean z) {
            return new oO0000Oo<>(oo0ooooo, z, true);
        }
    }

    public static final class OooO0o {
        public final q1 OooO00o;
        public final Executor OooO0O0;

        public OooO0o(q1 q1Var, Executor executor) {
            this.OooO00o = q1Var;
            this.OooO0O0 = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof OooO0o) {
                return this.OooO00o.equals(((OooO0o) obj).OooO00o);
            }
            return false;
        }

        public int hashCode() {
            return this.OooO00o.hashCode();
        }
    }

    public o(oO0 oo0, oO0 oo02, oO0 oo03, oO0 oo04, oO00000 oo00000, Pools.Pool<o<?>> pool) {
        this(oo0, oo02, oo03, oo04, oo00000, pool, o0ooOoO);
    }

    @VisibleForTesting
    public o(oO0 oo0, oO0 oo02, oO0 oo03, oO0 oo04, oO00000 oo00000, Pools.Pool<o<?>> pool, OooO0OO oooO0OO) {
        this.OoooOoO = new OooO();
        this.OoooOoo = x2.OooO00o();
        this.OoooooO = new AtomicInteger();
        this.OooooOO = oo0;
        this.OooooOo = oo02;
        this.Oooooo0 = oo03;
        this.Oooooo = oo04;
        this.OooooO0 = oo00000;
        this.Ooooo00 = pool;
        this.Ooooo0o = oooO0OO;
    }

    private oO0 OooOO0() {
        return this.ooOO ? this.Oooooo0 : this.o00O0O ? this.Oooooo : this.OooooOo;
    }

    private boolean OooOOO() {
        return this.o00oO0o || this.o00ooo || this.o0ooOOo;
    }

    private synchronized void OooOOo() {
        if (this.Ooooooo == null) {
            throw new IllegalArgumentException();
        }
        this.OoooOoO.clear();
        this.Ooooooo = null;
        this.o00oO0O = null;
        this.o00Ooo = null;
        this.o00oO0o = false;
        this.o0ooOOo = false;
        this.o00ooo = false;
        this.o0ooOO0.OooOo0o(false);
        this.o0ooOO0 = null;
        this.oo000o = null;
        this.o00o0O = null;
        this.Ooooo00.release(this);
    }

    public synchronized void OooO() {
        this.OoooOoo.OooO0OO();
        r2.OooO00o(OooOOO(), "Not yet complete!");
        int iDecrementAndGet = this.OoooooO.decrementAndGet();
        r2.OooO00o(iDecrementAndGet >= 0, "Can't decrement below 0");
        if (iDecrementAndGet == 0) {
            oO0000Oo<?> oo0000oo = this.o00oO0O;
            if (oo0000oo != null) {
                oo0000oo.OooO0o0();
            }
            OooOOo();
        }
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.OooO0O0
    public void OooO00o(GlideException glideException) {
        synchronized (this) {
            this.oo000o = glideException;
        }
        OooOOOO();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.DecodeJob.OooO0O0
    public void OooO0O0(oO0Ooooo<R> oo0ooooo, DataSource dataSource) {
        synchronized (this) {
            this.o00Ooo = oo0ooooo;
            this.o00o0O = dataSource;
        }
        OooOOOo();
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.OooO0O0
    public void OooO0OO(DecodeJob<?> decodeJob) {
        OooOO0().execute(decodeJob);
    }

    public synchronized void OooO0Oo(q1 q1Var, Executor executor) {
        Runnable oooO00o;
        this.OoooOoo.OooO0OO();
        this.OoooOoO.OooO00o(q1Var, executor);
        boolean z = true;
        if (this.o00ooo) {
            OooOO0O(1);
            oooO00o = new OooO0O0(q1Var);
        } else if (this.o00oO0o) {
            OooOO0O(1);
            oooO00o = new OooO00o(q1Var);
        } else {
            if (this.o0ooOOo) {
                z = false;
            }
            r2.OooO00o(z, "Cannot add callbacks to a cancelled EngineJob");
        }
        executor.execute(oooO00o);
    }

    public synchronized void OooO0o(q1 q1Var) {
        try {
            q1Var.OooO0O0(this.o00oO0O, this.o00o0O);
        } catch (Throwable th) {
            throw new CallbackException(th);
        }
    }

    public synchronized void OooO0o0(q1 q1Var) {
        try {
            q1Var.OooO00o(this.oo000o);
        } catch (Throwable th) {
            throw new CallbackException(th);
        }
    }

    @Override // z2.v2.OooOO0
    @NonNull
    public x2 OooO0oO() {
        return this.OoooOoo;
    }

    public void OooO0oo() {
        if (OooOOO()) {
            return;
        }
        this.o0ooOOo = true;
        this.o0ooOO0.OooO0O0();
        this.OooooO0.OooO0OO(this, this.Ooooooo);
    }

    public synchronized void OooOO0O(int i) {
        oO0000Oo<?> oo0000oo;
        r2.OooO00o(OooOOO(), "Not yet complete!");
        if (this.OoooooO.getAndAdd(i) == 0 && (oo0000oo = this.o00oO0O) != null) {
            oo0000oo.OooO00o();
        }
    }

    @VisibleForTesting
    public synchronized o<R> OooOO0o(o0O0O0Oo o0o0o0oo, boolean z, boolean z3, boolean z4, boolean z5) {
        this.Ooooooo = o0o0o0oo;
        this.o0OoOo0 = z;
        this.ooOO = z3;
        this.o00O0O = z4;
        this.o00Oo0 = z5;
        return this;
    }

    public synchronized boolean OooOOO0() {
        return this.o0ooOOo;
    }

    public void OooOOOO() {
        synchronized (this) {
            this.OoooOoo.OooO0OO();
            if (this.o0ooOOo) {
                OooOOo();
                return;
            }
            if (this.OoooOoO.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
            if (this.o00oO0o) {
                throw new IllegalStateException("Already failed once");
            }
            this.o00oO0o = true;
            o0O0O0Oo o0o0o0oo = this.Ooooooo;
            OooO oooOOooO0OO = this.OoooOoO.OooO0OO();
            OooOO0O(oooOOooO0OO.size() + 1);
            this.OooooO0.OooO0O0(this, o0o0o0oo, null);
            for (OooO0o oooO0o : oooOOooO0OO) {
                oooO0o.OooO0O0.execute(new OooO00o(oooO0o.OooO00o));
            }
            OooO();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void OooOOOo() {
        synchronized (this) {
            this.OoooOoo.OooO0OO();
            if (this.o0ooOOo) {
                this.o00Ooo.recycle();
                OooOOo();
                return;
            }
            if (this.OoooOoO.isEmpty()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            }
            if (this.o00ooo) {
                throw new IllegalStateException("Already have resource");
            }
            this.o00oO0O = this.Ooooo0o.OooO00o(this.o00Ooo, this.o0OoOo0);
            this.o00ooo = true;
            OooO oooOOooO0OO = this.OoooOoO.OooO0OO();
            OooOO0O(oooOOooO0OO.size() + 1);
            this.OooooO0.OooO0O0(this, this.Ooooooo, this.o00oO0O);
            for (OooO0o oooO0o : oooOOooO0OO) {
                oooO0o.OooO0O0.execute(new OooO0O0(oooO0o.OooO00o));
            }
            OooO();
        }
    }

    public boolean OooOOo0() {
        return this.o00Oo0;
    }

    public synchronized void OooOOoo(q1 q1Var) {
        this.OoooOoo.OooO0OO();
        this.OoooOoO.OooO0o0(q1Var);
        if (this.OoooOoO.isEmpty()) {
            OooO0oo();
            if ((this.o00ooo || this.o00oO0o) && this.OoooooO.get() == 0) {
                OooOOo();
            }
        }
    }

    public synchronized void OooOo00(DecodeJob<R> decodeJob) {
        this.o0ooOO0 = decodeJob;
        (decodeJob.OooOoo() ? this.OooooOO : OooOO0()).execute(decodeJob);
    }
}

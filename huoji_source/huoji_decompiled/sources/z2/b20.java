package z2;

import android.app.Activity;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class b20 {
    private final Executor OooO00o;
    private final Constructor<?> OooO0O0;
    private final l10 OooO0OO;
    private final Object OooO0Oo;

    public class OooO00o implements Runnable {
        public final /* synthetic */ OooO0OO OoooOoO;

        public OooO00o(OooO0OO oooO0OO) {
            this.OoooOoO = oooO0OO;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.OoooOoO.run();
            } catch (Exception e) {
                try {
                    Object objNewInstance = b20.this.OooO0O0.newInstance(e);
                    if (objNewInstance instanceof f20) {
                        ((f20) objNewInstance).OooO0O0(b20.this.OooO0Oo);
                    }
                    b20.this.OooO0OO.OooOOOO(objNewInstance);
                } catch (Exception e2) {
                    Log.e(l10.OooOOo0, "Original exception:", e);
                    throw new RuntimeException("Could not create failure event", e2);
                }
            }
        }
    }

    public static class OooO0O0 {
        private Executor OooO00o;
        private Class<?> OooO0O0;
        private l10 OooO0OO;

        private OooO0O0() {
        }

        public /* synthetic */ OooO0O0(OooO00o oooO00o) {
            this();
        }

        public b20 OooO00o() {
            return OooO0OO(null);
        }

        public b20 OooO0O0(Activity activity) {
            return OooO0OO(activity.getClass());
        }

        public b20 OooO0OO(Object obj) {
            if (this.OooO0OO == null) {
                this.OooO0OO = l10.OooO0o();
            }
            if (this.OooO00o == null) {
                this.OooO00o = Executors.newCachedThreadPool();
            }
            if (this.OooO0O0 == null) {
                this.OooO0O0 = g20.class;
            }
            return new b20(this.OooO00o, this.OooO0OO, this.OooO0O0, obj, null);
        }

        public OooO0O0 OooO0Oo(l10 l10Var) {
            this.OooO0OO = l10Var;
            return this;
        }

        public OooO0O0 OooO0o(Executor executor) {
            this.OooO00o = executor;
            return this;
        }

        public OooO0O0 OooO0o0(Class<?> cls) {
            this.OooO0O0 = cls;
            return this;
        }
    }

    public interface OooO0OO {
        void run() throws Exception;
    }

    private b20(Executor executor, l10 l10Var, Class<?> cls, Object obj) {
        this.OooO00o = executor;
        this.OooO0OO = l10Var;
        this.OooO0Oo = obj;
        try {
            this.OooO0O0 = cls.getConstructor(Throwable.class);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Failure event class must have a constructor with one parameter of type Throwable", e);
        }
    }

    public /* synthetic */ b20(Executor executor, l10 l10Var, Class cls, Object obj, OooO00o oooO00o) {
        this(executor, l10Var, cls, obj);
    }

    public static OooO0O0 OooO0Oo() {
        return new OooO0O0(null);
    }

    public static b20 OooO0o0() {
        return new OooO0O0(null).OooO00o();
    }

    public void OooO0o(OooO0OO oooO0OO) {
        this.OooO00o.execute(new OooO00o(oooO0OO));
    }
}

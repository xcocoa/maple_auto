package z2;

import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public class v80 {

    public class OooO00o extends u90 {
        public final /* synthetic */ u90 OooO0O0;

        public OooO00o(u90 u90Var) throws Throwable {
            this.OooO0O0 = u90Var;
        }

        @Override // z2.u90
        public b90 OooO0OO(Class<?> cls) throws Throwable {
            return v80.this.OooO00o(this.OooO0O0, cls);
        }
    }

    public static v80 OooO0OO() {
        return new v80();
    }

    public b90 OooO00o(u90 u90Var, Class<?> cls) throws Throwable {
        return u90Var.OooO0OO(cls);
    }

    public b90 OooO0O0(u90 u90Var, Class<?>[] clsArr) throws InitializationError {
        return new o90(new OooO00o(u90Var), clsArr);
    }
}

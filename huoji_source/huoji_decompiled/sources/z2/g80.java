package z2;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.junit.runners.model.MultipleFailureException;

/* JADX INFO: loaded from: classes2.dex */
public class g80 extends u80 {
    private List<Throwable> OooO00o = new ArrayList();

    public class OooO00o implements Callable<Object> {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ Object OoooOoo;
        public final /* synthetic */ r20 Ooooo00;

        public OooO00o(String str, Object obj, r20 r20Var) {
            this.OoooOoO = str;
            this.OoooOoo = obj;
            this.Ooooo00 = r20Var;
        }

        @Override // java.util.concurrent.Callable
        public Object call() throws Exception {
            f50.OoooOOo(this.OoooOoO, this.OoooOoo, this.Ooooo00);
            return this.OoooOoo;
        }
    }

    @Override // z2.u80
    public void OooO0O0() throws Exception {
        MultipleFailureException.assertEmpty(this.OooO00o);
    }

    public void OooO0OO(Throwable th) {
        this.OooO00o.add(th);
    }

    public <T> T OooO0Oo(Callable<T> callable) {
        try {
            return callable.call();
        } catch (Throwable th) {
            OooO0OO(th);
            return null;
        }
    }

    public <T> void OooO0o(String str, T t, r20<T> r20Var) {
        OooO0Oo(new OooO00o(str, t, r20Var));
    }

    public <T> void OooO0o0(T t, r20<T> r20Var) {
        OooO0o("", t, r20Var);
    }
}

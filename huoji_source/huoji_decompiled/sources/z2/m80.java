package z2;

import java.util.Iterator;
import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public class m80 extends w90 {
    private final w90 OooO00o;

    public m80(w90 w90Var, Iterable<q80> iterable, Description description) {
        this.OooO00o = OooO0O0(w90Var, iterable, description);
    }

    private static w90 OooO0O0(w90 w90Var, Iterable<q80> iterable, Description description) {
        Iterator<q80> it = iterable.iterator();
        while (it.hasNext()) {
            w90Var = it.next().OooO00o(w90Var, description);
        }
        return w90Var;
    }

    @Override // z2.w90
    public void OooO00o() throws Throwable {
        this.OooO00o.OooO00o();
    }
}

package z2;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d80 extends w90 {
    private final w90 OooO00o;
    private final Object OooO0O0;
    private final List<s90> OooO0OO;

    public d80(w90 w90Var, List<s90> list, Object obj) {
        this.OooO00o = w90Var;
        this.OooO0OO = list;
        this.OooO0O0 = obj;
    }

    @Override // z2.w90
    public void OooO00o() throws Throwable {
        Iterator<s90> it = this.OooO0OO.iterator();
        while (it.hasNext()) {
            it.next().OooOOOO(this.OooO0O0, new Object[0]);
        }
        this.OooO00o.OooO00o();
    }
}

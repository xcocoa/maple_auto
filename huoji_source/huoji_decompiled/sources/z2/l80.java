package z2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public class l80 implements q80 {
    private static final l80 OooO0O0 = new l80(Collections.emptyList());
    private List<q80> OooO00o;

    private l80(List<q80> list) {
        this.OooO00o = list;
    }

    public static l80 OooO0OO() {
        return OooO0O0;
    }

    public static l80 OooO0Oo(q80 q80Var) {
        return OooO0OO().OooO0O0(q80Var);
    }

    @Override // z2.q80
    public w90 OooO00o(w90 w90Var, Description description) {
        Iterator<q80> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            w90Var = it.next().OooO00o(w90Var, description);
        }
        return w90Var;
    }

    public l80 OooO0O0(q80 q80Var) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(q80Var);
        arrayList.addAll(this.OooO00o);
        return new l80(arrayList);
    }
}

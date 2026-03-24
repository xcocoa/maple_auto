package z2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class p10 {
    private static final List<p10> OooO0Oo = new ArrayList();
    public Object OooO00o;
    public v10 OooO0O0;
    public p10 OooO0OO;

    private p10(Object obj, v10 v10Var) {
        this.OooO00o = obj;
        this.OooO0O0 = v10Var;
    }

    public static p10 OooO00o(v10 v10Var, Object obj) {
        List<p10> list = OooO0Oo;
        synchronized (list) {
            int size = list.size();
            if (size <= 0) {
                return new p10(obj, v10Var);
            }
            p10 p10VarRemove = list.remove(size - 1);
            p10VarRemove.OooO00o = obj;
            p10VarRemove.OooO0O0 = v10Var;
            p10VarRemove.OooO0OO = null;
            return p10VarRemove;
        }
    }

    public static void OooO0O0(p10 p10Var) {
        p10Var.OooO00o = null;
        p10Var.OooO0O0 = null;
        p10Var.OooO0OO = null;
        List<p10> list = OooO0Oo;
        synchronized (list) {
            if (list.size() < 10000) {
                list.add(p10Var);
            }
        }
    }
}

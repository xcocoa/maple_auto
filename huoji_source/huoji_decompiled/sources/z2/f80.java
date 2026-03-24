package z2;

import java.lang.management.ManagementFactory;
import java.util.List;
import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public class f80 implements q80 {
    private final q80 OooO00o;
    private final boolean OooO0O0;

    public f80(q80 q80Var) {
        this(q80Var, ManagementFactory.getRuntimeMXBean().getInputArguments());
    }

    public f80(q80 q80Var, List<String> list) {
        this.OooO00o = q80Var;
        this.OooO0O0 = OooO0OO(list);
    }

    private static boolean OooO0OO(List<String> list) {
        for (String str : list) {
            if ("-Xdebug".equals(str) || str.startsWith("-agentlib:jdwp")) {
                return true;
            }
        }
        return false;
    }

    @Override // z2.q80
    public w90 OooO00o(w90 w90Var, Description description) {
        return this.OooO0O0 ? w90Var : this.OooO00o.OooO00o(w90Var, description);
    }

    public boolean OooO0O0() {
        return this.OooO0O0;
    }
}

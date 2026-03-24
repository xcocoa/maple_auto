package z2;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class fa0 implements ga0 {
    private static final List<Exception> OooO00o = Collections.emptyList();

    @Override // z2.ga0
    public List<Exception> OooO00o(x90 x90Var) {
        if (x90Var.OooOOo()) {
            return OooO00o;
        }
        return Collections.singletonList(new Exception("The class " + x90Var.OooOOO0() + " is not public."));
    }
}

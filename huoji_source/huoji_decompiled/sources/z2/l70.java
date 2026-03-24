package z2;

import java.util.Comparator;
import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public class l70 extends z80 {
    private final z80 OooO00o;
    private final Comparator<Description> OooO0O0;

    public l70(z80 z80Var, Comparator<Description> comparator) {
        this.OooO00o = z80Var;
        this.OooO0O0 = comparator;
    }

    @Override // z2.z80
    public b90 OooO0oo() {
        b90 b90VarOooO0oo = this.OooO00o.OooO0oo();
        new f90(this.OooO0O0).OooO00o(b90VarOooO0oo);
        return b90VarOooO0oo;
    }
}

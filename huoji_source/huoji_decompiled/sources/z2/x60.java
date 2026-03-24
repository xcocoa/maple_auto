package z2;

import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class x60 extends u90 {
    private final boolean OooO0O0;

    public x60(boolean z) {
        this.OooO0O0 = z;
    }

    public z60 OooO() {
        return new z60();
    }

    @Override // z2.u90
    public b90 OooO0OO(Class<?> cls) throws Throwable {
        Iterator it = Arrays.asList(OooO(), OooO0oo(), OooOO0o(), OooOO0(), OooOO0O()).iterator();
        while (it.hasNext()) {
            b90 b90VarOooO0oO = ((u90) it.next()).OooO0oO(cls);
            if (b90VarOooO0oO != null) {
                return b90VarOooO0oO;
            }
        }
        return null;
    }

    public y60 OooO0oo() {
        return new y60(this);
    }

    public b70 OooOO0() {
        return new b70();
    }

    public c70 OooOO0O() {
        return new c70();
    }

    public u90 OooOO0o() {
        return this.OooO0O0 ? new e70() : new d70();
    }
}

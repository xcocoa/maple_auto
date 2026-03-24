package z2;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class g0 implements n0 {
    private final Set<p0> OooO00o = Collections.newSetFromMap(new WeakHashMap());
    private boolean OooO0O0;
    private boolean OooO0OO;

    @Override // z2.n0
    public void OooO00o(@NonNull p0 p0Var) {
        this.OooO00o.add(p0Var);
        if (this.OooO0OO) {
            p0Var.onDestroy();
        } else if (this.OooO0O0) {
            p0Var.onStart();
        } else {
            p0Var.onStop();
        }
    }

    @Override // z2.n0
    public void OooO0O0(@NonNull p0 p0Var) {
        this.OooO00o.remove(p0Var);
    }

    public void OooO0OO() {
        this.OooO0OO = true;
        Iterator it = t2.OooOO0O(this.OooO00o).iterator();
        while (it.hasNext()) {
            ((p0) it.next()).onDestroy();
        }
    }

    public void OooO0Oo() {
        this.OooO0O0 = true;
        Iterator it = t2.OooOO0O(this.OooO00o).iterator();
        while (it.hasNext()) {
            ((p0) it.next()).onStart();
        }
    }

    public void OooO0o0() {
        this.OooO0O0 = false;
        Iterator it = t2.OooOO0O(this.OooO00o).iterator();
        while (it.hasNext()) {
            ((p0) it.next()).onStop();
        }
    }
}

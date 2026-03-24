package z2;

import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class ny {
    private final Set<ux> OooO00o = new LinkedHashSet();

    public synchronized void OooO00o(ux uxVar) {
        this.OooO00o.remove(uxVar);
    }

    public synchronized void OooO0O0(ux uxVar) {
        this.OooO00o.add(uxVar);
    }

    public synchronized boolean OooO0OO(ux uxVar) {
        return this.OooO00o.contains(uxVar);
    }
}

package z2;

import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class oO000 {
    private final Map<o0O0O0Oo, o<?>> OooO00o = new HashMap();
    private final Map<o0O0O0Oo, o<?>> OooO0O0 = new HashMap();

    private Map<o0O0O0Oo, o<?>> OooO0OO(boolean z) {
        return z ? this.OooO0O0 : this.OooO00o;
    }

    public o<?> OooO00o(o0O0O0Oo o0o0o0oo, boolean z) {
        return OooO0OO(z).get(o0o0o0oo);
    }

    @VisibleForTesting
    public Map<o0O0O0Oo, o<?>> OooO0O0() {
        return Collections.unmodifiableMap(this.OooO00o);
    }

    public void OooO0Oo(o0O0O0Oo o0o0o0oo, o<?> oVar) {
        OooO0OO(oVar.OooOOo0()).put(o0o0o0oo, oVar);
    }

    public void OooO0o0(o0O0O0Oo o0o0o0oo, o<?> oVar) {
        Map<o0O0O0Oo, o<?>> mapOooO0OO = OooO0OO(oVar.OooOOo0());
        if (oVar.equals(mapOooO0OO.get(o0o0o0oo))) {
            mapOooO0OO.remove(o0o0o0oo);
        }
    }
}

package z2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class oO0O00O {
    private final Map<oO0O00o0, Integer> OooO00o;
    private final List<oO0O00o0> OooO0O0;
    private int OooO0OO;
    private int OooO0Oo;

    public oO0O00O(Map<oO0O00o0, Integer> map) {
        this.OooO00o = map;
        this.OooO0O0 = new ArrayList(map.keySet());
        Iterator<Integer> it = map.values().iterator();
        while (it.hasNext()) {
            this.OooO0OO += it.next().intValue();
        }
    }

    public int OooO00o() {
        return this.OooO0OO;
    }

    public boolean OooO0O0() {
        return this.OooO0OO == 0;
    }

    public oO0O00o0 OooO0OO() {
        oO0O00o0 oo0o00o0 = this.OooO0O0.get(this.OooO0Oo);
        Integer num = this.OooO00o.get(oo0o00o0);
        if (num.intValue() == 1) {
            this.OooO00o.remove(oo0o00o0);
            this.OooO0O0.remove(this.OooO0Oo);
        } else {
            this.OooO00o.put(oo0o00o0, Integer.valueOf(num.intValue() - 1));
        }
        this.OooO0OO--;
        this.OooO0Oo = this.OooO0O0.isEmpty() ? 0 : (this.OooO0Oo + 1) % this.OooO0O0.size();
        return oo0o00o0;
    }
}

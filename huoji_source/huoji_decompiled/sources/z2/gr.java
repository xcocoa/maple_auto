package z2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class gr {
    private final List<fr> OooO00o;
    private final int OooO0O0;
    private final boolean OooO0OO;

    public gr(List<fr> list, int i, boolean z) {
        this.OooO00o = new ArrayList(list);
        this.OooO0O0 = i;
        this.OooO0OO = z;
    }

    public final List<fr> OooO00o() {
        return this.OooO00o;
    }

    public final int OooO0O0() {
        return this.OooO0O0;
    }

    public final boolean OooO0OO(List<fr> list) {
        return this.OooO00o.equals(list);
    }

    public final boolean OooO0Oo() {
        return this.OooO0OO;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof gr)) {
            return false;
        }
        gr grVar = (gr) obj;
        return this.OooO00o.equals(grVar.OooO00o()) && this.OooO0OO == grVar.OooO0OO;
    }

    public final int hashCode() {
        return this.OooO00o.hashCode() ^ Boolean.valueOf(this.OooO0OO).hashCode();
    }

    public final String toString() {
        return "{ " + this.OooO00o + " }";
    }
}

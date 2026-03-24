package z2;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class z40 implements Iterable<c50> {
    private final List<c50> OoooOoO;

    public z40(int i) {
        this.OoooOoO = new CopyOnWriteArrayList(new c50[i]);
    }

    public c50 OooO00o(int i) {
        return this.OoooOoO.get(i);
    }

    public void OooO0O0(int i, c50 c50Var) {
        this.OoooOoO.set(i, c50Var);
    }

    @Override // java.lang.Iterable
    public Iterator<c50> iterator() {
        return this.OoooOoO.iterator();
    }

    public int size() {
        return this.OoooOoO.size();
    }

    public String toString() {
        return "MultipleResults [results=" + this.OoooOoO + "]";
    }
}

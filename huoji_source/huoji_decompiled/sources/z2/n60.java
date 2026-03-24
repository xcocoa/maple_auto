package z2;

import java.util.ArrayList;
import java.util.List;
import org.junit.experimental.theories.PotentialAssignment;

/* JADX INFO: loaded from: classes2.dex */
public class n60 extends d60 {
    @Override // z2.d60
    public List<PotentialAssignment> OooO00o(c60 c60Var) {
        ArrayList arrayList = new ArrayList();
        for (int i : ((m60) c60Var.OooO0oO(m60.class)).ints()) {
            arrayList.add(PotentialAssignment.OooO00o("ints", Integer.valueOf(i)));
        }
        return arrayList;
    }
}

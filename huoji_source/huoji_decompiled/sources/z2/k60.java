package z2;

import java.util.ArrayList;
import java.util.List;
import org.junit.experimental.theories.PotentialAssignment;

/* JADX INFO: loaded from: classes2.dex */
public class k60 extends d60 {
    private Class<?> OooO00o;

    public k60(Class<?> cls) {
        this.OooO00o = cls;
    }

    @Override // z2.d60
    public List<PotentialAssignment> OooO00o(c60 c60Var) {
        Object[] enumConstants = this.OooO00o.getEnumConstants();
        ArrayList arrayList = new ArrayList();
        for (Object obj : enumConstants) {
            arrayList.add(PotentialAssignment.OooO00o(obj.toString(), obj));
        }
        return arrayList;
    }
}

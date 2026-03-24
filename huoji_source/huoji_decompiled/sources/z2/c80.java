package z2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.runners.model.MultipleFailureException;

/* JADX INFO: loaded from: classes2.dex */
public class c80 extends w90 {
    private final w90 OooO00o;
    private final Object OooO0O0;
    private final List<s90> OooO0OO;

    public c80(w90 w90Var, List<s90> list, Object obj) {
        this.OooO00o = w90Var;
        this.OooO0OO = list;
        this.OooO0O0 = obj;
    }

    @Override // z2.w90
    public void OooO00o() throws Exception {
        ArrayList arrayList = new ArrayList();
        try {
            this.OooO00o.OooO00o();
            Iterator<s90> it = this.OooO0OO.iterator();
            while (it.hasNext()) {
                try {
                    it.next().OooOOOO(this.OooO0O0, new Object[0]);
                } catch (Throwable th) {
                    arrayList.add(th);
                }
            }
        } catch (Throwable th2) {
            try {
                arrayList.add(th2);
                Iterator<s90> it2 = this.OooO0OO.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().OooOOOO(this.OooO0O0, new Object[0]);
                    } catch (Throwable th3) {
                        arrayList.add(th3);
                    }
                }
            } catch (Throwable th4) {
                Iterator<s90> it3 = this.OooO0OO.iterator();
                while (it3.hasNext()) {
                    try {
                        it3.next().OooOOOO(this.OooO0O0, new Object[0]);
                    } catch (Throwable th5) {
                        arrayList.add(th5);
                    }
                }
                throw th4;
            }
        }
        MultipleFailureException.assertEmpty(arrayList);
    }
}

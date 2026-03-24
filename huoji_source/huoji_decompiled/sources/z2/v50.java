package z2;

import java.util.Iterator;
import java.util.List;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

/* JADX INFO: loaded from: classes2.dex */
public class v50 {
    private final List<Failure> OooO00o;

    public v50(List<Failure> list) {
        this.OooO00o = list;
    }

    public Result OooO00o() {
        Result result = new Result();
        g90 g90VarCreateListener = result.createListener();
        Iterator<Failure> it = this.OooO00o.iterator();
        while (it.hasNext()) {
            try {
                g90VarCreateListener.OooO0O0(it.next());
            } catch (Exception unused) {
                throw new RuntimeException("I can't believe this happened");
            }
        }
        return result;
    }
}

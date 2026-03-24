package z2;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public class v40<V> implements Callable<V> {
    private final Future<V> OoooOoO;

    public v40(Future<V> future) {
        this.OoooOoO = future;
    }

    @Override // java.util.concurrent.Callable
    public V call() throws Exception {
        try {
            return this.OoooOoO.get();
        } catch (InterruptedException e) {
            throw e;
        } catch (ExecutionException e2) {
            if (e2.getCause() instanceof Exception) {
                throw ((Exception) e2.getCause());
            }
            throw e2;
        }
    }
}

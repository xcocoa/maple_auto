package z2;

import android.os.AsyncTask;
import android.os.Build;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class hf0 {
    private static ExecutorService OooO00o;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        OooO00o = new ThreadPoolExecutor(iAvailableProcessors, (iAvailableProcessors * 2) + 1, 20L, TimeUnit.SECONDS, new SynchronousQueue());
    }

    public static void OooO00o(Runnable runnable) {
        try {
            OooO00o.execute(runnable);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static <Params, Progress, Result> void OooO0O0(AsyncTask<Params, Progress, Result> asyncTask, Params... paramsArr) {
        if (Build.VERSION.SDK_INT >= 11) {
            asyncTask.executeOnExecutor(OooO00o, paramsArr);
        } else {
            asyncTask.execute(paramsArr);
        }
    }
}

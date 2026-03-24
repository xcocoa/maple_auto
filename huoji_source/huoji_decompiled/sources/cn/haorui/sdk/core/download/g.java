package cn.haorui.sdk.core.download;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class g {
    public static final TimeUnit b = TimeUnit.HOURS;
    public static final BlockingQueue<Runnable> c = new LinkedBlockingQueue(8);
    public ThreadPoolExecutor a;

    public ThreadPoolExecutor a() {
        if (this.a == null) {
            synchronized (g.class) {
                if (this.a == null) {
                    this.a = new ThreadPoolExecutor(3, 5, 1L, b, c, Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
                }
            }
        }
        return this.a;
    }
}
